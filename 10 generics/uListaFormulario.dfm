object FrmLista: TFrmLista
  Left = 0
  Top = 0
  Caption = 'FrmLista'
  ClientHeight = 299
  ClientWidth = 635
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
  object EdtValor: TEdit
    Left = 40
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'EdtValor'
  end
  object Memo1: TMemo
    Left = 376
    Top = 24
    Width = 185
    Height = 241
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object BtnAdicionar: TButton
    Left = 40
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 2
    OnClick = BtnAdicionarClick
  end
  object BtnListar: TButton
    Left = 40
    Top = 127
    Width = 75
    Height = 25
    Caption = 'Listar'
    TabOrder = 3
    OnClick = BtnListarClick
  end
  object BtnRemover: TButton
    Left = 40
    Top = 95
    Width = 75
    Height = 25
    Caption = 'Remover'
    TabOrder = 4
    OnClick = BtnRemoverClick
  end
  object BtnCapacidade: TButton
    Left = 40
    Top = 158
    Width = 75
    Height = 25
    Caption = 'Capacity'
    TabOrder = 5
    OnClick = BtnCapacidadeClick
  end
  object BtnContar: TButton
    Left = 40
    Top = 189
    Width = 75
    Height = 25
    Caption = 'Count'
    TabOrder = 6
    OnClick = BtnContarClick
  end
  object BtnNotifica: TButton
    Left = 40
    Top = 220
    Width = 75
    Height = 25
    Caption = 'OnNotify'
    TabOrder = 7
    OnClick = BtnNotificaClick
  end
end
