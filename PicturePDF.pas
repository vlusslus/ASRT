unit PicturePDF;

interface
uses
  Windows, Classes, Graphics, SysUtils;

  procedure PictureToPDF(Picture: TPicture; SaveName: String);

implementation

procedure Write_CrossReferenceTable(AStream: TStream; PosArray: array of Dword; Count: Integer);
var
   i :Integer;
begin
  with TStringStream(AStream) do
  begin
    WriteString('xref'#10);
    WriteString(Format('0 %d'#10, [Count+1]));
    WriteString('0000000000 65535 f '#10);
    for i:= 0 to Count-1 do
    begin
      WriteString(Format('%0.10d', [PosArray[i]])+' 00000 n '#10);
    end;
  end;
end;

procedure Write_ContentsObject(AStream: TStream; Index: Dword; Width, Height: Integer);
var
  MemoryStream: TMemoryStream;
begin
  MemoryStream:=TMemoryStream.Create;
  try
    // Stream
    with TStringStream(MemoryStream) do
    begin
      WriteString('q'#10);
      WriteString(Format('%d 0 0 %d 0 0 cm'#10, [Width, Height]));
      WriteString('/Im0 Do'#10);
      WriteString('Q'#10);
    end;

    MemoryStream.Position:=0;

     // Object
    with TStringStream(AStream) do
    begin
      WriteString(Format('%d 0 obj'#10,[Index]));
      WriteString(Format('<< /Length %d >>'#10, [MemoryStream.Size]));
      WriteString('stream'#10);
      AStream.CopyFrom(MemoryStream, MemoryStream.Size) ;
      WriteString('endstream'#10);
      WriteString('endobj'#10);
    end;
  finally
    MemoryStream.Free;
  end;
end;

procedure GetPictureData(AStream: TStream; Picture: TPicture);
begin
  Picture.Graphic.SaveToStream(AStream);
end;

procedure PictureToPDF(Picture: TPicture; SaveName: String);
Var
  AStream, PictureData: TStream;
  ObjectIndex: Integer;
  ObjectPosArray: array [0..10] of Dword;
begin
  if Picture=nil then
  raise  Exception.Create('Picture is nil');

  if SaveName='' then
  raise  Exception.Create('SaveName is nil');

  ObjectIndex :=0;

  AStream  :=TFileStream.Create(SaveName, fmCreate)  ;
  PictureData :=TMemorySTream.Create;
  try
    GetPictureData(PictureData, Picture);
    PictureData.Position:=0;

    // PDF version
    TStringStream(AStream).WriteString('%PDF-1.2'#10);

    // Catalog
    ObjectPosArray[ObjectIndex] :=AStream.Position;
    with TStringStream(AStream) do
    begin
      WriteString(Format('%d 0 obj'#10, [ObjectIndex+1]));
      WriteString('<<'#10);
      WriteString('/Type /Catalog'#10);
      WriteString('/Pages 2 0 R'#10);
      // View Option (100%)
      WriteString('/OpenAction [3 0 R /XYZ -32768 -32768 1 ]'#10);
      WriteString('>>'#10);
      WriteString('endobj'#10);
    end;
    Inc(ObjectIndex);

    // Parent Pages
    ObjectPosArray[ObjectIndex] :=AStream.Position;
    with TStringStream(AStream) do
    begin
      WriteString(Format('%d 0 obj'#10, [ObjectIndex+1]));
      WriteString('<<'#10);
      WriteString('/Type /Pages'#10);
      WriteString('/Kids [ 3 0 R ]'#10);
      WriteString('/Count 1'#10);
      WriteString('>>'#10);
      WriteString('endobj'#10);
    end;
    Inc(ObjectIndex);

    // Kids Page
    ObjectPosArray[ObjectIndex] :=AStream.Position;
    with TStringStream(AStream) do
    begin
      WriteString(Format('%d 0 obj'#10, [ObjectIndex+1]));
      WriteString('<<'#10);
      WriteString('/Type /Page'#10);
      WriteString('/Parent 2 0 R'#10);
      WriteString('/Resources'#10);
      WriteString('<<'#10);
      WriteString('/XObject << /Im0 4 0 R >>'#10);
      WriteString('/ProcSet [ /PDF /ImageC ]'#10);
      WriteString('>>'#10);
      WriteString(Format('/MediaBox [ 0 0 %d %d ]'#10, [Picture.Width, Picture.Height]));
      WriteString('/Contents 5 0 R'#10);
      WriteString('>>'#10);
      WriteString('endobj'#10);
    end;
    Inc(ObjectIndex);

    // XObject Resource
    ObjectPosArray[ObjectIndex] :=AStream.Position;
    with TStringStream(AStream) do
    begin
      WriteString(Format('%d 0 obj'#10, [ObjectIndex+1]));
      WriteString('<<'#10);
      WriteString('/Type /XObject'#10);
      WriteString('/Subtype /Image'#10);
      WriteString('/Name /Im0'#10);
      WriteString(Format('/Width %d'#10, [Picture.Width]));
      WriteString(Format('/Height %d'#10, [Picture.Height]));
      WriteString('/BitsPerComponent 8'#10);
      WriteString('/Filter [/DCTDecode]'#10);
      WriteString('/ColorSpace /DeviceRGB'#10);
      WriteString(Format('/Length %d >>'#10, [PictureData.Size]));
      WriteString('stream'#10);
      AStream.CopyFrom(PictureData, PictureData.Size);
      WriteString('endstream'#10);
      WriteString('endobj'#10);
    end;
    Inc(ObjectIndex);

    // Contents Stream & Object
    ObjectPosArray[ObjectIndex] :=AStream.Position;
    with TStringStream(AStream) do
    begin
      Write_ContentsObject(AStream, ObjectIndex+1, Picture.Width, Picture.Height);
    end;
    Inc(ObjectIndex);

    // CrossReferenceTable
    ObjectPosArray[ObjectIndex] :=AStream.Position;
    Write_CrossReferenceTable(AStream, ObjectPosArray, ObjectIndex);

    // trailer
    with TStringStream(AStream) do
    begin
      WriteString('trailer'#10);
      WriteString('<<'#10);
      WriteString(Format('/Size %d'#10, [ObjectIndex+1]));
      WriteString('/Root 1 0 R'#10);
      WriteString('>>'#10);
      WriteString('startxref'#10);
      WriteString(Format('%d'#10, [ObjectPosArray[ObjectIndex]]));
      WriteString('%%EOF');
    end;
  finally
    AStream.Free;
    PictureData.Free;
  end;
end;

end.
