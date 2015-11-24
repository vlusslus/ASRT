unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, unit2, Buttons, ActnList, ToolWin, ActnMan,
  ActnCtrls, ActnMenus, XPStyleActnCtrls, ExtDlgs, jpeg, unit3, unit4, unit5, PicturePDF,
  ComCtrls, unit6;

type
  TForm1 = class(TForm)
    Notebook1: TNotebook;
    Splitter1: TSplitter;
    ScrollBox1: TScrollBox;
    Image1: TImage;
    Panel1: TPanel;
    Memo1: TMemo;
    SpeedButton1: TSpeedButton;
    ActionManager1: TActionManager;
    ActionMainMenuBar1: TActionMainMenuBar;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Panel2: TPanel;
    Image2: TImage;
    Image3: TImage;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Action6: TAction;
    Action7: TAction;
    Action8: TAction;
    Action9: TAction;
    Action10: TAction;
    SavePictureDialog1: TSavePictureDialog;
    Image4: TImage;
    Action11: TAction;
    Action12: TAction;
    OpenDialog2: TOpenDialog;
    Action13: TAction;
    Action14: TAction;
    Action15: TAction;
    OpenPictureDialog1: TOpenPictureDialog;
    Action16: TAction;
    StatusBar1: TStatusBar;
    SpeedButton7: TSpeedButton;
    Action17: TAction;
    Action18: TAction;
    Action19: TAction;
    Action20: TAction;
    Action21: TAction;
    Action22: TAction;
    SpeedButton8: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Image2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
    procedure Action8Execute(Sender: TObject);
    procedure Action9Execute(Sender: TObject);
    procedure Action10Execute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Image4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Action11Execute(Sender: TObject);
    procedure Action12Execute(Sender: TObject);
    procedure Action13Execute(Sender: TObject);
    procedure Action14Execute(Sender: TObject);
    procedure Action15Execute(Sender: TObject);
    procedure Action16Execute(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Action17Execute(Sender: TObject);
    procedure Action18Execute(Sender: TObject);
    procedure Action19Execute(Sender: TObject);
    procedure Action20Execute(Sender: TObject);
    procedure Action21Execute(Sender: TObject);
    procedure Action22Execute(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure Image5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image6MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image7MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

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
  TEffect = record //��� ������ ��� �������
  eW: integer; //���������� ����� �������
  eH: integer; //������������ ������ ��� ��������� ����
  eG: integer; //������ �����������
  eSS: integer; //������ ������� � ���������
  eStrH: integer; //���������� ����� ��������
end;

type
  TPlan = record
    DX, DY: integer;
    Wp, Hp: integer;
    Bit: TBitmap;
  end;

var
  Form1: TForm1;
  np: integer; //����� ������� ���������� ��� ��������������
  SimbDat: TSimbDat; //�������� ������ ��������
  Simb: tbitmap; //������� ����������� �������, ������������ ��� ��������������
  Effect: TEffect; //�������� �������� ��������
  SimbModif: boolean; //��� �������� - ��� �� ����������� ������ ��� ���

  Fon: TPicture; //���
  Plan: array of TPlan; // ������ ������ (� �������� �������� ������ ���� ����� ��������� �� ���������)
  PMove: boolean; // ����� �� ����������� ����
  ItemIndex: integer; // ��������� ����� ����� (� ��������� ������ 0)
  DX, DY: integer; // ��������� ���������� ����� �� ���������
  DW, DH: integer; // ��������� ������ � ������ ����� �� ������ ���������

  RegionPlanBox: HRGN; // ������ �����
  RegionM1: HRGN; // ������ ������� 1, �������-�����
  RegionM2: HRGN; // ������ ������� 2, �������-������
  RegionM3: HRGN; // ������ ������� 3, ������-������
  RegionM4: HRGN; // ������ ������� 4, ������-�����
  RegionM5: HRGN; // ������ ������� 5, ������� �� ������
  RegionM6: HRGN; // ������ ������� 6, ������ �� ������
  RegionM7: HRGN; // ������ ������� 7, ������ �� ������
  RegionM8: HRGN; // ������ ������� 8, ����� �� ������
  PlanSizingNM: integer; // ��������� ������

const
  crPencil: integer=5;
  crLas: integer=6;
  crLPos: integer=7;
  crRPos: integer=8;
  crLas2: integer=9;

implementation

{$R *.dfm}

procedure Sglag(Bitmap: TBitmap); // ��������� �����������
var
  W, X, Y: integer;
  xl: integer;
  ctxr, ctxg, ctxb: integer; // ��� �������� ������������� �������� �����
  ctyr, ctyg, ctyb: integer; // ��� �������� ������������� �������� �����
  Scan: ^ScanLine; // ��������� �� ������ ScanLine ���� TRGB
  Scan2: ^ScanLine; // ��������� �� ������ ScanLine ���� TRGB
  cr: TRGB; // ��� ������ ������ �����
  BitTemp: tbitmap;
begin
  BitTemp:=tbitmap.Create;
  BitTemp.Width:=Bitmap.Width;
  BitTemp.Height:=Bitmap.Height;
  BitTemp.PixelFormat:=pf24bit;
  W:=Effect.eG; // ��������� ������ ����� � ���������� ������������� �������
  Bitmap.PixelFormat:=pf24bit;
  for Y:=W to Bitmap.Height-1-W do // ������ �� �����������
  begin
    Scan2:=BitTemp.ScanLine[Y]; // ���������� ��������� �� ������ � �����
    for X:=W to Bitmap.Width-1-W do // ������ �� ���������
    begin
      // ��������� �������� ������
      ctxR:=0;
      ctxG:=0;
      ctxB:=0;
      ctyR:=0;
      ctyG:=0;
      ctyB:=0;
      for xl:=1 to W*2+1 do // ���� ����� �����������
      begin
        Scan:=Bitmap.ScanLine[Y]; // ���������� ��������� �� ������ � �����
        cr:=Scan[X-W+xl-1]; // ������������ ���� �������
        // ���������� ����� � �������� ��������� ������ �������
        ctxR:=ctxR+cr.R; // �������
        ctxG:=ctxG+cr.G; // �������
        ctxB:=ctxB+cr.B; // �����
        Scan:=Bitmap.ScanLine[Y-W+xl-1]; // ���������� ��������� �� ������ � �����
        cr:=Scan[X]; // ������������ ���� �������
        // ���������� ����� � �������� ��������� ������ �������
        ctyR:=ctyR+cr.R; // �������
        ctyG:=ctyG+cr.G; // �������
        ctyB:=ctyB+cr.B; // �����
      end;
      // ���������� �������� �������� ����� ������ ������������ ����� � ����� �����������
      ctxR:=ctxR div (W*2+1); // �������
      ctxG:=ctxG div (W*2+1); // �������
      ctxB:=ctxB div (W*2+1); // �����
      ctyR:=ctyR div (W*2+1); // �������
      ctyG:=ctyG div (W*2+1); // �������
      ctyB:=ctyB div (W*2+1); // �����
      // ���������� �������� �������� ����� �������
      cr.R:=(ctxr+ctyr)div 2; // �������
      cr.G:=(ctxg+ctyg)div 2; // �������
      cr.B:=(ctxb+ctyb)div 2; // �����
      // �������� ����� ������� � ���������
      Scan2[X]:=cr;
    end;
  end;

  BitTemp.Canvas.CopyMode:=cmSrcAnd;
  BitTemp.Canvas.Draw(0, 0, Bitmap);

  Bitmap.Canvas.Draw(0, 0, BitTemp);
  bitTemp.Free;
  //form1.Image1.Invalidate; // ����������� Image1
end;

procedure DrawPlan(Bit: TBitmap; Pl: TPlan; ii: integer; Editing: boolean); // ������ ����
begin
  Bit.Canvas.CopyMode:=cmSrcAnd;
  Bit.Canvas.Draw(Pl.DX, Pl.DY, Pl.Bit);

  if (ItemIndex=ii)and(Editing) then
  begin
    Bit.Canvas.Pen.Mode:=pmNot;
    Bit.Canvas.Pen.Color:=clBlack;
    Bit.Canvas.Pen.Style:=psDot;
    Bit.Canvas.Brush.Style:=bsClear;
    Bit.Canvas.Rectangle(Pl.DX, Pl.DY, Pl.Wp+Pl.DX, Pl.Hp+Pl.DY);
    Bit.Canvas.Pen.Mode:=pmCopy;

    Bit.Canvas.Pen.Style:=psSolid;
    Bit.Canvas.Brush.Color:=clWhite;
    Bit.Canvas.Rectangle(Pl.DX-2, Pl.DY-2, Pl.DX+2, Pl.DY+2);
    Bit.Canvas.Rectangle(Pl.DX+Pl.Wp-2, Pl.DY-2, Pl.DX+Pl.Wp+2, Pl.DY+2);
    Bit.Canvas.Rectangle(Pl.DX-2, Pl.DY+Pl.Hp-2, Pl.DX+2, Pl.DY+Pl.Hp+2);
    Bit.Canvas.Rectangle(Pl.DX+Pl.Wp-2, Pl.DY+Pl.Hp-2, Pl.DX+Pl.Wp+2, Pl.DY+Pl.Hp+2);
    Bit.Canvas.Rectangle(Pl.DX+round(+Pl.Wp/2)-2, Pl.DY-2, Pl.DX+round(+Pl.Wp/2)+2, Pl.DY+2);
    Bit.Canvas.Rectangle(Pl.DX+Pl.Wp-2, Pl.DY+round(+Pl.Hp/2)-2, Pl.DX+Pl.Wp+2, Pl.DY+round(+Pl.Hp/2)+2);
    Bit.Canvas.Rectangle(Pl.DX-2, Pl.DY+round(+Pl.Hp/2)-2, Pl.DX+2, Pl.DY+round(+Pl.Hp/2)+2);
    Bit.Canvas.Rectangle(Pl.DX+round(+Pl.Wp/2)-2, Pl.DY+Pl.Hp-2, Pl.DX+round(+Pl.Wp/2)+2, Pl.DY+Pl.Hp+2);
    Bit.Canvas.Brush.Color:=clWhite;
  end;
end;

procedure DrawPlans; // ������ ��� �����
var
  i: integer;
begin
  form1.Image1.Canvas.Brush.Style:=bsSolid;
  form1.Image1.Canvas.FillRect(form1.Image1.ClientRect);
  form1.Image1.Canvas.Draw(0, 0, Fon.Graphic); //��������� ���
  for i:=0 to length(Plan)-1 do
  DrawPlan(form1.Image1.Picture.Bitmap, Plan[i], i, true);
  if form1.Action11.Checked then //�������� ����������� ����������� ������
  if (not PMove)and(PlanSizingNM=0) then
  //Sglag(form1.Image1.Picture.Bitmap);
end;

procedure TextToBit(Bit: TBitmap; Str: string); // ��������� ����� � ����
var
  i, //���������� �����
  ns, //�������� ������� �� ���� Memo1
  TW, //����� ������ �������� � ����������� ������, ��� ������� ���������� �������
  TH, //����� ������ �������� � ����������� ������, ��� ������� ������
  pw, //����� ������ ��������� � �������� ����� ���������� ��������
  eh, //���������� ������ ��� ��������� ��������
  peh, //���������� ���������� ������ �������� ����� ��� ���������� �������
  ew: integer; //���������� ���������� ����� ���������
  M: real; //��� ���������� ������� �������
  pred: tpoint; //���������� ���������� �������� ����� ��� ���������� �������
  cl, ws: integer;
begin
  M:=100/Effect.eSS;
  TH:=0;
  pred:=point(0, 0);
  eh:=0;
  peh:=0;
  if form1.Action10.Checked then //�������� ������� ��������� ����� ���������
  ew:=Effect.eW //"��" ������������� ������ ��������� ����� ���������
  else
  ew:=0; //"���" ���������� ����� ��������� = 0
  pw:=0;
  TW:=abs(ew);
  Bit.Canvas.FillRect(form1.Image1.ClientRect); //�������
  i:=1;
  while (i<=length(Str))and((TH/M)<Bit.Height) do // ���� �������� ������
  begin
    if form1.Action9.Checked then //�������� ������� ��������� �����
    eh:=random(Effect.eH)-(Effect.eH div 2); //���������� ������� ������ ��� �������
    ns:=ord(Str[i]); //������������ �������� �������
    if ns=13 then //�������� �������� �������
    begin
      TH:=TH+Effect.eStrH; //���� 13 �� ������� �� ����� ������
    end
    else
    if ns=10 then
    begin
      TW:=abs(ew); //���� 10 �� ����� ����� ������ ��������
      pred:=point(0, 0); //���������� �������
    end
    else
    begin //���� �� 13 � �� 10 ��������� ������ �� Image1

      if ns=32 then
      begin
        cl:=i+1;
        ws:=0;
        //ws:=ws+SimbDat[ord(form1.Memo1.text[cl])].Simb.Width;
        while not(ord(Str[cl]) in [10, 13, 32]) and (cl<length(Str)) do
        begin
          inc(cl);
          ws:=ws+SimbDat[ord(Str[cl])].Simb.Width;
        end;
        //ws:=ws+SimbDat[ord(form1.Memo1.text[cl])].Simb.Width;
        if ((ws+TW)/M)>Bit.Width then
        begin
          TH:=TH+Effect.eStrH; //������� �� ����� ������
          TW:=abs(ew); //����� ����� ������ ��������
          pred:=point(0, 0); //���������� �������
        end;
      end;

      Bit.Canvas.CopyMode := cmSrcAnd;
      Bit.Canvas.CopyRect(Rect(round((TW+ew)/M), round((TH+eh)/M), round((TW+ew+SimbDat[ns].Simb.Width)/M), round((TH+eh+SimbDat[ns].Simb.Height)/M)), SimbDat[ns].Simb.Canvas, Rect(0, 0, SimbDat[ns].Simb.Width, SimbDat[ns].Simb.Height));
      Bit.Canvas.CopyMode := cmSrcCopy;
      if ((pred.X<>0)and(pred.Y<>0))and((SimbDat[ns].Lp.X<>0)and(SimbDat[ns].Lp.Y<>0)) then //�������� - ����� �� ������� ����������
      begin
        Bit.Canvas.MoveTo(round((pred.X+TW-pw+ew)/M), round((pred.Y+TH+peh)/M));
        Bit.Canvas.LineTo(round((SimbDat[ns].Lp.X+TW+ew)/M), round((SimbDat[ns].Lp.Y+TH+eh)/M));
      end;
      peh:=eh;
      TW:=TW+SimbDat[ns].Simb.Width+ew;
      pw:=SimbDat[ns].Simb.Width+ew;
      pred:=SimbDat[ns].Rp;
    end;
    inc(i);
  end;
  if form1.Action11.Checked then //�������� ����������� ����������� ������
  if (not PMove)and(PlanSizingNM=0) then
  //Sglag(form1.Image1.Picture.Bitmap);
  Sglag(Bit);
end;

procedure MinDrawMax(x, y, w: integer; clW: boolean);
var
  i, j: integer;
  c: TColor;
  Scan: ^ScanLine;
  Cs: TRGB;
begin
  form1.Image4.Canvas.Pen.Color:=clBlack;
  form1.Image4.Canvas.Brush.Color:=clBlack;
  Simb.PixelFormat:=pf24bit;
  //for j:=y-w to y+w do
  for j:=0 to 63 do
  begin
    Scan:=Simb.ScanLine[j];
    //for i:=x-w to x+w do
    for i:=0 to 63 do
    begin
      //c:=GetPixel(Simb.Canvas.Handle, i, j);
      Cs:=Scan[i];
      c:=RGB(Cs.R, Cs.G, Cs.B);
      if clW then
      begin
        form1.Image4.Canvas.Brush.Color:=c;
        form1.Image4.Canvas.Pen.Color:=c;
        form1.Image4.Canvas.Rectangle(i*5, j*5, i*5+5, j*5+5);
      end
      else
      if c=clBlack then
      form1.Image4.Canvas.Rectangle(i*5, j*5, i*5+5, j*5+5);
    end;
  end;
end;

procedure DrawS(n: integer; Setka: boolean); // ������� ����� � ����� � ���������
var
  i: integer;
begin
  form1.Image3.Picture.Bitmap.Assign(Simb);

  if Setka then
  begin
    form1.Image3.Canvas.Pen.Color:=clSilver;
    form1.Image4.Canvas.Pen.Color:=clSilver;
    for i:=0 to 64 do
    begin
      {form1.Image3.Canvas.MoveTo(0, (i-1)*2);
      form1.Image3.Canvas.LineTo(64, (i-1)*2);
      form1.Image3.Canvas.MoveTo((i-1)*2, 0);
      form1.Image3.Canvas.LineTo((i-1)*2, 64);}
      form1.Image4.Canvas.MoveTo(0, (i-1)*5);
      form1.Image4.Canvas.LineTo(64*5, (i-1)*5);
      form1.Image4.Canvas.MoveTo((i-1)*5, 0);
      form1.Image4.Canvas.LineTo((i-1)*5, 64*5);
    end;
  end;

  form1.Image3.Canvas.Pen.Color:=clSilver;
  form1.Image4.Canvas.Pen.Color:=clBlue;
  form1.Image3.Canvas.MoveTo(0, 5);
  form1.Image3.Canvas.LineTo(64, 5);
  form1.Image4.Canvas.MoveTo(0, 5*5);
  form1.Image4.Canvas.LineTo(64*5, 5*5);
  form1.Image3.Canvas.MoveTo(0, 25);
  form1.Image3.Canvas.LineTo(64, 25);
  form1.Image4.Canvas.MoveTo(0, 25*5);
  form1.Image4.Canvas.LineTo(64*5, 25*5);
  form1.Image3.Canvas.MoveTo(0, 45);
  form1.Image3.Canvas.LineTo(64, 45);
  form1.Image4.Canvas.MoveTo(0, 45*5);
  form1.Image4.Canvas.LineTo(64*5, 45*5);
  form1.Image3.Canvas.Pen.Color:=clGreen;
  form1.Image4.Canvas.Pen.Color:=clGreen;
  form1.Image3.Canvas.Ellipse(SimbDat[n].Lp.X-2, SimbDat[n].Lp.Y-2, SimbDat[n].Lp.X+2, SimbDat[n].Lp.Y+2);
  form1.Image4.Canvas.Ellipse(SimbDat[n].Lp.X*5-5+3, SimbDat[n].Lp.Y*5-5+3, SimbDat[n].Lp.X*5+5+3, SimbDat[n].Lp.Y*5+5+3);
  form1.Image3.Canvas.Pen.Color:=clRed;
  form1.Image4.Canvas.Pen.Color:=clRed;
  form1.Image3.Canvas.Ellipse(SimbDat[n].Rp.X-2, SimbDat[n].Rp.Y-2, SimbDat[n].Rp.X+2, SimbDat[n].Rp.Y+2);
  form1.Image4.Canvas.Ellipse(SimbDat[n].Rp.X*5-5+3, SimbDat[n].Rp.Y*5-5+3, SimbDat[n].Rp.X*5+5+3, SimbDat[n].Rp.Y*5+5+3);
  form1.Image3.Canvas.Pen.Color:=clBlack;
end;

procedure InsertSimb(Bit: TBitmap; n: integer); // ������� ������� � ����� �������
var
  pl, pr, i, j: integer;
  b: tbitmap;
begin
  i:=0;
  j:=0;
  while (i<>64)and(Bit.Canvas.Pixels[i, j]=clWhite) do
  begin
    inc(j);    
    if j=64 then
    begin
      inc(i);
      j:=0;
    end;
  end;
  pl:=i-1;

  i:=63;
  j:=0;
  while (i<>0)and(Bit.Canvas.Pixels[i, j]=clWhite) do
  begin
    inc(j);
    if j=64 then
    begin
      dec(i);
      j:=0;
    end;
  end;
  pr:=i+1;

  if pl=63 then
  pl:=0;
  if pr=1 then
  pr:=10;//64;

  if (SimbDat[n].Lp.X<>0)and(SimbDat[n].Lp.Y<>0) then
  SimbDat[n].Lp.X:=SimbDat[n].Lp.X-pl;
  if (SimbDat[n].Rp.X<>0)and(SimbDat[n].Rp.Y<>0) then
  SimbDat[n].Rp.X:=SimbDat[n].Rp.X-pl;

  //showmessage(inttostr(pl)+' '+inttostr(pr));
  b:=tbitmap.Create;
  b.Width:=pr-pl+1;
  b.Height:=64;
  b.Canvas.CopyRect(rect(0, 0, pr-pl, 64), Bit.Canvas, rect(pl, 0, pr, 64));
  //SimbDat[n].Simb.Assign(form1.Image3.Picture.Bitmap);
  SimbDat[n].Simb.Assign(b);
  b.Free;
end;

procedure Simbols; // ���������� ������ ���������
var
  n, DYE, DXE, DXT, DYT, MaxH, MaxW, XT, YT, X, Y: integer;
begin
  MaxH:=255;
  MaxW:=255;
  DYE:=succ(form1.Image1.ClientHeight)div(2*MaxH);
  DXE:=succ(form1.Image1.ClientWidth)div(2*MaxW);
  XT:=DXE-1;
  YT:=DYE;
  DXT:=272 div 16;
  DYT:=304 div 16;
  for n:=0 to 255 do // �������� �� ���� ������� ��������
  begin
    X:=XT+(n mod 16)*DXT;
    Y:=YT+(n div 16)*DYT;
//    form1.Image2.Canvas.Rectangle(X, Y, X+dxt, Y+dyt);

    if n in [33..47, 58..64, 123..126] then // ���� ������ �����������
    begin
      if n in [33..47] then
      begin
        // �������� ���������� ������� � �������
        X:=XT+((n-33) mod 16)*DXT;
        Y:=YT+((n-33) div 16)*DYT;
      end
      else
      if n in [58..64] then
      begin
        // �������� ���������� ������� � �������
        X:=XT+((n-43) mod 16)*DXT;
        Y:=YT+((n-43) div 16)*DYT;
      end
      else
      if n in [123..126] then
      begin
        // �������� ���������� ������� � �������
        X:=XT+((n-101) mod 16)*DXT;
        Y:=YT+((n-101) div 16)*DYT;
      end;
      form1.Image7.Canvas.TextOut(X+3, Y+3, chr(n));
    end
    else
    if n in [48..57] then // ���� ������ �����
    begin
      // �������� ���������� ������� � �������
      X:=XT+((n-48) mod 16)*DXT;
      Y:=YT+((n-48) div 16)*DYT;
      form1.Image6.Canvas.TextOut(X+3, Y+3, chr(n));
    end
    else
    if n in [65..90, 97..122] then // ���� ������ �� ����������� ��������
    begin
      if n in [65..90] then
      begin
        // �������� ���������� ������� � �������
        X:=XT+((n-65) mod 16)*DXT;
        Y:=YT+((n-65) div 16)*DYT;
      end
      else
      if n in [97..122] then
      begin
        // �������� ���������� ������� � �������
        X:=XT+((n-71) mod 16)*DXT;
        Y:=YT+((n-71) div 16)*DYT;
      end;
      form1.Image5.Canvas.TextOut(X+3, Y+3, chr(n));
    end
    else
    if n in [192..255] then // ���� ������ �� �������� ��������
    begin
      // �������� ���������� ������� � �������
      X:=XT+((n-192) mod 16)*DXT;
      Y:=YT+((n-192) div 16)*DYT;
      form1.Image2.Canvas.TextOut(X+3, Y+3, chr(n));
    end;

    // ������� ������ � ����� ������
    SimbDat[n].Simb:=TBitmap.Create;
    SimbDat[n].Simb.Width:=64;
    SimbDat[n].Simb.Height:=64;
    SimbDat[n].Simb.Canvas.TextOut(3, 3, chr(n));
    SimbDat[n].Lp:=point(0, 0);
    SimbDat[n].Rp:=point(0, 0);
  end;
end;

procedure SelSimbol(xn, yn: integer; NTabl: integer; Im: TImage); // ��������� ������� � ������� ��������
var
  n, DYE, DXE, DXT, DYT, MaxH, MaxW, XT, YT, X, Y: integer;
  Img: ^TImage;
  ns: integer;
begin

  MaxH:=255;
  MaxW:=255;
  DYE:=succ(form1.Image1.ClientHeight)div(2*MaxH);
  DXE:=succ(form1.Image1.ClientWidth)div(2*MaxW);
  XT:=DXE-1;
  YT:=DYE;
  DXT:=272 div 16;
  DYT:=304 div 16;

  n:=np; // ����� ������ ��� ������ �� �����
  if np in [192..255] then // ���� ������ �������� �������� 
  begin
    n:=n-192; // ��������� � ��������� ������� �� 0
    img:=@form1.Image2; // ������ �������� ��������
  end
  else
  if np in [65..90] then // ���� ������ ����������� �������� (��������� �����)
  begin
    n:=n-65; // ��������� � ��������� ������� �� 0
    img:=@form1.Image5; // ������ ����������� ��������
  end
  else
  if np in [97..122] then // ���� ������ ����������� �������� (��������� �����)
  begin
    n:=n-71; // ��������� � ��������� ������� �� 26
    img:=@form1.Image5; // ������ ����������� ��������
  end
  else
  if np in [48..57] then // ���� ������ �����
  begin
    n:=n-48; // ��������� � ��������� ������� �� 0
    img:=@form1.Image6; // ������ ����
  end
  else
  if np in [33..47] then // ���� ������ �����������
  begin
    n:=n-33; // ��������� � ��������� ������� �� 0
    img:=@form1.Image7; // ������ ������������
  end
  else
  if np in [58..64] then // ���� ������ �����������
  begin
    n:=n-43; // ��������� � ��������� ������� �� 15
    img:=@form1.Image7; // ������ ������������
  end
  else
  if np in [123..126] then // ���� ������ �����������
  begin
    n:=n-101; // ��������� � ��������� ������� �� 22
    img:=@form1.Image7; // ������ ������������
  end
  else
  img:=@form1.Image2;

  // �������� ���������� �������
  X:=XT+(n mod 16)*DXT;
  Y:=YT+(n div 16)*DYT;

  // ������ ������ � ����� ����� 
  Img^.Canvas.Pen.Color:=clWhite;
  Img^.Canvas.Brush.Color:=clWhite;
  Img^.Canvas.Font.Color:=clBlack;
  Img^.Canvas.Rectangle(X, Y, X+dxt, Y+dyt);
  Img^.Canvas.TextOut(X+3, Y+3, chr(np));

  //InsertSimb(form1.Image3.Picture.Bitmap, np);
  InsertSimb(Simb, np); // ��������� ������

  X:=XT+(xn div DXT)*DXT;
  Y:=YT+(yn div DYT)*DYT;
  n:=((yn div DYT) * 16)+(xn div DXT); // ���������� ����� �������

  ns:=n;

  if NTabl=0 then // ���� ������� ������� �������� ��������
  begin
    if n in [0..63] then // ���� ������ ������
    n:=n+192 // ��������� � ��������� ������� �� ����� �������
    else // ���� ������ �� ������ � ��������
    begin
      n:=255; // �������� ��������� ������ � ���������
      ns:=63; // �������� ��������� ����� ������� � ������� ��������
    end;
  end
  else
  if NTabl=1 then // ���� ������� ������� ����������� ��������
  begin
    if n in [0..25] then // ���� ������ ������
    n:=n+65 // ��������� � ��������� ������� �� ����� �������
    else // ���� ������ �� ������ � ��������
    if n in [26..51] then // ���� ������ ������
    n:=n+71 // ��������� � ��������� ������� �� ����� �������
    else // ���� ������ �� ������ � ��������
    begin
      n:=122; // �������� ��������� ������ � ���������
      ns:=51; // �������� ��������� ����� ������� � ������� ��������
    end;
  end;
  if NTabl=2 then // ���� ������� ������� ����
  begin
    if n in [0..9] then // ���� ������ ������
    n:=n+48 // ��������� � ��������� ������� �� ����� �������
    else // ���� ������ �� ������ � ��������
    begin
      n:=57; // �������� ��������� ������ � ���������
      ns:=9; // �������� ��������� ����� ������� � ������� ��������
    end;
  end;
  if NTabl=3 then // ���� ������� ������� ������������
  begin
    if n in [0..14] then // ���� ������ ������
    n:=n+33 // ��������� � ��������� ������� �� ����� �������
    else // ���� ������ �� ������ � ��������
    if n in [15..21] then // ���� ������ ������
    n:=n+43 // ��������� � ��������� ������� �� ����� �������
    else // ���� ������ �� ������ � ��������
    if n in [22..25] then // ���� ������ ������
    n:=n+101 // ��������� � ��������� ������� �� ����� �������
    else // ���� ������ �� ������ � ��������
    begin
      n:=126; // �������� ��������� ������ � ���������
      ns:=25; // �������� ��������� ����� ������� � ������� ��������
    end;
  end;

  // ���������� ���������� ������� �� ������� � �������
  X:=XT+(ns mod 16)*DXT;
  Y:=YT+(ns div 16)*DYT;

  np:=n; // ����� ������ ������ ������
  // ������ ������ �� ����� ����
  Im.Canvas.Pen.Color:=clred;
  Im.Canvas.Brush.Color:=clBlue;
  Im.Canvas.Font.Color:=clWhite;
  Im.Canvas.Rectangle(X, Y, X+dxt, Y+dyt);
  Im.Canvas.TextOut(X+3, Y+3, chr(n));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Screen.Cursors[crPencil]:=LoadCursor(HInstance, 'Pencil');
  Screen.Cursors[crLas]:=LoadCursor(HInstance, 'Las');
  Screen.Cursors[crLPos]:=LoadCursor(HInstance, 'LPos');
  Screen.Cursors[crRPos]:=LoadCursor(HInstance, 'RPos');
  Screen.Cursors[crLas2]:=LoadCursor(HInstance, 'Las2');

  Effect.eW:=5;
  Effect.eH:=15;
  Effect.eG:=1;
  Effect.eSS:=100;
  Effect.eStrH:=64;

  Simb:=tbitmap.Create;
  Simb.Width:=64;
  Simb.Height:=64;
  Simbols;

  if FileExists('FileSimb.sim') then
  begin
    LoadFromFile(SimbDat, 'FileSimb.sim');
    SelSimbol(1, 1, 0, form1.Image2);
    Simb.Canvas.FillRect(rect(0, 0, 64, 64));
    Simb.Canvas.Draw(32-(SimbDat[np].Simb.Width div 2), 0, SimbDat[np].Simb);
    if (SimbDat[np].Lp.X<>0)and(SimbDat[np].Lp.Y<>0) then
    SimbDat[np].Lp.X:=SimbDat[np].Lp.X+32-(SimbDat[np].Simb.Width div 2);
    if (SimbDat[np].Rp.X<>0)and(SimbDat[np].Rp.Y<>0) then
    SimbDat[np].Rp.X:=SimbDat[np].Rp.X+32-(SimbDat[np].Simb.Width div 2);
    MinDrawMax(31, 31, 32, true);
    DrawS(np, form1.SpeedButton8.Down);
    form1.SpeedButton2.Down:=true;
    form1.SpeedButton2Click(self);
  end
  else
  begin
    form1.Image3.Picture.Bitmap.Assign(SimbDat[0].Simb);
    Simb.Assign(SimbDat[0].Simb);
    SelSimbol(1, 1, 0, form1.Image2);
    DrawS(0, false);
  end;

  SimbModif:=false;

  Fon:=TPicture.Create;
  setlength(Plan, length(Plan)+1);
  ItemIndex:=0;
  Plan[ItemIndex].DX:=5;
  Plan[ItemIndex].DY:=5;
  Plan[ItemIndex].Wp:=100;
  Plan[ItemIndex].Hp:=100;
  Plan[ItemIndex].Bit:=TBitmap.Create;
  Plan[ItemIndex].Bit.Width:=100;
  Plan[ItemIndex].Bit.Height:=100;
  // �������� ������� �����
  RegionPlanBox:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX-1, Plan[ItemIndex].DY-1, Plan[ItemIndex].Wp+Plan[ItemIndex].DX+1, Plan[ItemIndex].Hp+Plan[ItemIndex].DY+1));
  // �������� �������� �������� 
  RegionM1:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX-2, Plan[ItemIndex].DY-2, Plan[ItemIndex].DX+2, Plan[ItemIndex].DY+2));
  RegionM2:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX+Plan[ItemIndex].Wp-2, Plan[ItemIndex].DY-2, Plan[ItemIndex].DX+Plan[ItemIndex].Wp+2, Plan[ItemIndex].DY+2));
  RegionM3:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX-2, Plan[ItemIndex].DY+Plan[ItemIndex].Hp-2, Plan[ItemIndex].DX+2, Plan[ItemIndex].DY+Plan[ItemIndex].Hp+2));
  RegionM4:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX+Plan[ItemIndex].Wp-2, Plan[ItemIndex].DY+Plan[ItemIndex].Hp-2, Plan[ItemIndex].DX+Plan[ItemIndex].Wp+2, Plan[ItemIndex].DY+Plan[ItemIndex].Hp+2));
  RegionM5:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX+round(+Plan[ItemIndex].Wp/2)-2, Plan[ItemIndex].DY-2, Plan[ItemIndex].DX+round(+Plan[ItemIndex].Wp/2)+2, Plan[ItemIndex].DY+2));
  RegionM6:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX+Plan[ItemIndex].Wp-2, Plan[ItemIndex].DY+round(+Plan[ItemIndex].Hp/2)-2, Plan[ItemIndex].DX+Plan[ItemIndex].Wp+2, Plan[ItemIndex].DY+round(+Plan[ItemIndex].Hp/2)+2));
  RegionM7:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX-2, Plan[ItemIndex].DY+round(+Plan[ItemIndex].Hp/2)-2, Plan[ItemIndex].DX+2, Plan[ItemIndex].DY+round(+Plan[ItemIndex].Hp/2)+2));
  RegionM8:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX+round(+Plan[ItemIndex].Wp/2)-2, Plan[ItemIndex].DY+Plan[ItemIndex].Hp-2, Plan[ItemIndex].DX+round(+Plan[ItemIndex].Wp/2)+2, Plan[ItemIndex].DY+Plan[ItemIndex].Hp+2));
  PMove:=false;
  DrawPlans;
