unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, jpeg, PicturePDF, Printers;

type
  TForm6 = class(TForm)
    ScrollBox1: TScrollBox;
    Image1: TImage;
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    RadioGroup1: TRadioGroup;
    LabeledEdit1: TLabeledEdit;
    UpDown1: TUpDown;
    SpeedButton1: TSpeedButton;
    SaveDialog1: TSaveDialog;
    SpeedButton2: TSpeedButton;
    LabeledEdit2: TLabeledEdit;
    UpDown2: TUpDown;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CreatePage;
  end;

var
  Form6: TForm6;
  BitE: TBitmap;

implementation

{$R *.dfm}

procedure TForm6.CreatePage;
var
  X, Y, N, dx, dy: integer;
begin
  form6.Image1.Canvas.Brush.Style:=bsSolid;
  form6.Image1.Canvas.FillRect(form6.Image1.ClientRect);
  case form6.RadioGroup1.ItemIndex of
    0:
      begin
        dx:=round(21.0*96/2.54)div BitE.Width;
        dx:=round(((21.0*96/2.54)-(BitE.Width*dx))/2);
        dy:=round(29.7*96/2.54)div BitE.Height;
        dy:=round(((29.7*96/2.54)-(BitE.Height*dy))/2);
        form6.Image1.Canvas.Draw(dx+1, dy+1, BitE);
        if form6.CheckBox1.Checked then
        begin
          form6.Image1.Canvas.Pen.Color:=clSilver;
          form6.Image1.Canvas.Brush.Style:=bsClear;
          form6.Image1.Canvas.Rectangle(dx+0, dy+0, dx+BitE.Width+2, dy+BitE.Height+2);
        end;
      end;
    1:
      begin
        N:=1;
        X:=0;
        Y:=0;
        dx:=round(21.0*96/2.54)div BitE.Width;
        dx:=round(((21.0*96/2.54)-(BitE.Width*dx))/2);
        dy:=round(29.7*96/2.54)div BitE.Height;
        dy:=round(((29.7*96/2.54)-(BitE.Height*dy))/2);
        while N<=form6.UpDown1.Position do
        begin
          form6.Image1.Canvas.Draw(dx+X+1, dy+Y+1, BitE);
          if form6.CheckBox1.Checked then
          begin
            form6.Image1.Canvas.Pen.Color:=clSilver;
            form6.Image1.Canvas.Brush.Style:=bsClear;
            form6.Image1.Canvas.Rectangle(dx+X, dy+Y, dx+X+BitE.Width+2, dy+Y+BitE.Height+2);
          end;
          inc(N);
          inc(X, BitE.Width+1);
          if (X+BitE.Width)>round(21.0*96/2.54) then
          begin
            inc (Y, BitE.Height+1);
            X:=0;
          end;
        end;
      end;
    2:
      begin
        X:=0;
        Y:=0;
        dx:=round(21.0*96/2.54)div BitE.Width;
        dx:=round(((21.0*96/2.54)-(BitE.Width*dx))/2);
        dy:=round(29.7*96/2.54)div BitE.Height;
        dy:=round(((29.7*96/2.54)-(BitE.Height*dy))/2);
        while (Y+BitE.Height)<round(29.7*96/2.54) do
        begin
          form6.Image1.Canvas.Draw(dx+X+1, dy+Y+1, BitE);
          if form6.CheckBox1.Checked then
          begin
            form6.Image1.Canvas.Pen.Color:=clSilver;
            form6.Image1.Canvas.Brush.Style:=bsClear;
            form6.Image1.Canvas.Rectangle(dx+X, dy+Y, dx+X+BitE.Width+2, dy+Y+BitE.Height+2);
          end;
          inc(X, BitE.Width+1);
          if (X+BitE.Width)>round(21.0*96/2.54) then
          begin
            inc (Y, BitE.Height+1);
            X:=0;
          end;
        end;
      end;
  end;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
  BitE:=TBitmap.Create;
