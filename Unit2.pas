unit Unit2;

interface

uses
  windows, graphics;

type // ��� ��� ���������� ����� �� �����
  TRGB = record
  R: byte;
  G: byte;
  B: byte;
end;

type
  ScanLine=array [0..32768] of TRGB;
  // 32768 = ������������ ���������� �������� �� ������(ScanLine)

type
  PSimbDat = record //��������� ������ �������
  Lp: tpoint; //��������� ����� ��� ���������� � ���������� ��������
  Rp: tpoint; //�������� ����� ��� ���������� � ����������� ��������
  SimbW: integer; //������ ������� (��������������)
  SimbH: integer; //������ ������� (��������������)
  Simb: tbitmap; //������� ����� ������ �������
end;

type
  TSimbDat = array [0..255] of PSimbDat; //��� ������� �� ��������� ������ �������

type
  TSimbFile = File of byte; //��� ��� ���������� ������ �������

  procedure SaveToFile(SimbDat: TSimbDat; FileName: string);
  procedure LoadFromFile(var SimbDat: TSimbDat; FileName: string);

var
  SimbFile: TSimbFile;

implementation

procedure WriteArrData(Arr: Tbitmap);
var
  i, j, W, H: byte;
  B: integer;
  Scan: ^ScanLine; // ��������� �� ������ ScanLine ���� TRGB
begin
  Arr.PixelFormat:=pf24bit;
  W:=Arr.Width;
  H:=Arr.Height;
  write(SimbFile, W);
  write(SimbFile, H);
  for j:=0 to H-1 do
  begin
    Scan:=Arr.ScanLine[j]; // ���������� ��������� �� ������ � �����
    for i:=0 to W-1 do
    begin
      B:=Scan[i].R;
      if B<>255 then
      begin
        write(SimbFile, i);
        write(SimbFile, j);
      end;
    end;
  end;
  write(SimbFile, W);
  write(SimbFile, H);
end;

procedure ReadArrData(var Str: Tbitmap);
var
  i, j, B, W, H: byte;
  Bit: Tbitmap;
  Scan: ^ScanLine; // ��������� �� ������ ScanLine ���� TRGB
begin
  Bit:=Tbitmap.Create;
  read(SimbFile, W);
  read(SimbFile, H);
  Bit.Width:=W;
  Bit.Height:=H;
  Bit.PixelFormat:=pf24bit;
  i:=0;
  j:=0;
  B:=clBlack;
  read(SimbFile, i);
  read(SimbFile, j);
  while (i<>W)and(j<>H) do
  begin
    //setpixel(Bit.Canvas.Handle, i, j, B);
    Scan:=Bit.ScanLine[j];
    Scan[i].R:=0;
    Scan[i].G:=0;
    Scan[i].B:=0;
    read(SimbFile, i);
    read(SimbFile, j);
  end;
  Str.Assign(Bit);
  Bit.Free;
end;

procedure SaveToFile(SimbDat: TSimbDat; FileName: string);
var
  i: integer;
begin
  assign(SimbFile, FileName);
  rewrite(SimbFile);
  for i:=0 to 255 do
  begin
    write(SimbFile, SimbDat[i].Lp.X);
    write(SimbFile, SimbDat[i].Lp.Y);
    write(SimbFile, SimbDat[i].Rp.X);
    write(SimbFile, SimbDat[i].Rp.Y);
    WriteArrData(SimbDat[i].Simb);
  end;
  close(SimbFile);
end;

procedure LoadFromFile(var SimbDat: TSimbDat; FileName: string);
var
  i: integer;
  d: byte;
begin
  assign(SimbFile, FileName);
  reset(SimbFile);
  if not Eof(SimbFile) then
  for i:=0 to 255 do
  begin
    read(SimbFile, d);
    SimbDat[i].Lp.X:=d;
    read(SimbFile, d);
    SimbDat[i].Lp.Y:=d;
    read(SimbFile, d);
    SimbDat[i].Rp.X:=d;
    read(SimbFile, d);
    SimbDat[i].Rp.Y:=d;
    ReadArrData(SimbDat[i].Simb);
  end;
  close(SimbFile);
end;

end.