end;

procedure TForm1.Image2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  SelSimbol(x, y, 0, form1.Image2);
  //Simb.Assign(SimbDat[np].Simb);
  Simb.Canvas.FillRect(rect(0, 0, 64, 64));
  Simb.Canvas.Draw(32-(SimbDat[np].Simb.Width div 2), 0, SimbDat[np].Simb);
  if (SimbDat[np].Lp.X<>0)and(SimbDat[np].Lp.Y<>0) then
  SimbDat[np].Lp.X:=SimbDat[np].Lp.X+32-(SimbDat[np].Simb.Width div 2);
  if (SimbDat[np].Rp.X<>0)and(SimbDat[np].Rp.Y<>0) then
  SimbDat[np].Rp.X:=SimbDat[np].Rp.X+32-(SimbDat[np].Simb.Width div 2);
  MinDrawMax(31, 31, 32, true);
  DrawS(np, form1.SpeedButton8.Down);
  form1.SpeedButton2.Down:=true;
  form1.SpeedButton2Click(self);
end;

procedure TForm1.FormDestroy(Sender: TObject);
var
  i: integer;
begin
  for i:=0 to 255 do
  SimbDat[i].Simb.Free;
  Simb.Free;

  Fon.Free;
  setlength(Plan, 0);
  // �������� �������� 
  DeleteObject(RegionPlanBox);
  DeleteObject(RegionM1);
  DeleteObject(RegionM2);
  DeleteObject(RegionM3);
  DeleteObject(RegionM4);
  DeleteObject(RegionM5);
  DeleteObject(RegionM6);
  DeleteObject(RegionM7);
  DeleteObject(RegionM8);
