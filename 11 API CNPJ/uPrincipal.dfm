object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BtnPesquisa: TButton
    Left = 400
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Pesquisa'
    TabOrder = 0
    OnClick = BtnPesquisaClick
  end
  object EdtInscricao: TEdit
    Left = 354
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'EdtInscricao'
  end
end
