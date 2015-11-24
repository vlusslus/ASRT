unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm4 = class(TForm)
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    Button1: TButton;
    Button2: TButton;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    procedure LabeledEdit1Change(Sender: TObject);
    procedure LabeledEdit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.LabeledEdit1Change(Sender: TObject);
begin
  if strtofloat(form4.LabeledEdit1.Text)>30 then
  begin
    showmessage('Должно быть не больше 30');
    Form4.LabeledEdit1.Text:='30';
  end;
end;

procedure TForm4.LabeledEdit2Change(Sender: TObject);
begin
  if strtofloat(form4.LabeledEdit2.Text)>30 then
  begin
    showmessage('Должно быть не больше 30');
    Form4.LabeledEdit2.Text:='30';
  end;
end;

end.
