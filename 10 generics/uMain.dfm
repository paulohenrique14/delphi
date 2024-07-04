object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object BtnGeneric: TButton
    Left = 160
    Top = 48
    Width = 75
    Height = 25
    Caption = 'BtnGeneric'
    TabOrder = 0
    OnClick = BtnGenericClick
  end
  object BtnGenericTwo: TButton
    Left = 288
    Top = 48
    Width = 75
    Height = 25
    Caption = 'BtnGeneric 2'
    TabOrder = 1
    OnClick = BtnGenericTwoClick
  end
  object BtnGenericTree: TButton
    Left = 160
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Generic3'
    TabOrder = 2
  end
  object BtnLista: TButton
    Left = 312
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Adiciona Lista'
    TabOrder = 3
    OnClick = BtnListaClick
  end
  object Memo1: TMemo
    Left = 224
    Top = 192
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
  end
end
