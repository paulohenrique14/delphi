object FrmCadInformacao: TFrmCadInformacao
  Left = 0
  Top = 0
  Caption = 'EnumToList'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BtnMes: TButton
    Left = 345
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Meses'
    TabOrder = 0
    OnClick = BtnMesClick
  end
  object CBInformacao: TComboBox
    Left = 264
    Top = 40
    Width = 156
    Height = 21
    TabOrder = 1
  end
  object BtnDia: TButton
    Left = 264
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Dias'
    TabOrder = 2
    OnClick = BtnDiaClick
  end
end
