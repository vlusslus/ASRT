object Form1: TForm1
  Left = 192
  Top = 107
  Width = 727
  Height = 500
  Caption = #1056#1091#1082#1086#1087#1080#1089#1085#1099#1081' '#1090#1077#1082#1089#1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object Notebook1: TNotebook
    Left = 0
    Top = 24
    Width = 719
    Height = 430
    Align = alClient
    TabOrder = 0
    object TPage
      Left = 0
      Top = 0
      Caption = 'Default'
      object Splitter1: TSplitter
        Left = 185
        Top = 0
        Height = 389
      end
      object ScrollBox1: TScrollBox
        Left = 188
        Top = 0
        Width = 531
        Height = 389
        HorzScrollBar.Margin = 5
        HorzScrollBar.Tracking = True
        VertScrollBar.Margin = 5
        VertScrollBar.Tracking = True
        Align = alClient
        Color = clBtnShadow
        ParentColor = False
        TabOrder = 0
        object Image1: TImage
          Left = 5
          Top = 5
          Width = 600
          Height = 400
          OnMouseDown = Image1MouseDown
          OnMouseMove = Image1MouseMove
          OnMouseUp = Image1MouseUp
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 389
        Width = 719
        Height = 41
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          719
          41)
        object SpeedButton1: TSpeedButton
          Left = 640
          Top = 10
          Width = 66
          Height = 22
          Anchors = [akTop, akRight]
          Caption = #1055#1077#1088#1077#1074#1086#1076
          OnClick = SpeedButton1Click
        end
      end
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 185
        Height = 389
        Align = alLeft
        Lines.Strings = (
          
            #1057#1098#1077#1096#1100' '#1077#1097#1077' '#1101#1090#1080#1093' '#1084#1103#1075#1082#1080#1093' '#1092#1088#1072#1085#1094#1091#1079#1089#1082#1080#1093' '#1073#1091#1083#1086#1082', '#1076#1072' '#1074#1099#1087#1077#1081' '#1095#1072#1102'. 123456789' +
            '0'
          #1055#1088#1080#1074#1077#1090'! '#1073#1086#1088#1086#1076#1072', '#1092#1077#1085', '#1074#1086#1088#1086#1090#1072
          #1060#1077#1074#1088#1072#1083#1100', '#1092#1086#1085'.')
        ScrollBars = ssBoth
        TabOrder = 2
        OnChange = Memo1Change
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Editing'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 719
        Height = 430
        Align = alClient
        BorderStyle = bsSingle
        TabOrder = 0
        object Image2: TImage
          Left = 5
          Top = 20
          Width = 272
          Height = 76
          OnMouseUp = Image2MouseUp
        end
        object Image3: TImage
          Left = 295
          Top = 65
          Width = 64
          Height = 64
          AutoSize = True
          OnMouseDown = Image3MouseDown
          OnMouseMove = Image3MouseMove
          OnMouseUp = Image3MouseUp
        end
        object SpeedButton2: TSpeedButton
          Left = 295
          Top = 15
          Width = 25
          Height = 25
          GroupIndex = 1
          Down = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00000000000000000000FFFF000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000000000FFFF00FF00FF00C0C0C00000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000000000FFFF00FF00FF00000000000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000000000FF00FF0000FFFF00C0C0C0000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF0000FFFF000000
            000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000FFFF00FF00FF00C0C0
            C00000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000FFFF000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
            BF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            BF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            BF000000BF000000BF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          OnClick = SpeedButton2Click
        end
        object SpeedButton3: TSpeedButton
          Left = 355
          Top = 15
          Width = 25
          Height = 25
          GroupIndex = 1
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF00FF0000FF00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000
            00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF0000000000000000FF0000
            0000000000000000000000000000000000000000FF00FFFF00FFFF00FFFF00FF
            FF00FF00FF0000000000000000FF00FF00FFFF00FFFF00FFFF00FFFF00FF0000
            00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF0000FF00FF00FFFF
            00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          OnClick = SpeedButton3Click
        end
        object SpeedButton4: TSpeedButton
          Left = 380
          Top = 15
          Width = 25
          Height = 25
          GroupIndex = 1
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF0000FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000000000000000000000
            00000000000000FF0000000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FF0000FF0000000000000000
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF
            00FFFF00FFFF00FF0000FF0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          OnClick = SpeedButton4Click
        end
        object SpeedButton5: TSpeedButton
          Left = 475
          Top = 15
          Width = 25
          Height = 25
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF9C917F5E7B795E7B785E7B785E7B785D7A775D
            7A775D7A775D7A775D7A775D7A775C79765C7976968E7EFF00FFFF00FF7C857A
            9FEFFD9EEEFC9DEDFB9DEDFB9CECFA9CECFA9CECFA9BEAF99BEAF99BEAF99BEA
            F99FEFFD6E817AFF00FFFF00FF7C857A9FEFFD92E1F092E1F092E1F092E1F092
            E1F092E2F092E2F092E2F092E2F092E2F09DEDFB6E817AFF00FFFF00FF7C857A
            9FEFFD93E3F193E3F193E3F193E3F193E3F193E3F193E3F193E3F193E3F193E3
            F19EEEFC6E817AFF00FFFF00FF7D857B9FEFFD95E5F395E5F395E5F395E5F395
            E5F395E5F395E5F395E5F395E5F395E5F39FEFFD6F827BFF00FFFF00FF7D857B
            9FEFFD98E7F699E8F799E8F799E8F798E7F698E7F696E6F496E6F496E6F496E6
            F49FEFFD6F827BFF00FFFF00FF7D857B9FEFFD9BEAF99BEAF99BEAF99BEAF99B
            EAF99BEAF999E9F799E8F798E7F699E8F79FEFFD6F827BFF00FFFF00FF7D857B
            9FEFFD9DEDFB9DEDFB9DEDFB9DEDFB9DEDFB9DEDFB9DEDFB9DEDFB9DEDFB9DED
            FB9FEFFD70827BFF00FFFF00FF7D857B9FEFFD9EEEFC9EEEFC9EEEFC9EEEFC9E
            EEFC9EEEFC9EEEFC9EEEFC9EEEFC9EEEFC9FEFFD70827BFF00FFFF00FF7D857B
            9FEFFD9EEEFC9EEEFC9EEEFC9EEEFC9EEEFC9EEEFC9EEEFC9EEEFC9CECFA99E9
            F79FEFFD70827BFF00FFFF00FF7D857B9FEFFD9FEFFD9FEFFD9FEFFD9FEFFD9F
            EFFD9FEFFD9FEFFD7ECDDB81D0DF80CFDD8AD9E871837CFF00FFFF00FF7D857B
            9FEFFD9FEFFD9FEFFD9FEFFD9FEFFD9FEFFD9FEFFD9EEEFC81D0DE92E2F09FEF
            FD6CA5ABA19481FF00FFFF00FF7D857B9FEFFD9FEFFD9FEFFD9FEFFD9FEFFD9F
            EFFD9FEFFD9CECFA83D2E19FEFFD72AAB0A49481FF00FFFF00FFFF00FF7D857A
            9FEFFD9FEFFD9FEFFD9FEFFD9FEFFD9FEFFD9FEFFD9CECFA8AD9E874AEB4A896
            82FF00FFFF00FFFF00FFFF00FF7D857A7D857A7D857A7D857A7D857A7D857A7D
            857A7D857A7D857A7D857AA19481FF00FFFF00FFFF00FFFF00FF}
          OnClick = SpeedButton5Click
        end
        object SpeedButton6: TSpeedButton
          Left = 320
          Top = 15
          Width = 25
          Height = 25
          GroupIndex = 1
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000000000000000000000000000000000000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000BF
            BF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000BF
            BF0000BFBF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000000000FF00FF0000FFFF00FF00FF0000FFFF00FF00FF0000FFFF000000
            000000BFBF0000BFBF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FF00FF0000FFFF00FF00FF0000FFFF00FF00FF0000FF
            FF000000000000BFBF0000BFBF0000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF0000FFFF00FF00FF0000FFFF00FF00
            FF0000FFFF000000000000BFBF0000BFBF0000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000000000FF00FF0000FFFF00FF00FF0000FF
            FF00FF00FF0000FFFF000000000000BFBF0000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF0000FFFF00FF00
            FF0000FFFF00FF00FF0000FFFF000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF0000FF
            FF00FF00FF0000FFFF00FF00FF0000FFFF0000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          OnClick = SpeedButton6Click
        end
        object Image4: TImage
          Left = 365
          Top = 65
          Width = 320
          Height = 320
          OnMouseDown = Image4MouseDown
          OnMouseMove = Image4MouseMove
          OnMouseUp = Image4MouseUp
        end
        object SpeedButton7: TSpeedButton
          Left = 405
          Top = 15
          Width = 25
          Height = 25
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FF0000FF0000FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF0000000000000000000000000000000000000000000000FF0000
            000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF
            00FFFF00FFFF00FFFF00FF0000FF0000000000000000FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FF000000FF00FFFF00FF0000
            FF0000FFFF00FFFF00FFFF00FFFF00FF00FF0000FF00FF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00
            00000000000000FF00000000000000000000000000000000000000000000FF00
            FFFF00FFFF00FFFF00FFFF00FF00FF0000000000000000FF00FF00FFFF00FFFF
            00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            00FF0000FF00FF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FF000000000000FF
            00FFFF00FF000000FF00FFFF00FFFF00FF000000000000FF00FF000000FF00FF
            FF00FF000000FF00FF000000FF00FF000000FF00FF000000FF00FFFF00FF0000
            00FF00FFFF00FF000000FF00FF000000000000000000FF00FF000000000000FF
            00FFFF00FF000000FF00FFFF00FF000000FF00FFFF00FF000000FF00FFFF00FF
            FF00FF000000FF00FF000000FF00FF000000FF00FF000000FF00FFFF00FF0000
            00FF00FFFF00FF000000FF00FF000000000000FF00FFFF00FF000000000000FF
            00FF000000000000000000FF00FFFF00FF000000000000FF00FF}
          OnClick = SpeedButton7Click
        end
        object SpeedButton8: TSpeedButton
          Left = 440
          Top = 15
          Width = 25
          Height = 25
          AllowAllUp = True
          GroupIndex = 2
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF00FFFF
            FFFFFFFFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF00FFFF00FFFFFFFF
            FFFFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF00
            FFFFFFFFFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFF
            FFFFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF00
            FFFFFFFFFFFFFFFF00FFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF00FFFF
            FFFFFFFFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF00FFFF
            FFFFFFFFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF00FFFF00FFFFFFFF
            FFFFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF00
            FFFFFFFFFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFF
            FFFFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF00
            FFFFFFFFFFFFFFFF00FFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF00FFFF
            FFFFFFFFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF00FFFF
            FFFFFFFFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF00FFFF00FFFFFFFF
            FFFFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF00
            FFFFFFFFFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          OnClick = SpeedButton8Click
        end
        object Label1: TLabel
          Left = 5
          Top = 5
          Width = 88
          Height = 13
          Caption = #1056#1091#1089#1089#1082#1080#1081' '#1072#1083#1092#1072#1074#1080#1090
        end
        object Label2: TLabel
          Left = 5
          Top = 105
          Width = 106
          Height = 13
          Caption = #1040#1085#1075#1083#1080#1081#1089#1082#1080#1081' '#1072#1083#1092#1072#1074#1080#1090
        end
        object Label3: TLabel
          Left = 5
          Top = 205
          Width = 36
          Height = 13
          Caption = #1062#1080#1092#1088#1099
        end
        object Label4: TLabel
          Left = 5
          Top = 250
          Width = 66
          Height = 13
          Caption = #1056#1072#1079#1076#1077#1083#1080#1090#1077#1083#1080
        end
        object Image5: TImage
          Left = 5
          Top = 120
          Width = 272
          Height = 76
          OnMouseUp = Image5MouseUp
        end
        object Image6: TImage
          Left = 5
          Top = 220
          Width = 272
          Height = 19
          OnMouseUp = Image6MouseUp
        end
        object Image7: TImage
          Left = 5
          Top = 265
          Width = 272
          Height = 38
          OnMouseUp = Image7MouseUp
        end
      end
    end
  end
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 719
    Height = 24
    UseSystemFont = False
    ActionManager = ActionManager1
    Caption = 'ActionMainMenuBar1'
    ColorMap.HighlightColor = 12495511
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 12495511
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    Spacing = 0
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 454
    Width = 719
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end
      item
        Width = 50
      end
      item
        Width = 50
      end
      item
        Width = 70
      end
      item
        Width = 70
      end
      item
        Width = 70
      end
      item
        Width = 70
      end
      item
        Width = 50
      end>
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Items = <
                  item
                    Action = Action17
                  end
                  item
                    Action = Action18
                  end
                  item
                    Action = Action19
                  end
                  item
                    Caption = '-'
                  end
                  item
                    Action = Action6
                  end>
                Caption = #1057#1086#1079#1076#1072#1090#1100
              end
              item
                Caption = '-'
              end
              item
                Action = Action7
              end
              item
                Action = Action16
              end
              item
                Caption = '-'
              end
              item
                Items = <
                  item
                    Action = Action20
                  end
                  item
                    Action = Action21
                  end>
                Caption = #1054#1088#1080#1077#1085#1090#1072#1094#1080#1103
              end
              item
                Caption = '-'
              end
              item
                Action = Action8
                Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' &JPG'
              end
              item
                Action = Action15
                Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' &PDF'
              end
              item
                Caption = '-'
              end
              item
                Action = Action22
              end
              item
                Caption = '-'
              end
              item
                Action = Action5
              end>
            Caption = #1055#1088#1086#1077#1082#1090
          end
          item
            Items = <
              item
                Action = Action2
              end
              item
                Action = Action1
              end
              item
                Action = Action3
              end
              item
                Action = Action4
              end>
            Caption = #1064#1088#1080#1092#1090
          end
          item
            Items = <
              item
                Action = Action9
              end
              item
                Action = Action10
              end
              item
                Action = Action11
              end
              item
                Caption = '-'
              end
              item
                Action = Action12
              end>
            Caption = #1069#1092#1092#1077#1082#1090#1099
          end
          item
            Items = <
              item
                Action = Action13
              end
              item
                Action = Action14
              end>
            Caption = #1057#1087#1088#1072#1074#1082#1072
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Left = 523
    Top = 49
    StyleName = 'XP Style'
    object Action2: TAction
      Category = #1064#1088#1080#1092#1090
      Caption = #1042#1099#1073#1088#1072#1090#1100
      OnExecute = Action2Execute
    end
    object Action1: TAction
      Category = #1064#1088#1080#1092#1090
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      OnExecute = Action1Execute
    end
    object Action3: TAction
      Category = #1064#1088#1080#1092#1090
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OnExecute = Action3Execute
    end
    object Action4: TAction
      Category = #1064#1088#1080#1092#1090
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Enabled = False
      OnExecute = Action4Execute
    end
    object Action6: TAction
      Category = #1057#1086#1079#1076#1072#1090#1100
      Caption = #1044#1088#1091#1075#1086#1077'...'
      OnExecute = Action6Execute
    end
    object Action7: TAction
      Category = #1055#1088#1086#1077#1082#1090
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1090#1077#1082#1089#1090
      OnExecute = Action7Execute
    end
    object Action16: TAction
      Category = #1055#1088#1086#1077#1082#1090
      Caption = #1060#1086#1085
      OnExecute = Action16Execute
    end
    object Action8: TAction
      Category = #1055#1088#1086#1077#1082#1090
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' JPG'
      OnExecute = Action8Execute
    end
    object Action15: TAction
      Category = #1055#1088#1086#1077#1082#1090
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' PDF'
      OnExecute = Action15Execute
    end
    object Action5: TAction
      Category = #1055#1088#1086#1077#1082#1090
      Caption = #1042#1099#1093#1086#1076
      OnExecute = Action5Execute
    end
    object Action9: TAction
      Category = #1069#1092#1092#1077#1082#1090#1099
      AutoCheck = True
      Caption = #1055#1088#1099#1075#1072#1102#1097#1080#1077' '#1073#1091#1082#1074#1099
      OnExecute = Action9Execute
    end
    object Action10: TAction
      Category = #1069#1092#1092#1077#1082#1090#1099
      AutoCheck = True
      Caption = #1056#1072#1089#1090#1086#1103#1085#1080#1077' '#1084#1077#1078#1076#1091' '#1073#1091#1082#1074#1072#1084#1080
      OnExecute = Action10Execute
    end
    object Action11: TAction
      Category = #1069#1092#1092#1077#1082#1090#1099
      AutoCheck = True
      Caption = #1057#1075#1083#1072#1078#1080#1074#1072#1085#1080#1077
      OnExecute = Action11Execute
    end
    object Action12: TAction
      Category = #1069#1092#1092#1077#1082#1090#1099
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080'...'
      OnExecute = Action12Execute
    end
    object Action13: TAction
      Category = #1057#1087#1072#1074#1082#1072
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      OnExecute = Action13Execute
    end
    object Action14: TAction
      Category = #1057#1087#1072#1074#1082#1072
      Caption = #1055#1086#1084#1086#1097#1100
      OnExecute = Action14Execute
    end
    object Action17: TAction
      Category = #1057#1086#1079#1076#1072#1090#1100
      Caption = #1042#1080#1079#1080#1090#1082#1072
      OnExecute = Action17Execute
    end
    object Action18: TAction
      Category = #1057#1086#1079#1076#1072#1090#1100
      Caption = #1054#1090#1082#1088#1099#1090#1082#1072
      OnExecute = Action18Execute
    end
    object Action19: TAction
      Category = #1057#1086#1079#1076#1072#1090#1100
      Caption = #1055#1088#1080#1075#1083#1072#1096#1077#1085#1080#1077
      OnExecute = Action19Execute
    end
    object Action20: TAction
      Category = #1054#1088#1080#1077#1085#1090#1072#1094#1080#1103
      Caption = #1050#1085#1080#1078#1085#1072#1103
      Checked = True
      OnExecute = Action20Execute
    end
    object Action21: TAction
      Category = #1054#1088#1080#1077#1085#1090#1072#1094#1080#1103
      Caption = #1040#1083#1100#1073#1086#1084#1085#1072#1103
      OnExecute = Action21Execute
    end
    object Action22: TAction
      Category = #1055#1088#1086#1077#1082#1090
      Caption = #1055#1077#1095#1072#1090#1100' '#1080' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077' '#1089#1090#1088#1072#1085#1080#1094#1099
      OnExecute = Action22Execute
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.sim'
    Filter = #1056#1091#1082#1086#1087#1080#1089#1085#1099#1081' '#1096#1088#1080#1092#1090'|*.sim'
    Left = 553
    Top = 49
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.sim'
    Filter = #1056#1091#1082#1086#1087#1080#1089#1085#1099#1081' '#1096#1088#1080#1092#1090'|*.sim'
    Left = 583
    Top = 49
  end
  object SavePictureDialog1: TSavePictureDialog
    DefaultExt = '*.jpg'
    Filter = 
      'All (*.jpg;*.jpeg)|*.jpg;*.jpeg|JPEG Image File (*.jpg)|*.jpg|JP' +
      'EG Image File (*.jpeg)|*.jpeg'
    Left = 613
    Top = 49
  end
  object OpenDialog2: TOpenDialog
    Filter = #1058#1077#1082#1089#1090'|*.txt'
    Left = 553
    Top = 79
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 583
    Top = 79
  end
end