end;

procedure TForm1.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if ssleft in shift then
  begin
    if form1.SpeedButton2.Down then
    begin
      form1.Image3.Canvas.MoveTo(X, Y);
      Simb.Canvas.Pixels[X, Y]:=clBlack;
      Simb.Canvas.MoveTo(X, Y);
    end;
    if form1.SpeedButton6.Down then
    begin
      form1.Image3.Canvas.Pen.Color:=clWhite;
      form1.Image3.Canvas.Rectangle(x-4,y-4,x+5,y+5);
      Simb.Canvas.Pen.Color:=clWhite;
      Simb.Canvas.Rectangle(x-4,y-4,x+5,y+5);
      MinDrawMax(x, y, 15, true);
    end;
  end;
  if ssright in shift then
  begin
    if form1.SpeedButton2.Down then
    begin
      form1.Image3.Canvas.Pen.Color:=clWhite;
      form1.Image3.Canvas.MoveTo(X, Y);
      Simb.Canvas.Pen.Color:=clWhite;
      Simb.Canvas.Pixels[X, Y]:=clWhite;
      Simb.Canvas.MoveTo(X, Y);
    end;
  end;
end;

procedure TForm1.Image3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if ssleft in shift then
  begin
    if form1.SpeedButton2.Down then
    begin
      form1.Image3.Canvas.LineTo(X, Y);
      Simb.Canvas.LineTo(X, Y);
      MinDrawMax(x, y, 15, false);
    end;
    if form1.SpeedButton6.Down then
    begin
      form1.Image3.Canvas.Rectangle(x-4,y-4,x+5,y+5);
      Simb.Canvas.Rectangle(x-4,y-4,x+5,y+5);
      MinDrawMax(x, y, 15, true);
    end;
  end;
  if ssright in shift then
  begin
    if form1.SpeedButton2.Down then
    begin
      form1.Image3.Canvas.LineTo(X, Y);
      Simb.Canvas.LineTo(X, Y);
      MinDrawMax(x, y, 15, false);
    end;
  end;
