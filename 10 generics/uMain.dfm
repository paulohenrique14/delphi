object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 395
  ClientWidth = 696
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
  object LblNome: TLabel
    Left = 504
    Top = 147
    Width = 121
    Height = 13
    AutoSize = False
  end
  object BtnGeneric: TButton
    Left = 80
    Top = 24
    Width = 75
    Height = 25
    Caption = 'BtnGeneric'
    TabOrder = 0
    OnClick = BtnGenericClick
  end
  object BtnGenericTwo: TButton
    Left = 176
    Top = 24
    Width = 75
    Height = 25
    Caption = 'BtnGeneric 2'
    TabOrder = 1
    OnClick = BtnGenericTwoClick
  end
  object BtnGenericTree: TButton
    Left = 272
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Generic3'
    TabOrder = 2
  end
  object BtnLista: TButton
    Left = 368
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Adiciona Lista'
    TabOrder = 3
    OnClick = BtnListaClick
  end
  object Memo1: TMemo
    Left = 304
    Top = 192
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
  end
  object BtnEnum: TButton
    Left = 80
    Top = 55
    Width = 75
    Height = 25
    Caption = 'Enumerador'
    TabOrder = 5
    OnClick = BtnEnumClick
  end
  object EdtNome: TEdit
    Left = 304
    Top = 144
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
  end
  object BtnVerificaNome: TButton
    Left = 423
    Top = 143
    Width = 75
    Height = 23
    Caption = 'Verifica'
    TabOrder = 7
    OnClick = BtnVerificaNomeClick
  end
  object BtnTernario: TButton
    Left = 176
    Top = 55
    Width = 75
    Height = 25
    Caption = 'Tern'#225'rio'
    TabOrder = 8
    OnClick = BtnTernarioClick
  end
  object Button1: TButton
    Left = 272
    Top = 55
    Width = 171
    Height = 25
    Caption = 'Constructor e Constraint'
    TabOrder = 9
    OnClick = Button1Click
  end
  object BtnListaFormulario: TButton
    Left = 80
    Top = 174
    Width = 75
    Height = 25
    Caption = 'TList'
    TabOrder = 10
    OnClick = BtnListaFormularioClick
  end
  object BtnQueue: TButton
    Left = 80
    Top = 205
    Width = 75
    Height = 25
    Caption = 'TQueue'
    TabOrder = 11
    OnClick = BtnQueueClick
  end
  object Button2: TButton
    Left = 80
    Top = 236
    Width = 75
    Height = 25
    Caption = 'TStack'
    TabOrder = 12
    OnClick = Button2Click
  end
  object BtnDictionary: TButton
    Left = 80
    Top = 267
    Width = 75
    Height = 25
    Caption = 'TDictionary'
    TabOrder = 13
    OnClick = BtnDictionaryClick
  end
  object BtnInterfaces: TButton
    Left = 312
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Interfaces '
    TabOrder = 14
    OnClick = BtnInterfacesClick
  end
  object BtnPonteiro: TButton
    Left = 440
    Top = 304
    Width = 129
    Height = 25
    Caption = 'Ponteiros inteligentes'
    TabOrder = 15
    OnClick = BtnPonteiroClick
  end
end
