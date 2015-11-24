object Form4: TForm4
  Left = 352
  Top = 233
  Width = 326
  Height = 230
  Caption = 'Form4'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 300
    Top = 30
    Width = 14
    Height = 13
    Caption = #1089#1084
  end
  object Label2: TLabel
    Left = 300
    Top = 70
    Width = 14
    Height = 13
    Caption = #1089#1084
  end
  object LabeledEdit1: TLabeledEdit
    Left = 230
    Top = 25
    Width = 66
    Height = 21
    EditLabel.Width = 39
    EditLabel.Height = 13
    EditLabel.Caption = #1064#1080#1088#1080#1085#1072
    TabOrder = 0
    OnChange = LabeledEdit1Change
  end
  object LabeledEdit2: TLabeledEdit
    Left = 230
    Top = 65
    Width = 66
    Height = 21
    EditLabel.Width = 38
    EditLabel.Height = 13
    EditLabel.Caption = #1042#1099#1089#1086#1090#1072
    TabOrder = 1
    OnChange = LabeledEdit2Change
  end
  object Button1: TButton
    Left = 235
    Top = 170
    Width = 75
    Height = 25
    Caption = #1054#1050
    ModalResult = 1
    TabOrder = 2
  end
  object Button2: TButton
    Left = 155
    Top = 170
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 3
  end
  object RadioGroup1: TRadioGroup
    Left = 5
    Top = 5
    Width = 211
    Height = 151
    Caption = #1064#1072#1073#1083#1086#1085#1099
    ItemIndex = 3
    Items.Strings = (
      '- '#1042#1080#1079#1080#1090#1082#1072' (5 '#1085#1072' 9 '#1089#1084')'
      '- '#1054#1090#1082#1088#1099#1090#1082#1072' (10 '#1085#1072' 15 '#1089#1084')'
      '- '#1055#1088#1080#1075#1083#1072#1096#1077#1085#1080#1077' (7 '#1085#1072' 12 '#1089#1084')'
      '- '#1055#1088#1086#1080#1079#1074#1086#1083#1100#1085#1099#1081)
    TabOrder = 4
  end
end
