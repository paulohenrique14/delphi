object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 382
  ClientWidth = 655
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -25
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsStayOnTop
  StyleName = 'Windows'
  TextHeight = 35
  object Label1: TLabel
    Left = 417
    Top = 67
    Width = 17
    Height = 35
    Caption = '='
  end
  object Somar: TButton
    Left = 136
    Top = 168
    Width = 73
    Height = 73
    Caption = '+'
    TabOrder = 0
    OnClick = SomarClick
  end
  object Dividir: TButton
    Left = 373
    Top = 168
    Width = 73
    Height = 73
    Caption = '/'
    TabOrder = 1
    OnClick = DividirClick
  end
  object Multiplicar: TButton
    Left = 294
    Top = 168
    Width = 73
    Height = 73
    Caption = 'x'
    TabOrder = 2
    OnClick = MultiplicarClick
  end
  object Numero1: TEdit
    Left = 136
    Top = 64
    Width = 121
    Height = 43
    TabOrder = 3
  end
  object Numero2: TEdit
    Left = 272
    Top = 64
    Width = 121
    Height = 43
    TabOrder = 4
  end
  object Resposta: TEdit
    Left = 464
    Top = 64
    Width = 121
    Height = 43
    TabOrder = 5
  end
  object Diminuir: TButton
    Left = 213
    Top = 168
    Width = 75
    Height = 73
    Caption = '-'
    TabOrder = 6
    OnClick = DiminuirClick
  end
end