end;

procedure TForm6.FormDestroy(Sender: TObject);
begin
  BitE.Free;
end;

procedure TForm6.CheckBox1Click(Sender: TObject);
begin
  CreatePage;
end;

procedure TForm6.RadioGroup1Click(Sender: TObject);
begin
  CreatePage;
end;

procedure TForm6.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
  CreatePage;
end;

procedure TForm6.SpeedButton1Click(Sender: TObject);
var
  jpg: TJpegImage;
  Picture: TPicture;
  i: integer;
begin
  //595.28x841.89
  Picture:=TPicture.Create;
  Picture.Bitmap.Width:=round(21.0*72/2.54);
  Picture.Bitmap.Height:=round(29.7*72/2.54);
  Picture.Bitmap.Canvas.Brush.Style:=bsSolid;
  Picture.Bitmap.Canvas.FillRect(form6.Image1.ClientRect);
  //Picture.Bitmap.Canvas.Draw(0, 0, form6.Image1.Picture.Graphic);
  Picture.Bitmap.Canvas.CopyRect(rect(0, 0, Picture.Bitmap.Width, Picture.Bitmap.Height), form6.Image1.Picture.Bitmap.Canvas, rect(0, 0, form6.Image1.Width, form6.Image1.Height));
  Picture.Bitmap.Canvas.Font.Color:=clBlue;
  Picture.Bitmap.Canvas.TextOut(round(15), Picture.Height-round(15), 'eMail: Igor23dec@yandex.ru');
  if form6.SaveDialog1.Execute then
  begin
    jpg:=TJpegImage.Create;
    jpg.Assign(Picture.Graphic);
    Picture.Assign(jpg);
    PictureToPDF(Picture, form6.SaveDialog1.FileName);
    jpg.Free;
  end;
  Picture.Free;
end;

procedure TForm6.SpeedButton2Click(Sender: TObject);
const
  LEFT_MARGIN = 2; // отступ слева 2 см
  TOP_MARGIN  = 2; // отступ сверху 2 см
var
  dpiX, dpiY: integer; // разрешение принтера по X и Y
  kx, ky: real; // коэф. пересчета координат экрана в координаты принтера по Х и Y
  px, py: integer; // указатель точки вывода
begin
  { Разрешение экрана и принтера разное,
  поэтому чтобы добиться соответствия
  размеров изображения на экране и принтере,
  координаты точек экрана надо преобразовать
  в координаты принтера, умножить на коэф.,
  значение которого зависит от разрешения принтера.
  Например, если разрешение принтера 300 dpi,
  то значение коэффициента равно 3.125, т.к.
  разрешение экрана - 96 dpi.}

  // ф-я GetDeviceCaps позволяет получить характеристики
  // устройства. LOGPIXELSX - кол-во пикселей на дюйм по X
  dpiX := GetDeviceCaps(Printer.handle, LOGPIXELSX);
  dpiY := GetDeviceCaps(Printer.handle, LOGPIXELSY);
  kx := dpiX / Screen.PixelsPerInch;
  ky := dpiY / Screen.PixelsPerInch;

  px := Round(LEFT_MARGIN / 2.54 * dpiX);
  py := Round(TOP_MARGIN  / 2.54 * dpiY);

  with Printer do
  begin
    Printer.Copies:=form6.UpDown2.Position;
    BeginDoc; // открыть печать
    Printer.Canvas.CopyRect(rect(0, 0, round(form6.Image1.Width*kx), round(form6.Image1.Height*ky)), form6.Image1.Picture.Bitmap.Canvas, rect(0, 0, form6.Image1.Width, form6.Image1.Height));
    Printer.Canvas.Font.Color:=clBlue;
    Printer.Canvas.TextOut(round(15*kx), Printer.PageHeight-round(15*ky), 'eMail: Igor23dec@yandex.ru');
    EndDoc;  // закрыть печать
  end;
end;

end.