end;

procedure TForm1.Image3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if form1.SpeedButton3.Down then
  SimbDat[np].Lp:=point(X, Y);
  if form1.SpeedButton4.Down then
  SimbDat[np].Rp:=point(X, Y);
  Simb.Canvas.Pen.Color:=clBlack;
  MinDrawMax(31, 31, 32, true);
  DrawS(np, form1.SpeedButton8.Down);
  SimbModif:=form1.Image3.Picture.Graphic.Modified;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  SaveToFile(SimbDat, 'FileSimb.sim');
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  TextToBit(Plan[ItemIndex].Bit, form1.Memo1.Text);
  DrawPlans;
end;

procedure TForm1.Action1Execute(Sender: TObject);
begin
  form1.Notebook1.ActivePage:='Editing';
  form1.SpeedButton2Click(self);
  form1.Action1.Enabled:=false;
  form1.Action4.Enabled:=true;
  form1.ActionMainMenuBar1.ActionManager.ActionBars.ActionBars[0].Items[0].Visible:=false;
  form1.ActionMainMenuBar1.ActionManager.ActionBars.ActionBars[0].Items[2].Visible:=false;
end;

procedure TForm1.Action2Execute(Sender: TObject);
begin
  if form1.OpenDialog1.Execute then
  begin
    LoadFromFile(SimbDat, form1.OpenDialog1.FileName);

    Simb.Canvas.FillRect(rect(0, 0, 64, 64));
    Simb.Canvas.Draw(32-(SimbDat[np].Simb.Width div 2), 0, SimbDat[np].Simb);
    if (SimbDat[np].Lp.X<>0)and(SimbDat[np].Lp.Y<>0) then
    SimbDat[np].Lp.X:=SimbDat[np].Lp.X+32-(SimbDat[np].Simb.Width div 2);
    if (SimbDat[np].Rp.X<>0)and(SimbDat[np].Rp.Y<>0) then
    SimbDat[np].Rp.X:=SimbDat[np].Rp.X+32-(SimbDat[np].Simb.Width div 2);
    MinDrawMax(31, 31, 32, true);
    DrawS(np, form1.SpeedButton8.Down);
    form1.SpeedButton2.Down:=true;
    form1.SpeedButton2Click(self);

    SimbModif:=false;
    form1.SpeedButton1Click(self);
  end;
end;

procedure TForm1.Action3Execute(Sender: TObject);
begin
  if form1.SaveDialog1.Execute then
  begin
    SaveToFile(SimbDat, form1.SaveDialog1.FileName);
    SimbModif:=false;
  end;
end;

procedure TForm1.Action4Execute(Sender: TObject);
begin
  InsertSimb(Simb, np);
  if SimbModif then
  begin
    case application.MessageBox('��������� ��������� � ������?','�����',MB_YESNOCANCEL+MB_ICONQUESTION) of
      idYes: form1.Action3Execute(self);
      idNo: ;
      idCancel: exit;
    end;
  end;
  form1.Notebook1.ActivePage:='Default';
  form1.Action1.Enabled:=true;
  form1.Action4.Enabled:=false;
  form1.ActionMainMenuBar1.ActionManager.ActionBars.ActionBars[0].Items[0].Visible:=true;
  form1.ActionMainMenuBar1.ActionManager.ActionBars.ActionBars[0].Items[2].Visible:=true;
end;

procedure TForm1.Action5Execute(Sender: TObject);
begin
  form1.Close;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
  Simb.Canvas.FillRect(rect(0, 0, 64, 64));
  SimbDat[np].Lp:=point(0, 0);
  SimbDat[np].Rp:=point(0, 0);
  form1.Image4.Canvas.Brush.Color:=clWhite;
  form1.Image4.Canvas.FillRect(form1.Image4.ClientRect);
  DrawS(np, form1.SpeedButton8.Down);
  form1.SpeedButton2.Down:=true;
  form1.SpeedButton2Click(self);
end;

procedure NewMaket; // ����� �����
begin
  form1.Memo1.Clear;
  form1.Image1.Picture.Graphic:=nil;
  form1.Image1.Canvas.FillRect(Rect(0, 0, form1.Image1.Width, form1.Image1.Height));
  setlength(Plan, 0);
  setlength(Plan, 1);
  ItemIndex:=0;
  Plan[ItemIndex].DX:=5;
  Plan[ItemIndex].DY:=5;
  Plan[ItemIndex].Wp:=100;
  Plan[ItemIndex].Hp:=100;
  Plan[ItemIndex].Bit:=TBitmap.Create;
  Plan[ItemIndex].Bit.Width:=100;
  Plan[ItemIndex].Bit.Height:=100;
  RegionPlanBox:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX-1, Plan[ItemIndex].DY-1, Plan[ItemIndex].Wp+Plan[ItemIndex].DX+1, Plan[ItemIndex].Hp+Plan[ItemIndex].DY+1));
  RegionM1:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX-2, Plan[ItemIndex].DY-2, Plan[ItemIndex].DX+2, Plan[ItemIndex].DY+2));
  RegionM2:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX+Plan[ItemIndex].Wp-2, Plan[ItemIndex].DY-2, Plan[ItemIndex].DX+Plan[ItemIndex].Wp+2, Plan[ItemIndex].DY+2));
  RegionM3:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX-2, Plan[ItemIndex].DY+Plan[ItemIndex].Hp-2, Plan[ItemIndex].DX+2, Plan[ItemIndex].DY+Plan[ItemIndex].Hp+2));
  RegionM4:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX+Plan[ItemIndex].Wp-2, Plan[ItemIndex].DY+Plan[ItemIndex].Hp-2, Plan[ItemIndex].DX+Plan[ItemIndex].Wp+2, Plan[ItemIndex].DY+Plan[ItemIndex].Hp+2));
  RegionM5:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX+round(+Plan[ItemIndex].Wp/2)-2, Plan[ItemIndex].DY-2, Plan[ItemIndex].DX+round(+Plan[ItemIndex].Wp/2)+2, Plan[ItemIndex].DY+2));
  RegionM6:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX+Plan[ItemIndex].Wp-2, Plan[ItemIndex].DY+round(+Plan[ItemIndex].Hp/2)-2, Plan[ItemIndex].DX+Plan[ItemIndex].Wp+2, Plan[ItemIndex].DY+round(+Plan[ItemIndex].Hp/2)+2));
  RegionM7:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX-2, Plan[ItemIndex].DY+round(+Plan[ItemIndex].Hp/2)-2, Plan[ItemIndex].DX+2, Plan[ItemIndex].DY+round(+Plan[ItemIndex].Hp/2)+2));
  RegionM8:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX+round(+Plan[ItemIndex].Wp/2)-2, Plan[ItemIndex].DY+Plan[ItemIndex].Hp-2, Plan[ItemIndex].DX+round(+Plan[ItemIndex].Wp/2)+2, Plan[ItemIndex].DY+Plan[ItemIndex].Hp+2));
  DrawPlans;
end;

procedure RotateMaket; // ������� ������
var
  tW, tH: integer;
begin
  tW:=form1.Image1.Width;
  tH:=form1.Image1.Height;
  form1.Image1.SetBounds(5, 5, tH, tW);
  form1.Image1.Picture.Graphic:=nil;
  form1.Image1.Canvas.FillRect(Rect(0, 0, form1.Image1.Width, form1.Image1.Height));
  DrawPlans;
end;

procedure TForm1.Action6Execute(Sender: TObject);
begin
  form1.Image1.AutoSize:=false;
  with Form4 do
  begin
    Caption:='�����';
    ActiveControl := LabeledEdit1;
    LabeledEdit1.Text := FloatToStrF(Image1.Width/(96/2.54), ffGeneral, 4, 0);
    LabeledEdit2.Text := FloatToStrF(Image1.Height/(96/2.54), ffGeneral, 4, 0);
    if ShowModal<>idCancel then
    begin
      try
        case RadioGroup1.ItemIndex of
          0:  form1.Image1.SetBounds(5, 5, round(5*96/2.54), round(9*96/2.54)); //�������
          1:  form1.Image1.SetBounds(5, 5, round(10*96/2.54), round(15*96/2.54)); //��������
          2:  form1.Image1.SetBounds(5, 5, round(7*96/2.54), round(12*96/2.54));  //�����������
          3:  form1.Image1.SetBounds(5, 5, round(StrToFloat(LabeledEdit1.Text)*96/2.54), round(StrToFloat(LabeledEdit2.Text)*96/2.54)); //������������
        end;
      except
        on EConvertError do
        begin
          Application.MessageBox('������ ���� ����� �����', '��������� ������', MB_OK+MB_ICONSTOP);
          abort;
        end;
      end;
      NewMaket;
      if RadioGroup1.ItemIndex<>3 then
      if not form1.Action20.Checked then
      RotateMaket;
    end;
  end;
end;

procedure TForm1.Action7Execute(Sender: TObject);
begin
  if form1.OpenDialog2.Execute then
  form1.Memo1.Lines.LoadFromFile(form1.OpenDialog2.FileName);
end;

procedure TForm1.Action8Execute(Sender: TObject);
var
  jpg: TJpegImage;
  Pic: Tpicture;
  i: integer;
begin
  Pic:=TPicture.Create;
  Pic.Bitmap.Width:=form1.Image1.Width;
  Pic.Bitmap.Height:=form1.Image1.Height;
  Pic.Bitmap.Canvas.Brush.Style:=bsSolid;
  Pic.Bitmap.Canvas.FillRect(form1.Image1.ClientRect);
  Pic.Bitmap.Canvas.Draw(0, 0, Fon.Graphic); //��������� ���
  for i:=0 to length(Plan)-1 do
  begin
    TextToBit(Plan[i].Bit, form1.Memo1.Text);
    DrawPlan(Pic.Bitmap, Plan[i], i, false);
  end;

  if form1.SavePictureDialog1.Execute then
  begin
    //form1.Image1.Picture.SaveToFile(form1.SavePictureDialog1.FileName);
    jpg:=TJpegImage.Create;
    jpg.Assign(Pic.Bitmap);
    jpg.SaveToFile(form1.SavePictureDialog1.FileName);
    jpg.Free;
  end;

  Pic.Free;
