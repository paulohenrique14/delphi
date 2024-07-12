object FrmPilha: TFrmPilha
  Left = 0
  Top = 0
  Caption = 'Pilha'
  ClientHeight = 352
  ClientWidth = 596
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 176
    Top = 40
    Width = 409
    Height = 224
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object BtnPush: TButton
    Left = 24
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Push'
    TabOrder = 1
    OnClick = BtnPushClick
  end
  object EdtValor: TEdit
    Left = 24
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'EdtValor'
  end
  object BtnPop: TButton
    Left = 24
    Top = 111
    Width = 75
    Height = 25
    Caption = 'Pop'
    TabOrder = 3
    OnClick = BtnPopClick
  end
  object BtnExtract: TButton
    Left = 24
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Extract'
    TabOrder = 4
    OnClick = BtnExtractClick
  end
  object BtnPeek: TButton
    Left = 24
    Top = 175
    Width = 75
    Height = 25
    Caption = 'Peek'
    TabOrder = 5
    OnClick = BtnPeekClick
  end
  object BtnCapacity: TButton
    Left = 24
    Top = 239
    Width = 75
    Height = 25
    Caption = 'Capacity'
    TabOrder = 6
    OnClick = BtnCapacityClick
  end
  object BtnCount: TButton
    Left = 24
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Count'
    TabOrder = 7
    OnClick = BtnCountClick
  end
  object BtnExcess: TButton
    Left = 24
    Top = 270
    Width = 75
    Height = 25
    Caption = 'Trim Excess'
    Default = True
    TabOrder = 8
    OnClick = BtnExcessClick
  end
end
