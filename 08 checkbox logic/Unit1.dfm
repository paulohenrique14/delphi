object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClick = CBRelatorioClick
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 41
    Align = alTop
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 232
    ExplicitTop = 224
    ExplicitWidth = 185
  end
  object RBNota: TRadioButton
    Left = 104
    Top = 176
    Width = 113
    Height = 17
    Caption = 'Imprimir'
    TabOrder = 1
  end
  object RBRelatorio: TRadioButton
    Left = 104
    Top = 264
    Width = 113
    Height = 17
    Caption = 'Imprimir'
    TabOrder = 2
  end
  object CBNota: TCheckBox
    Left = 64
    Top = 144
    Width = 153
    Height = 17
    Caption = 'Imprimir Relat'#243'rio'
    TabOrder = 3
    OnClick = CBRelatorioClick
  end
  object CBRelatorio: TCheckBox
    Left = 64
    Top = 225
    Width = 153
    Height = 17
    Caption = 'Salvar Relat'#243'rio'
    TabOrder = 4
    OnClick = CBRelatorioClick
  end
  object RBCancela: TRadioButton
    Left = 64
    Top = 80
    Width = 153
    Height = 17
    Caption = 'Cancelar opera'#231#227'o'
    Checked = True
    TabOrder = 5
    TabStop = True
    OnClick = RBCancelaClick
  end
end