end;

procedure TForm1.Action9Execute(Sender: TObject);
begin
  form1.SpeedButton1Click(self);
end;

procedure TForm1.Action10Execute(Sender: TObject);
begin
  form1.SpeedButton1Click(self);
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  form1.Image3.Cursor:=crPencil;
  form1.Image4.Cursor:=crPencil;
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
  form1.Image3.Cursor:=crLas;
  form1.Image4.Cursor:=crLas2;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  form1.Image3.Cursor:=crLPos;
  form1.Image4.Cursor:=crLPos;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  form1.Image3.Cursor:=crRPos;
  form1.Image4.Cursor:=crRPos;
end;

procedure TForm1.Image4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if ssleft in shift then
  begin
    if form1.SpeedButton2.Down then
    begin
      form1.Image3.Canvas.MoveTo(X div 5, Y div 5);
      Simb.Canvas.Pixels[X div 5, Y div 5]:=clBlack;
      Simb.Canvas.MoveTo(X div 5, Y div 5);
    end;
    if form1.SpeedButton6.Down then
    begin
      form1.Image3.Canvas.Pen.Color:=clWhite;
      form1.Image3.Canvas.Rectangle(x div 5-3,y div 5-3,x div 5+4,y div 5+4);
      Simb.Canvas.Pen.Color:=clWhite;
      Simb.Canvas.Rectangle(x div 5-3,y div 5-3,x div 5+4,y div 5+4);
      MinDrawMax(x div 5, y div 5, 15, true);
    end;
  end;
  if ssright in shift then
  begin
    if form1.SpeedButton2.Down then
    begin
      form1.Image3.Canvas.Pen.Color:=clWhite;
      form1.Image3.Canvas.MoveTo(X div 5, Y div 5);
      Simb.Canvas.Pen.Color:=clWhite;
      Simb.Canvas.Pixels[X div 5, Y div 5]:=clWhite;
      Simb.Canvas.MoveTo(X div 5, Y div 5);
    end;
  end;
end;

procedure TForm1.Image4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if ssleft in shift then
  begin
    if form1.SpeedButton2.Down then
    begin
      form1.Image3.Canvas.LineTo(X div 5, Y div 5);
      Simb.Canvas.LineTo(X div 5, Y div 5);
      MinDrawMax(x div 5, y div 5, 15, false);
    end;
    if form1.SpeedButton6.Down then
    begin
      form1.Image3.Canvas.Rectangle(x div 5-3, y div 5-3, x div 5+4, y div 5+4);
      Simb.Canvas.Rectangle(x div 5-3, y div 5-3, x div 5+4, y div 5+4);
      MinDrawMax(x div 5, y div 5, 15, true);
    end;
  end;
  if ssright in shift then
  begin
    if form1.SpeedButton2.Down then
    begin
      form1.Image3.Canvas.LineTo(X div 5, Y div 5);
      Simb.Canvas.LineTo(X div 5, Y div 5);
      MinDrawMax(x div 5, y div 5, 15, true);
    end;
  end;
end;

procedure TForm1.Image4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if form1.SpeedButton3.Down then
  SimbDat[np].Lp:=point(X div 5, Y div 5);
  if form1.SpeedButton4.Down then
  SimbDat[np].Rp:=point(X div 5, Y div 5);
  Simb.Canvas.Pen.Color:=clBlack;
  MinDrawMax(31, 31, 32, true);
  DrawS(np, form1.SpeedButton8.Down);
  SimbModif:=form1.Image4.Picture.Graphic.Modified;
end;

procedure TForm1.Action11Execute(Sender: TObject);
begin
  form1.SpeedButton1Click(self);
end;

procedure TForm1.Action12Execute(Sender: TObject);
begin
  form3.UpDown1.Position:=Effect.eH;
  form3.UpDown2.Position:=Effect.eW;
  form3.UpDown3.Position:=Effect.eG;
  form3.UpDown4.Position:=Effect.eSS;
  form3.UpDown5.Position:=Effect.eStrH;
  if form3.ShowModal=mrOk then
  begin
    Effect.eH:=form3.UpDown1.Position;
    Effect.eW:=form3.UpDown2.Position;
    Effect.eG:=form3.UpDown3.Position;
    Effect.eSS:=form3.UpDown4.Position;
    Effect.eStrH:=form3.UpDown5.Position;
    form1.SpeedButton1Click(self);
  end;
end;

procedure TForm1.Action13Execute(Sender: TObject);
begin
  form5.ShowModal
end;

procedure TForm1.Action14Execute(Sender: TObject);
begin
  winhelp(form1.Handle, 'Project.hlp', help_context, 1);
end;

procedure TForm1.Action15Execute(Sender: TObject);
var
  FT: string;
  jpg: TJpegImage;
  Picture: TPicture;
  i: integer;
begin
  Picture:=TPicture.Create;
  Picture.Bitmap.Width:=form1.Image1.Width;
  Picture.Bitmap.Height:=form1.Image1.Height;
  Picture.Bitmap.Canvas.Brush.Style:=bsSolid;
  Picture.Bitmap.Canvas.FillRect(form1.Image1.ClientRect);
  Picture.Bitmap.Canvas.Draw(0, 0, Fon.Graphic); //��������� ���
  for i:=0 to length(Plan)-1 do
  begin
    TextToBit(Plan[i].Bit, form1.Memo1.Text);
    DrawPlan(Picture.Bitmap, Plan[i], i, false);
  end;

  FT:=form1.SaveDialog1.Filter;
  form1.SaveDialog1.Filter:='PDF|*.pdf';
  if form1.SaveDialog1.Execute then // ���� ������� ���������� ����
  begin
    jpg:=TJpegImage.Create;
    jpg.Assign(Picture.Graphic);
    Picture.Assign(jpg);
    PictureToPDF(Picture, form1.SaveDialog1.FileName); // ���������� ����������� � ���������� ��������� � PDF
    jpg.Free;
  end;
  Picture.Free;
  form1.SaveDialog1.Filter:=FT;
end;

procedure TForm1.Action16Execute(Sender: TObject);
begin
  if form1.OpenPictureDialog1.Execute then // ���� ������� ���������� ����
  begin
    Fon.LoadFromFile(form1.OpenPictureDialog1.FileName); // ��������� ��������� ���
    form1.Image1.Canvas.Draw(0, 0, Fon.Graphic); // ��������� ��������� ���
  end;
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  case PlanSizingNM of // ��������� ������
    1:
      begin
        // �������-����� ����� ����� ����������� ���������� ���� 
        Plan[ItemIndex].DX:=X;
        Plan[ItemIndex].DY:=Y;
        if (DW-X+DX)>0 then // ��������� ������ � ���� ������ ������ 0
        Plan[ItemIndex].Wp:=DW-X+DX // ����������� ������ �����
        else // ���� ���
        begin
          PlanSizingNM:=2; // �������� ������ 2
          // �������� ��������� ����� �������
          DX:=X;
          DY:=Y;
          // ���������� ��������� ������ � ������
          DW:=Plan[ItemIndex].Wp;
          DH:=Plan[ItemIndex].Hp;
        end;
        if (DH-Y+DY)>0 then // ��������� ������ � ���� ������ ������ 0
        Plan[ItemIndex].Hp:=DH-Y+DY // ����������� ������ �����
        else // ���� ���
        begin
          PlanSizingNM:=3; // �������� ������ 3
          // �������� ��������� ����� �������
          DX:=X;
          DY:=Y;
          // ���������� ��������� ������ � ������
          DW:=Plan[ItemIndex].Wp;
          DH:=Plan[ItemIndex].Hp;
        end;
      end;
    2:
      begin
        Plan[ItemIndex].DY:=Y;
        if (DW+X-DX)>0 then
        Plan[ItemIndex].Wp:=DW+X-DX
        else
        begin
          PlanSizingNM:=1;
          DX:=X;
          DY:=Y;
          DW:=Plan[ItemIndex].Wp;
          DH:=Plan[ItemIndex].Hp;
        end;
        if (DH-Y+DY)>0 then
        Plan[ItemIndex].Hp:=DH-Y+DY
        else
        begin
          PlanSizingNM:=4;
          DX:=X;
          DY:=Y;
          DW:=Plan[ItemIndex].Wp;
          DH:=Plan[ItemIndex].Hp;
        end;
      end;
    3:
      begin
        Plan[ItemIndex].DX:=X;
        if (DW-X+DX)>0 then
        Plan[ItemIndex].Wp:=DW-X+DX
        else
        begin
          PlanSizingNM:=4;
          DX:=X;
          DY:=Y;
          DW:=Plan[ItemIndex].Wp;
          DH:=Plan[ItemIndex].Hp;
        end;
        if (DH+Y-DY)>0 then
        Plan[ItemIndex].Hp:=DH+Y-DY
        else
        begin
          PlanSizingNM:=1;
          DX:=X;
          DY:=Y;
          DW:=Plan[ItemIndex].Wp;
          DH:=Plan[ItemIndex].Hp;
        end;
      end;
    4:
      begin
        if (DW+X-DX)>0 then
        Plan[ItemIndex].Wp:=DW+X-DX
        else
        begin
          PlanSizingNM:=3;
          DX:=X;
          DY:=Y;
          DW:=Plan[ItemIndex].Wp;
          DH:=Plan[ItemIndex].Hp;
        end;
        if (DH+Y-DY)>0 then
        Plan[ItemIndex].Hp:=DH+Y-DY
        else
        begin
          PlanSizingNM:=2;
          DX:=X;
          DY:=Y;
          DW:=Plan[ItemIndex].Wp;
          DH:=Plan[ItemIndex].Hp;
        end;
      end;
    5:
      begin
        Plan[ItemIndex].DY:=Y;
        if (DH-Y+DY)>0 then
        Plan[ItemIndex].Hp:=DH-Y+DY
        else
        begin
          PlanSizingNM:=8;
          DX:=X;
          DY:=Y;
          DW:=Plan[ItemIndex].Wp;
          DH:=Plan[ItemIndex].Hp;
        end;
      end;
    6:
      begin
        if (DW+X-DX)>0 then
        Plan[ItemIndex].Wp:=DW+X-DX
        else
        begin
          PlanSizingNM:=7;
          DX:=X;
          DY:=Y;
          DW:=Plan[ItemIndex].Wp;
          DH:=Plan[ItemIndex].Hp;
        end;
      end;
    7:
      begin
        Plan[ItemIndex].DX:=X;
        if (DW-X+DX)>0 then
        Plan[ItemIndex].Wp:=DW-X+DX
        else
        begin
          PlanSizingNM:=6;
          DX:=X;
          DY:=Y;
          DW:=Plan[ItemIndex].Wp;
          DH:=Plan[ItemIndex].Hp;
        end;
      end;
    8:
      begin
        if (DH+Y-DY)>0 then
        Plan[ItemIndex].Hp:=DH+Y-DY
        else
        begin
          PlanSizingNM:=5;
          DX:=X;
          DY:=Y;
          DW:=Plan[ItemIndex].Wp;
          DH:=Plan[ItemIndex].Hp;
        end;
      end;
  end;
  if PlanSizingNM<>0 then // ���� ������ �� ������
  begin
    form1.StatusBar1.Panels[0].Text:='X='+inttostr(Plan[ItemIndex].DX);
    form1.StatusBar1.Panels[1].Text:='Y='+inttostr(Plan[ItemIndex].DY);
    form1.StatusBar1.Panels[2].Text:='W='+inttostr(Plan[ItemIndex].Wp);
    form1.StatusBar1.Panels[3].Text:='H='+inttostr(Plan[ItemIndex].Hp);
    form1.StatusBar1.Panels[4].Text:='X='+FloatToStrF(Plan[ItemIndex].DX/(96/2.54)*10, ffGeneral, 4, 0)+'��';
    form1.StatusBar1.Panels[5].Text:='Y='+FloatToStrF(Plan[ItemIndex].DY/(96/2.54)*10, ffGeneral, 4, 0)+'��';
    form1.StatusBar1.Panels[6].Text:='W='+FloatToStrF(Plan[ItemIndex].Wp/(96/2.54)*10, ffGeneral, 4, 0)+'��';
    form1.StatusBar1.Panels[7].Text:='H='+FloatToStrF(Plan[ItemIndex].Hp/(96/2.54)*10, ffGeneral, 4, 0)+'��';
    Plan[ItemIndex].Bit.Width:=Plan[ItemIndex].Wp;
    Plan[ItemIndex].Bit.Height:=Plan[ItemIndex].Hp;
    TextToBit(Plan[ItemIndex].Bit, form1.Memo1.Text);
    DrawPlans;
  end;

  if PMove then // ���� ����� �������
  begin
    Plan[ItemIndex].DX:=(X-DX);
    Plan[ItemIndex].DY:=(Y-DY);
    form1.StatusBar1.Panels[0].Text:='X='+inttostr(Plan[ItemIndex].DX);
    form1.StatusBar1.Panels[1].Text:='Y='+inttostr(Plan[ItemIndex].DY);
    form1.StatusBar1.Panels[2].Text:='W='+inttostr(Plan[ItemIndex].Wp);
    form1.StatusBar1.Panels[3].Text:='H='+inttostr(Plan[ItemIndex].Hp);
    form1.StatusBar1.Panels[4].Text:='X='+FloatToStrF(Plan[ItemIndex].DX/(96/2.54)*10, ffGeneral, 4, 0)+'��';
    form1.StatusBar1.Panels[5].Text:='Y='+FloatToStrF(Plan[ItemIndex].DY/(96/2.54)*10, ffGeneral, 4, 0)+'��';
    form1.StatusBar1.Panels[6].Text:='W='+FloatToStrF(Plan[ItemIndex].Wp/(96/2.54)*10, ffGeneral, 4, 0)+'��';
    form1.StatusBar1.Panels[7].Text:='H='+FloatToStrF(Plan[ItemIndex].Hp/(96/2.54)*10, ffGeneral, 4, 0)+'��';
    DrawPlans;
  end;

  if PtInRegion(RegionM1, X, Y)=true then // ���� ����� ��������� � ������� ������� 1
  form1.Image1.Cursor:=crSizeNWSE // ������ ������
  else
  if PtInRegion(RegionM2, X, Y)=true then // ���� ����� ��������� � ������� ������� 2
  form1.Image1.Cursor:=crSizeNESW // ������ ������
  else
  if PtInRegion(RegionM3, X, Y)=true then // ���� ����� ��������� � ������� ������� 3
  form1.Image1.Cursor:=crSizeNESW // ������ ������
  else
  if PtInRegion(RegionM4, X, Y)=true then // ���� ����� ��������� � ������� ������� 4
  form1.Image1.Cursor:=crSizeNWSE // ������ ������
  else
  if PtInRegion(RegionM5, X, Y)=true then // ���� ����� ��������� � ������� ������� 5
  form1.Image1.Cursor:=crSizeNS // ������ ������
  else
  if PtInRegion(RegionM6, X, Y)=true then // ���� ����� ��������� � ������� ������� 6
  form1.Image1.Cursor:=crSizeWE // ������ ������
  else
  if PtInRegion(RegionM7, X, Y)=true then // ���� ����� ��������� � ������� ������� 7
  form1.Image1.Cursor:=crSizeWE // ������ ������
  else
  if PtInRegion(RegionM8, X, Y)=true then // ���� ����� ��������� � ������� ������� 8
  form1.Image1.Cursor:=crSizeNS // ������ ������
  else
  if PtInRegion(RegionPlanBox, X, Y)=true then // ���� ����� ��������� � ����� �����
  form1.Image1.Cursor:=crSizeAll // ������ ������
  else // ���� ����� �� � ����� �� ��������
  form1.Image1.Cursor:=crDefault; // ������ ������ �� �������
