object Form6: TForm6
  Left = 296
  Top = 227
  Width = 671
  Height = 498
  Caption = #1055#1077#1095#1072#1090#1100' '#1080' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 185
    Top = 0
    Width = 478
    Height = 471
    HorzScrollBar.Margin = 5
    VertScrollBar.Margin = 5
    Align = alClient
    TabOrder = 0
    object Image1: TImage
      Left = 5
      Top = 5
      Width = 105
      Height = 105
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 471
    Align = alLeft
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 45
      Top = 220
      Width = 91
      Height = 26
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' PDF'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 45
      Top = 315
      Width = 91
      Height = 26
      Caption = #1055#1077#1095#1072#1090#1100
      OnClick = SpeedButton2Click
    end
    object CheckBox1: TCheckBox
      Left = 10
      Top = 10
      Width = 97
      Height = 17
      Caption = #1056#1072#1084#1082#1072
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object RadioGroup1: TRadioGroup
      Left = 5
      Top = 95
      Width = 175
      Height = 105
      Caption = #1047#1072#1087#1086#1083#1085#1077#1085#1080#1077
      ItemIndex = 0
      Items.Strings = (
        #1054#1076#1080#1085' '#1101#1083#1077#1084#1077#1085#1090
        #1056#1091#1095#1085#1086#1081' '#1074#1099#1073#1086#1088
        #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1074#1089#1102' '#1089#1090#1088#1072#1085#1080#1094#1091)
      TabOrder = 1
      OnClick = RadioGroup1Click
    end
    object LabeledEdit1: TLabeledEdit
      Left = 10
      Top = 55
      Width = 61
      Height = 21
      EditLabel.Width = 92
      EditLabel.Height = 13
      EditLabel.Caption = #1050#1086#1083'-'#1074#1086' '#1101#1083#1077#1084#1077#1085#1090#1086#1074
      TabOrder = 2
      Text = '1'
    end
    object UpDown1: TUpDown
      Left = 71
      Top = 55
      Width = 12
      Height = 21
      Associate = LabeledEdit1
      Min = 1
      Position = 1
      TabOrder = 3
      OnClick = UpDown1Click
    end
    object LabeledEdit2: TLabeledEdit
      Left = 10
      Top = 275
      Width = 56
      Height = 21
      EditLabel.Width = 68
      EditLabel.Height = 13
      EditLabel.Caption = #1050#1086#1087#1080#1081' '#1087#1077#1095#1072#1090#1080
      TabOrder = 4
      Text = '1'
    end
    object UpDown2: TUpDown
      Left = 66
      Top = 275
      Width = 12
      Height = 21
      Associate = LabeledEdit2
      Min = 1
      Position = 1
      TabOrder = 5
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 'PDF|*.pdf'
    Left = 145
    Top = 10
  end
end
