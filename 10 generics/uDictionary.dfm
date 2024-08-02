object FrmDictionary: TFrmDictionary
  Left = 0
  Top = 0
  Caption = 'FrmDictionary'
  ClientHeight = 451
  ClientWidth = 634
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
    Left = 209
    Top = 48
    Width = 418
    Height = 395
    TabOrder = 0
  end
  object EdtCPF: TEdit
    Left = 255
    Top = 21
    Width = 139
    Height = 21
    TabOrder = 1
  end
  object EdtNome: TEdit
    Left = 400
    Top = 21
    Width = 227
    Height = 21
    TabOrder = 2
  end
  object EdtCodigo: TEdit
    Left = 209
    Top = 21
    Width = 40
    Height = 21
    TabOrder = 3
  end
  object Add: TButton
    Left = 16
    Top = 21
    Width = 169
    Height = 25
    Caption = 'Add'
    TabOrder = 4
    OnClick = AddClick
  end
  object BtnTryGetValue: TButton
    Left = 16
    Top = 52
    Width = 169
    Height = 25
    Caption = 'TryGetValue'
    TabOrder = 5
    OnClick = BtnTryGetValueClick
  end
  object BtnRemove: TButton
    Left = 16
    Top = 85
    Width = 169
    Height = 25
    Caption = 'Remove'
    TabOrder = 6
    OnClick = BtnRemoveClick
  end
  object BtnTrim: TButton
    Left = 16
    Top = 116
    Width = 169
    Height = 25
    Caption = 'Trim Excess'
    TabOrder = 7
    OnClick = BtnTrimClick
  end
  object BtnContainsKey: TButton
    Left = 16
    Top = 149
    Width = 169
    Height = 25
    Caption = 'Contains Key'
    TabOrder = 8
    OnClick = BtnContainsKeyClick
  end
  object BtnContainsValue: TButton
    Left = 16
    Top = 180
    Width = 169
    Height = 25
    Caption = 'Contains Value'
    TabOrder = 9
    OnClick = BtnContainsValueClick
  end
  object BtnAddOrSetValue: TButton
    Left = 16
    Top = 213
    Width = 169
    Height = 25
    Caption = 'Add or SetValue'
    TabOrder = 10
    OnClick = BtnAddOrSetValueClick
  end
  object BtnListaKey: TButton
    Left = 16
    Top = 244
    Width = 169
    Height = 25
    Caption = 'ListaKey'
    TabOrder = 11
    OnClick = BtnListaKeyClick
  end
  object BtnOnValueNotify: TButton
    Left = 16
    Top = 372
    Width = 169
    Height = 25
    Caption = 'OnValueNotify'
    TabOrder = 12
    OnClick = BtnOnValueNotifyClick
  end
  object BtnOnKeyNotify: TButton
    Left = 16
    Top = 341
    Width = 169
    Height = 25
    Caption = 'OnKeyNotify'
    TabOrder = 13
    OnClick = BtnOnKeyNotifyClick
  end
  object BtnClear: TButton
    Left = 16
    Top = 308
    Width = 169
    Height = 25
    Caption = 'Clear'
    TabOrder = 14
    OnClick = BtnClearClick
  end
  object BtnListaValues: TButton
    Left = 16
    Top = 277
    Width = 169
    Height = 25
    Caption = 'ListaValues'
    TabOrder = 15
    OnClick = BtnListaValuesClick
  end
end