end;

function PlanSizing(X, Y: integer): integer;
begin
  if PtInRegion(RegionM1, X, Y)=true then // ���� ����� ��������� � ������� ������� 1
  PlanSizing:=1 // ��������� ������ ������ 1
  else
  if PtInRegion(RegionM2, X, Y)=true then // ���� ����� ��������� � ������� ������� 2
  PlanSizing:=2 // ��������� ������ ������ 2
  else
  if PtInRegion(RegionM3, X, Y)=true then // ���� ����� ��������� � ������� ������� 3
  PlanSizing:=3 // ��������� ������ ������ 3
  else
  if PtInRegion(RegionM4, X, Y)=true then // ���� ����� ��������� � ������� ������� 4
  PlanSizing:=4 // ��������� ������ ������ 4
  else
  if PtInRegion(RegionM5, X, Y)=true then // ���� ����� ��������� � ������� ������� 5
  PlanSizing:=5 // ��������� ������ ������ 5
  else
  if PtInRegion(RegionM6, X, Y)=true then // ���� ����� ��������� � ������� ������� 6
  PlanSizing:=6 // ��������� ������ ������ 6
  else
  if PtInRegion(RegionM7, X, Y)=true then // ���� ����� ��������� � ������� ������� 7
  PlanSizing:=7 // ��������� ������ ������ 7
  else
  if PtInRegion(RegionM8, X, Y)=true then // ���� ����� ��������� � ������� ������� 8
  PlanSizing:=8 // ��������� ������ ������ 8
  else
  PlanSizing:=0 // ��������� ������ �� ������
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  PlanSizingNM:=PlanSizing(X, Y); // ��������� ������ ������� ��������� �����
  if PlanSizingNM<>0 then // ���� ����� ������� ��������� ����� �� 0
  begin
    DX:=X;
    DY:=Y;
    DW:=Plan[ItemIndex].Wp;
    DH:=Plan[ItemIndex].Hp;
  end
  else
  if PtInRegion(RegionPlanBox, X, Y)=true then // ���� ����� � ����� �����
  begin
    DX:=X-Plan[ItemIndex].DX;
    DY:=Y-Plan[ItemIndex].DY;
    PMove:=true;
  end;
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

  if PlanSizingNM<>0 then // ���� ����� ������� ��������� ����� �� 0
  begin
    Plan[ItemIndex].Bit.Width:=Plan[ItemIndex].Wp; // ������ ����������� ����� ����������� ������ �����
    Plan[ItemIndex].Bit.Height:=Plan[ItemIndex].Hp; // ������ ����������� ����� ����������� ������ �����
    PMove:=false; // ���� �� ����������
    PlanSizingNM:=0; // ������ ����� �� ������
    TextToBit(Plan[ItemIndex].Bit, form1.Memo1.Text); // ��������� ����� �� ����
  end;

  // �������� ������ �����
  RegionPlanBox:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX-1, Plan[ItemIndex].DY-1, Plan[ItemIndex].Wp+Plan[ItemIndex].DX+1, Plan[ItemIndex].Hp+Plan[ItemIndex].DY+1));
  // �������� ������� �������� 
  RegionM1:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX-2, Plan[ItemIndex].DY-2, Plan[ItemIndex].DX+2, Plan[ItemIndex].DY+2));
  RegionM2:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX+Plan[ItemIndex].Wp-2, Plan[ItemIndex].DY-2, Plan[ItemIndex].DX+Plan[ItemIndex].Wp+2, Plan[ItemIndex].DY+2));
  RegionM3:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX-2, Plan[ItemIndex].DY+Plan[ItemIndex].Hp-2, Plan[ItemIndex].DX+2, Plan[ItemIndex].DY+Plan[ItemIndex].Hp+2));
  RegionM4:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX+Plan[ItemIndex].Wp-2, Plan[ItemIndex].DY+Plan[ItemIndex].Hp-2, Plan[ItemIndex].DX+Plan[ItemIndex].Wp+2, Plan[ItemIndex].DY+Plan[ItemIndex].Hp+2));
  RegionM5:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX+round(+Plan[ItemIndex].Wp/2)-2, Plan[ItemIndex].DY-2, Plan[ItemIndex].DX+round(+Plan[ItemIndex].Wp/2)+2, Plan[ItemIndex].DY+2));
  RegionM6:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX+Plan[ItemIndex].Wp-2, Plan[ItemIndex].DY+round(+Plan[ItemIndex].Hp/2)-2, Plan[ItemIndex].DX+Plan[ItemIndex].Wp+2, Plan[ItemIndex].DY+round(+Plan[ItemIndex].Hp/2)+2));
  RegionM7:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX-2, Plan[ItemIndex].DY+round(+Plan[ItemIndex].Hp/2)-2, Plan[ItemIndex].DX+2, Plan[ItemIndex].DY+round(+Plan[ItemIndex].Hp/2)+2));
  RegionM8:=CreateRectRgnIndiRect(Rect(Plan[ItemIndex].DX+round(+Plan[ItemIndex].Wp/2)-2, Plan[ItemIndex].DY+Plan[ItemIndex].Hp-2, Plan[ItemIndex].DX+round(+Plan[ItemIndex].Wp/2)+2, Plan[ItemIndex].DY+Plan[ItemIndex].Hp+2));

  PMove:=false; // ���� �� ����������
  PlanSizingNM:=0; // ������ ����� �� ������
  DrawPlans; // ������������ ����
end;

function SelectRect(Bit: TBitmap; SelX, SelY: integer): TRect; // ������� ������������� � ������� ����� ������ ������
var
  X, Y, SPosX, SPosY, EPosX, EPosY: Integer;
  TP, BP, RP, LP: Boolean;
begin
  SPosX:=SelX; // ��������� ����� ������ �� X
  SPosY:=SelY; // ��������� ����� ������ �� Y
  EPosX:=SPosX+1; // ���������� �������� ����� �� X ������ ��������� �� 1
  EPosY:=SPosY+1; // ���������� �������� ����� �� Y ������ ��������� �� 1
  TP:=true; // ���� ����� �����
  BP:=true; // ���� ����� �����
  RP:=true; // ���� ����� ������
  LP:=true; // ���� ����� �����
  X:=SPosX; // ����� ��� ������ ������ �� X
  Y:=SPosY; // ����� ��� ������ ������ �� Y
  while ((TP=true)or(BP=true)or(RP=true)or(LP=true))and(Y<>form1.Image1.Height)and(X<>form1.Image1.Width) do // ���� ���� ����� �� �� ����� � �� ������ ������ ���� ����������� �� ���������� ������
  begin
    //����
    TP:=false; // ��� ������� �����
    X:=SPosX; // ����� ��� ������ ������
    while (TP=false)and(X<EPosX) do // ���� ��� ����� � X ������ �������� ����� ������
    begin
      if (Bit.Canvas.Pixels[X, SPosY]<>clWhite)and(SPosY>0) then // ���� ����� �� ����� � ��������� ����� �� Y ������ 0
      begin
        TP:=true; // ���� ����� ������
        dec(SPosY); // ��������� ��������� ����� �� Y
      end
      else // � ������ ������
      inc(X); // ����������� X
    end;
    //���
    BP:=false;
    X:=SPosX;
    while (BP=false)and(X<EPosX) do
    begin
      if (Bit.Canvas.Pixels[X, EPosY]<>clWhite)and(EPosY<Bit.Height) then
      begin
        BP:=true;
        inc(EPosY);
      end
      else
      inc(X);
    end;
    //�����
    RP:=false;
    Y:=SPosY;
    while (RP=false)and(Y<EPosY) do
    begin
      if (Bit.Canvas.Pixels[EPosX, Y]<>clWhite)and(EPosX<Bit.Width) then
      begin
        RP:=true;
        inc(EPosX);
      end
      else
      inc(Y);
    end;
    //����
    LP:=false;
    Y:=SPosY;
    while (LP=false)and(Y<EPosY) do
    begin
      if (Bit.Canvas.Pixels[SPosX, Y]<>clWhite)and(SPosX>0) then
      begin
        LP:=true;
        dec(SPosX);
      end
      else
      inc(Y);
    end;
  end;
  // ��������� ��������� 
  result.Left:=SPosX;
  result.Top:=SPosY;
  result.Right:=EPosX+1;
  result.Bottom:=EPosY+1;
