object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Interfaces'
  ClientHeight = 685
  ClientWidth = 1058
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object EdtNome: TEdit
    Left = 208
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EdtSobrenome: TEdit
    Left = 335
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object BtnCriaPessoa: TButton
    Left = 462
    Top = 102
    Width = 75
    Height = 25
    Caption = 'BtnCriaPessoa'
    TabOrder = 2
    OnClick = BtnCriaPessoaClick
  end
  object MemoTexto: TMemo
    Left = 208
    Top = 131
    Width = 329
    Height = 118
    TabOrder = 3
  end
end
