object Form3: TForm3
  Left = 310
  Top = 194
  BorderStyle = bsDialog
  Caption = #1045#1092#1092#1077#1082#1090#1099
  ClientHeight = 227
  ClientWidth = 328
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 245
    Top = 195
    Width = 75
    Height = 25
    Caption = #1054#1050
    ModalResult = 1
    TabOrder = 0
  end
  object Button2: TButton
    Left = 165
    Top = 195
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 5
    Top = 5
    Width = 156
    Height = 86
    Caption = #1055#1088#1099#1075#1072#1102#1097#1080#1077' '#1073#1091#1082#1074#1099
    TabOrder = 2
    object LabeledEdit1: TLabeledEdit
      Left = 15
      Top = 40
      Width = 36
      Height = 21
      EditLabel.Width = 38
      EditLabel.Height = 13
      EditLabel.Caption = #1042#1099#1089#1086#1090#1072
      TabOrder = 0
      Text = '15'
    end
    object UpDown1: TUpDown
      Left = 51
      Top = 40
      Width = 12
      Height = 21
      Associate = LabeledEdit1
      Max = 30
      Position = 15
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 165
    Top = 5
    Width = 156
    Height = 86
    Caption = #1056#1072#1089#1090#1086#1103#1085#1080#1077' '#1084#1077#1078#1076#1091' '#1073#1091#1082#1074#1072#1084#1080
    TabOrder = 3
    object LabeledEdit2: TLabeledEdit
      Left = 15
      Top = 40
      Width = 36
      Height = 21
      EditLabel.Width = 39
      EditLabel.Height = 13
      EditLabel.Caption = #1064#1080#1088#1080#1085#1072
      TabOrder = 0
      Text = '5'
    end
    object UpDown2: TUpDown
      Left = 51
      Top = 40
      Width = 12
      Height = 21
      Associate = LabeledEdit2
      Min = -15
      Max = 15
      Position = 5
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 5
    Top = 100
    Width = 156
    Height = 86
    Caption = #1057#1075#1083#1072#1078#1080#1074#1072#1085#1080#1077
    TabOrder = 4
    object LabeledEdit3: TLabeledEdit
      Left = 15
      Top = 40
      Width = 36
      Height = 21
      EditLabel.Width = 39
      EditLabel.Height = 13
      EditLabel.Caption = #1064#1080#1088#1080#1085#1072
      TabOrder = 0
      Text = '1'
    end
    object UpDown3: TUpDown
      Left = 51
      Top = 40
      Width = 12
      Height = 21
      Associate = LabeledEdit3
      Min = 1
      Max = 15
      Position = 1
      TabOrder = 1
    end
  end
  object GroupBox4: TGroupBox
    Left = 165
    Top = 100
    Width = 156
    Height = 86
    Caption = #1057#1080#1084#1074#1086#1083
    TabOrder = 5
    object LabeledEdit4: TLabeledEdit
      Left = 15
      Top = 40
      Width = 36
      Height = 21
      EditLabel.Width = 56
      EditLabel.Height = 13
      EditLabel.Caption = #1056#1072#1079#1084#1077#1088' (%)'
      TabOrder = 0
      Text = '100'
    end
    object UpDown4: TUpDown
      Left = 51
      Top = 40
      Width = 12
      Height = 21
      Associate = LabeledEdit4
      Min = 1
      Position = 100
      TabOrder = 1
    end
    object LabeledEdit5: TLabeledEdit
      Left = 85
      Top = 40
      Width = 36
      Height = 21
      EditLabel.Width = 36
      EditLabel.Height = 13
      EditLabel.Caption = #1057#1090#1088#1086#1082#1072
      TabOrder = 2
      Text = '64'
    end
    object UpDown5: TUpDown
      Left = 121
      Top = 40
      Width = 12
      Height = 21
      Associate = LabeledEdit5
      Position = 64
      TabOrder = 3
    end
  end
end