end;

function PointMaxMin(p1, p2: TPoint; WInvert: integer; Chetvert: byte): boolean; // ��������� �����
begin
  result:=false;
  case Chetvert of // ����� �������� �������
    1: result:=(sqrt(sqr(WInvert-p1.X)+sqr(p1.Y))<sqrt(sqr(WInvert-p2.X)+sqr(p2.Y)));
    2: result:=(sqrt(sqr(WInvert-p1.X)+sqr(p1.Y))<sqrt(sqr(WInvert-p2.X)+sqr(p2.Y)));
    3: result:=(sqrt(sqr(WInvert-p1.X)+sqr(p1.Y))>sqrt(sqr(WInvert-p2.X)+sqr(p2.Y)));
    4: result:=(sqrt(sqr(WInvert-p1.X)+sqr(p1.Y))>sqrt(sqr(WInvert-p2.X)+sqr(p2.Y)));
  end;
end;

function SelectPoint(bit: tbitmap; SelRect: TRect; Chetvert: byte; dmin, dmax: integer; KT: boolean): TPoint; // ����� �����
var
  i, j, m_i: integer;
  min: TPoint;
  l, t, r, b: boolean;
  l2, t2, r2, b2: boolean;
  p1, p2: boolean;
  mp: array of TPoint; // ������ �����
  WInvert: integer; // ��� ������ ���������� �� ����������� ��� ��������
  HP: integer; // ������ ����� � �������
begin
  result:=point(0, 0);

  case Chetvert of // ��������� ��� ��������� ��������
    1:
      begin
        HP:=round((SelRect.Right-SelRect.Left)*((random(dmax-dmin)+dmin)/100)); // ����������� ������ �����
        HP:=SelRect.Top+HP; // ������ ������� �� �����
        WInvert:=0; // ��� ���������� �� �����������
      end;
    2:
      begin
        HP:=round((SelRect.Right-SelRect.Left)*((random(dmax-dmin)+dmin)/100)); // ����������� ������ �����
        HP:=SelRect.Top+HP; // ������ ������� �� �����
        WInvert:=bit.Width; // ��� ���������� �� ��������
      end;
    3:
      begin
        HP:=round((SelRect.Right-SelRect.Left)*((random(dmax-dmin)+dmin)/100)); // ����������� ������ �����
        HP:=SelRect.Bottom-HP; // ������ ������� �� ����
        WInvert:=0; // ��� ���������� �� �����������
      end;
    4:
      begin
        HP:=round((SelRect.Right-SelRect.Left)*((random(dmax-dmin)+dmin)/100)); // ����������� ������ �����
        HP:=SelRect.Bottom-HP; // ������ ������� �� ����
        WInvert:=bit.Width; // ��� ���������� �� ��������
      end;
  end;

  l:=false;
  t:=false;
  r:=false;
  b:=false;
  l2:=false;
  t2:=false;
  r2:=false;
  b2:=false;
  p1:=false;
  p2:=false;
  if KT then // ���� ���� �������� �����
  begin
    for j:=SelRect.Top to SelRect.Bottom do // ������ �� ���������
    begin
      for i:=SelRect.Left to SelRect.Right do // ������ �� �����������
      begin
        if (bit.Canvas.Pixels[i, j]<>clWhite) then // ���� ������ �� �����
        begin
          if ((bit.Canvas.Pixels[i-1, j+1]<>clWhite)or(bit.Canvas.Pixels[i-1, j]<>clWhite)) then // ���� ������-����� � ����� ������ �� �����
          l:=true;
          if ((bit.Canvas.Pixels[i-1, j-1]<>clWhite)or(bit.Canvas.Pixels[i, j-1]<>clWhite)) then // ���� �������-����� � ������� ������ �� �����
          t:=true;
          if ((bit.Canvas.Pixels[i+1, j-1]<>clWhite)or(bit.Canvas.Pixels[i+1, j]<>clWhite)) then // ���� �������-������ � ������ ������ �� �����
          r:=true;
          if ((bit.Canvas.Pixels[i+1, j+1]<>clWhite)or(bit.Canvas.Pixels[i, j+1]<>clWhite)) then // ���� ������-������ � ������ ������ �� �����
          b:=true;
          if ((bit.Canvas.Pixels[i-1, j-1]<>clWhite)or(bit.Canvas.Pixels[i-1, j]<>clWhite)) then // ���� ������-������� � ����� ������ �� �����
          l2:=true;
          if ((bit.Canvas.Pixels[i+1, j-1]<>clWhite)or(bit.Canvas.Pixels[i, j-1]<>clWhite)) then // ���� �������-������ � ������� ������ �� �����
          t2:=true;
          if ((bit.Canvas.Pixels[i+1, j+1]<>clWhite)or(bit.Canvas.Pixels[i+1, j]<>clWhite)) then // ���� ������-������ � ������ ������ �� �����
          r2:=true;
          if ((bit.Canvas.Pixels[i-1, j+1]<>clWhite)or(bit.Canvas.Pixels[i, j+1]<>clWhite)) then // ���� ������-����� � ������� ������ �� �����
          b2:=true;
          p1:={l}((r=true)and((t=false)and(l=false)and(b=false)))or{t}((b=true)and((t=false)and(l=false)and(r=false)))or{r}((l=true)and((t=false)and(r=false)and(b=false)))or{b}((t=true)and((l=false)and(r=false)and(b=false))); // ������ ����� �� ������� ��������
          p2:={l}((r2=true)and((t2=false)and(l2=false)and(b2=false)))or{t}((b2=true)and((t2=false)and(l2=false)and(r2=false)))or{r}((l2=true)and((t2=false)and(r2=false)and(b2=false)))or{b}((t2=true)and((l2=false)and(r2=false)and(b2=false))); // ���� �� ����� �� ������� ��������
          if p1 or p2 then // ���� ����� ���� �� ������ �� �������� �� ��������� �� � ������
          begin
            setlength(mp, length(mp)+1);
            mp[length(mp)-1]:=point(i, j);
          end;
          l:=false;
          t:=false;
          r:=false;
          b:=false;
          l2:=false;
          t2:=false;
          r2:=false;
          b2:=false;
          p1:=false;
          p2:=false;
        end;
      end;
    end;
  end
  else // ���� ���� �� �������� �����
  begin
    if Chetvert in [1, 4] then // ���� ������� �������� 1 ��� 4
    begin
      i:=SelRect.Left;
      while (i<=SelRect.Right)and(bit.Canvas.Pixels[i, HP]=clWhite) do // ���� ����� �� �������� ������
      begin
        inc(i);
      end;
    end
    else
    if Chetvert in [2, 3] then // ���� ������� �������� 2 ��� 3
    begin
      i:=SelRect.Right;
      while (i>=SelRect.Left)and(bit.Canvas.Pixels[i, HP]=clWhite) do // ���� ����� �� �������� ������
      begin
        dec(i);
      end;
    end;
    result:=point(i, HP); // ��������� ���������
  end;

  for j:=0 to length(mp)-2 do // ���������� �����
  begin
    min:=mp[j];
    m_i:=j;
    for i:=j+1 to length(mp)-1 do
    if PointMaxMin(mp[i], min, WInvert, Chetvert) then // ��������� �����
    begin
      min:=mp[i];
      m_i:=i;
      mp[m_i]:=mp[j];
      mp[j]:=min;
    end;
  end;

  if KT then // ���� ������ �������� �����
  if length(mp)>0 then // ���� � ������ ���� �����
  begin
    result:=mp[0]; // ��������� ���������
  end
  else // ���� � ������ ��� �����
  begin
    Showmessage('�������� ����� �� �������');
  end;
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
var
  R: TRect;
  i, j: integer;
  P: TPoint;
begin
  i:=0;
  j:=Simb.Height-1;
  while (Simb.Canvas.Pixels[i, j]=clWhite)and((i<Simb.Width-1) and (j>0)) do // ���� ������ ������ ����� �������
  begin
    inc(i);
    if i>=Simb.Width-1 then
    begin
      dec(j);
      i:=0;
    end;
  end;
  R:=SelectRect(Simb, i, j); // �������� ������������� �������

  // ����� ��������� ����� ����������
  if not (np in [48..57, 65..90, 192..223]) then //0..9, A..Z, �..�
  begin
    if (np in [97, 99, 100, 103, 107, 109, 110, 113, 116]) then //a, c, d, g, k, m, n, q, t
    begin
      SimbDat[np].Lp:=SelectPoint(Simb, R, 1, 70, 80, false); // ����� ����� ������-�����
    end
    else
    if (np in [101, 118, 119, 122, 121, 114, 117, 108, 104, 120]) then //e, v, w, z, y, r, u, l, h, x
    begin
      SimbDat[np].Lp:=SelectPoint(Simb, R, 1, 70, 80, true); // ����� �������� ����� ������-�����
    end
    else
    if (np in [111, 112, 115]) then //o, p, s
    begin
      SimbDat[np].Lp:=SelectPoint(Simb, R, 1, 30, 60, false); // ����� ����� ������-�����
    end
    else
    if (np in [102, 105, 106]) then //f, i, j
    begin
      SimbDat[np].Lp:=SelectPoint(Simb, R, 1, 60, 70, false); // ����� ����� ������-�����
    end
    else
    if (np in [227, 229..232, 234, 237, 239, 240, 242, 243, 245..249, 251]) then //�, �, �, �, �, �, �, �, �, �, �, �, �, �, �, �, �
    begin
      SimbDat[np].Lp:=SelectPoint(Simb, R, 1, 15, 35, true); // ����� �������� ����� ������-�����
    end
    else
    if (np in [224, 228, 241]) then //�, �, �
    begin
      SimbDat[np].Lp:=SelectPoint(Simb, R, 1, 15, 35, false); // ����� ����� ������-�����
    end
    else
    if (np in [226, 250, 252, 253, 254]) then //�, �, �, �, �
    begin
      SimbDat[np].Lp:=SelectPoint(Simb, R, 1, 15, 35, true); // ����� �������� ����� ������-�����
    end
    else
    if (np in [225, 238, 244]) then //�, �, �
    begin
      SimbDat[np].Lp:=SelectPoint(Simb, R, 1, 15, 35, false); // ����� ����� ������-�����
    end
    else
    if (np in [235, 236, 255]) then //�, �, �
    begin
      SimbDat[np].Lp:=SelectPoint(Simb, R, 4, 15, 35, true); // ����� �������� ����� �����-�����
    end
    else
    begin
      SimbDat[np].Lp:=SelectPoint(Simb, R, 1, 15, 35, false); // ����� ����� ������-�����
    end;
  end
  else
  SimbDat[np].Lp:=point(0, 0);

  // ����� �������� ����� ����������
  if not (np in [48..57]) then //0..9
  begin
    if (np in [65, 67, 69, 72, 71, 75, 76, 77, 78, 81, 82, 85, 88, 90]) then //A, C, E, H, G, K, L, M, N, Q, R, U, X, Z
    begin
      SimbDat[np].Rp:=SelectPoint(Simb, R, 3, 10, 30, true); // ����� �������� ����� �����-������
    end
    else
    if (np in [66, 68, 79, 80, 73, 74, 89, 83, 87, 86, 70]) then //B, D, O, P, I, J, Y, S, W, V, F
    begin
      SimbDat[np].Rp:=SelectPoint(Simb, R, 3, 10, 20, false); // ����� ����� �����-������
    end
    else
    if (np in [98]) then //b
    begin
      SimbDat[np].Rp:=SelectPoint(Simb, R, 3, 10, 30, false); // ����� ����� �����-������
    end
    else
    if (np in [101, 118, 119, 122, 121, 114, 117, 108, 104, 120]) then //e, v, w, z, y, r, u, l, h, x
    begin
      SimbDat[np].Rp:=SelectPoint(Simb, R, 3, 10, 30, true); // ����� �������� ����� �����-������
    end
    else
    if (np in [111, 112, 115]) then //o, p, s
    begin
      SimbDat[np].Rp:=SelectPoint(Simb, R, 3, 30, 60, false); // ����� ����� �����-������
    end
    else
    if (np in [102, 105, 106]) then //f, i, j
    begin
      SimbDat[np].Rp:=SelectPoint(Simb, R, 3, 10, 40, false); // ����� ����� �����-������
    end
    else
    if (np in [192, 197, 198, 200..205, 207, 209, 210, 213..217, 223]) then //�, �, �, �, �, �, �, �, �, �, �, �, �, �, �, �, �, �, �
    begin
      SimbDat[np].Rp:=SelectPoint(Simb, R, 3, 15, 35, true); // ����� �������� ����� �����-������
    end
    else
    if (np in [193..196, 199, 206, 208, 211, 212, 221, 222]) then //�, �, �, �, �, �, �, �, �, �, �
    begin
      SimbDat[np].Rp:=SelectPoint(Simb, R, 3, 10, 40, false); // ����� ����� �����-������
    end
    else
    if (np in [227, 229..232, 234, 237, 239, 240, 242, 243, 245..249, 251]) then //�, �, �, �, �, �, �, �, �, �, �, �, �, �, �, �, �
    begin
      SimbDat[np].Rp:=SelectPoint(Simb, R, 3, 15, 35, true); // ����� �������� ����� �����-������
    end
    else
    if (np in [224, 228, 241]) then //�, �, �
    begin
      SimbDat[np].Rp:=SelectPoint(Simb, R, 3, 15, 35, true); // ����� �������� ����� �����-������
    end
    else
    if (np in [226, 250, 252, 253, 254]) then //�, �, �, �, �
    begin
      SimbDat[np].Rp:=SelectPoint(Simb, R, 3, 15, 35, false); // ����� ����� �����-������
    end
    else
    if (np in [225, 238, 244]) then //�, �, �
    begin
      SimbDat[np].Rp:=SelectPoint(Simb, R, 3, 15, 35, false); // ����� ����� �����-������
    end
    else
    if (np in [235, 236, 255]) then //�, �, �
    begin
      SimbDat[np].Rp:=SelectPoint(Simb, R, 3, 15, 35, true); // ����� �������� ����� �����-������
    end
    else
    begin
      SimbDat[np].Rp:=SelectPoint(Simb, R, 3, 15, 35, false); // ����� ����� �����-������
    end;
  end
  else
  SimbDat[np].Rp:=point(0, 0);

  Simb.Canvas.Pen.Color:=clBlack;
  MinDrawMax(31, 31, 32, true);
  DrawS(np, form1.SpeedButton8.Down);
  SimbModif:=form1.Image3.Picture.Graphic.Modified;
end;

procedure TForm1.Action17Execute(Sender: TObject);
begin
  form4.RadioGroup1.ItemIndex:=0;
  form1.Image1.SetBounds(5, 5, round(5*96/2.54), round(9*96/2.54)); //�������
  NewMaket;
  if not form1.Action20.Checked then
  RotateMaket;
end;

procedure TForm1.Action18Execute(Sender: TObject);
begin
  form4.RadioGroup1.ItemIndex:=1;
  form1.Image1.SetBounds(5, 5, round(10*96/2.54), round(15*96/2.54)); //��������
  NewMaket;
  if not form1.Action20.Checked then
  RotateMaket;
end;

procedure TForm1.Action19Execute(Sender: TObject);
begin
  form4.RadioGroup1.ItemIndex:=2;
  form1.Image1.SetBounds(5, 5, round(7*96/2.54), round(12*96/2.54));  //�����������
  NewMaket;
  if not form1.Action20.Checked then
  RotateMaket;
end;

procedure TForm1.Action20Execute(Sender: TObject);
begin
  if not form1.Action20.Checked then
  begin
    form1.Action20.Checked:=true;
    form1.Action21.Checked:=false;
    RotateMaket;
  end;
end;

procedure TForm1.Action21Execute(Sender: TObject);
begin
  if not form1.Action21.Checked then
  begin
    form1.Action21.Checked:=true;
    form1.Action20.Checked:=false;
    RotateMaket;
  end;
end;

procedure TForm1.Action22Execute(Sender: TObject);
var
  Picture: TPicture;
  i: integer;
begin
  Picture:=TPicture.Create;
  Picture.Bitmap.Width:=form1.Image1.Width;
  Picture.Bitmap.Height:=form1.Image1.Height;
  Picture.Bitmap.Canvas.Brush.Style:=bsSolid;
  Picture.Bitmap.Canvas.FillRect(form1.Image1.ClientRect);
  Picture.Bitmap.Canvas.Draw(0, 0, Fon.Graphic); //��������� ���
  for i:=0 to length(Plan)-1 do
  begin
    TextToBit(Plan[i].Bit, form1.Memo1.Text);
    DrawPlan(Picture.Bitmap, Plan[i], i, false);
  end;
  //210x297
  form6.Show;
  form6.Image1.SetBounds(5, 5, round(21.0*96/2.54), round(29.7*96/2.54));
  BitE.Assign(Picture.Bitmap);
  form6.CreatePage;
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
  MinDrawMax(31, 31, 32, true);
  DrawS(np, form1.SpeedButton8.Down);
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin
  TextToBit(Plan[ItemIndex].Bit, form1.Memo1.Text);
  DrawPlans;
end;

procedure TForm1.Image5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  SelSimbol(x, y, 1, form1.Image5);
  Simb.Canvas.FillRect(rect(0, 0, 64, 64));
  Simb.Canvas.Draw(32-(SimbDat[np].Simb.Width div 2), 0, SimbDat[np].Simb);
  if (SimbDat[np].Lp.X<>0)and(SimbDat[np].Lp.Y<>0) then
  SimbDat[np].Lp.X:=SimbDat[np].Lp.X+32-(SimbDat[np].Simb.Width div 2);
  if (SimbDat[np].Rp.X<>0)and(SimbDat[np].Rp.Y<>0) then
  SimbDat[np].Rp.X:=SimbDat[np].Rp.X+32-(SimbDat[np].Simb.Width div 2);
  MinDrawMax(31, 31, 32, true);
  DrawS(np, form1.SpeedButton8.Down);
  form1.SpeedButton2.Down:=true;
  form1.SpeedButton2Click(self);
end;

procedure TForm1.Image6MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  SelSimbol(x, y, 2, form1.Image6);
  Simb.Canvas.FillRect(rect(0, 0, 64, 64));
  Simb.Canvas.Draw(32-(SimbDat[np].Simb.Width div 2), 0, SimbDat[np].Simb);
  if (SimbDat[np].Lp.X<>0)and(SimbDat[np].Lp.Y<>0) then
  SimbDat[np].Lp.X:=SimbDat[np].Lp.X+32-(SimbDat[np].Simb.Width div 2);
  if (SimbDat[np].Rp.X<>0)and(SimbDat[np].Rp.Y<>0) then
  SimbDat[np].Rp.X:=SimbDat[np].Rp.X+32-(SimbDat[np].Simb.Width div 2);
  MinDrawMax(31, 31, 32, true);
  DrawS(np, form1.SpeedButton8.Down);
  form1.SpeedButton2.Down:=true;
  form1.SpeedButton2Click(self);
end;

procedure TForm1.Image7MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  SelSimbol(x, y, 3, form1.Image7);
  Simb.Canvas.FillRect(rect(0, 0, 64, 64));
  Simb.Canvas.Draw(32-(SimbDat[np].Simb.Width div 2), 0, SimbDat[np].Simb);
  if (SimbDat[np].Lp.X<>0)and(SimbDat[np].Lp.Y<>0) then
  SimbDat[np].Lp.X:=SimbDat[np].Lp.X+32-(SimbDat[np].Simb.Width div 2);
  if (SimbDat[np].Rp.X<>0)and(SimbDat[np].Rp.Y<>0) then
  SimbDat[np].Rp.X:=SimbDat[np].Rp.X+32-(SimbDat[np].Simb.Width div 2);
  MinDrawMax(31, 31, 32, true);
  DrawS(np, form1.SpeedButton8.Down);
  form1.SpeedButton2.Down:=true;
  form1.SpeedButton2Click(self);
end;

procedure TForm1.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  x, y, DXT, DYT, n, NTabl: integer;
  img: ^TImage;
begin
  if form1.Notebook1.ActivePage='Editing' then // ���� ������ �������� �� �������� �� ������� �������
  if Key=VK_TAB then // ���� ������ ������� "TAB"
  begin
    n:=np;

    inc(n);
    if np in [192..255] then // ���� ������ ��������� � �������� ��������
    begin
      n:=n-192; // ��������� � ��������� ������ �� 0
      img:=@form1.Image2; // ������ ��� ��������� �������
      NTabl:=0; // ������� ������� �������� ��������
    end
    else
    if np in [65..90] then // ���� ������ ��������� � ����������� �������� (��������� �����)
    begin
      n:=n-65; // ��������� � ��������� ������ �� 0
      img:=@form1.Image5; // ������ ��� ��������� �������
      NTabl:=1; // ������� ������� ����������� ��������
    end
    else
    if np in [97..122] then // ���� ������ ��������� � ����������� �������� (��������� �����)
    begin
      n:=n-71; // ��������� � ��������� ������ �� 26
      img:=@form1.Image5; // ������ ��� ��������� �������
      NTabl:=1; // ������� ������� ����������� ��������
    end
    else
    if np in [48..57] then // ���� ������ ��������� � �����
    begin
      n:=n-48; // ��������� � ��������� ������ �� 0
      img:=@form1.Image6; // ������ ��� ��������� �������
      NTabl:=2; // ������� ������� ����
    end
    else
    if np in [33..47] then // ���� ������ ��������� � ������������
    begin
      n:=n-33; // ��������� � ��������� ������ �� 0
      img:=@form1.Image7; // ������ ��� ��������� �������
      NTabl:=3; // ������� ������� ������������
    end
    else
    if np in [58..64] then // ���� ������ ��������� � ������������
    begin
      n:=n-43; // ��������� � ��������� ������ �� 15
      img:=@form1.Image7; // ������ ��� ��������� �������
      NTabl:=3; // ������� ������� �����������
    end
    else
    if np in [123..126] then // ���� ������ ��������� � ������������
    begin
      n:=n-101; // ��������� � ��������� ������ �� 22
      img:=@form1.Image7; // ������ ��� ��������� �������
      NTabl:=3; // ������� ������� ������������
    end
    else
    begin
      np:=192;
      n:=0;
      img:=@form1.Image2;
      NTabl:=0;
    end;

    DXT:=272 div 16;
    DYT:=304 div 16;
    X:=(n mod 16)*DXT; // �������� ������� X �� ��������� �������
    Y:=(n div 16)*DYT; // �������� ������� Y �� ��������� �������

    SelSimbol(x, y, NTabl, Img^); // �������� ������ �� ��������� �������
    Simb.Canvas.FillRect(rect(0, 0, 64, 64));
    Simb.Canvas.Draw(32-(SimbDat[np].Simb.Width div 2), 0, SimbDat[np].Simb);
    if (SimbDat[np].Lp.X<>0)and(SimbDat[np].Lp.Y<>0) then
    SimbDat[np].Lp.X:=SimbDat[np].Lp.X+32-(SimbDat[np].Simb.Width div 2);
    if (SimbDat[np].Rp.X<>0)and(SimbDat[np].Rp.Y<>0) then
    SimbDat[np].Rp.X:=SimbDat[np].Rp.X+32-(SimbDat[np].Simb.Width div 2);
    MinDrawMax(31, 31, 32, true);
    DrawS(np, form1.SpeedButton8.Down);
    form1.SpeedButton2.Down:=true;
    form1.SpeedButton2Click(self);
  end;
end;

end.
