object Form1: TForm1
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Tex'
  ClientHeight = 524
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -25
  Font.Name = 'Segoe UI'
  Font.Style = []
  Visible = True
  TextHeight = 35
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 628
    Height = 524
    Align = alTop
    Alignment = taCenter
    Caption = 'IMC CALCULATOR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -25
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ExplicitTop = 40
  end
  object Label2: TLabel
    Left = 40
    Top = 144
    Width = 52
    Height = 35
    Alignment = taCenter
    Caption = 'Peso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -25
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 232
    Width = 66
    Height = 35
    Alignment = taCenter
    Caption = 'Altura'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -25
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Peso: TEdit
    Left = 216
    Top = 144
    Width = 273
    Height = 43
    TabOrder = 0
  end
  object Altura: TEdit
    Left = 216
    Top = 232
    Width = 273
    Height = 43
    TabOrder = 1
  end
  object Button1: TButton
    Left = 40
    Top = 312
    Width = 449
    Height = 49
    Caption = 'Calcular'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -25
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Resposta: TEdit
    Left = 40
    Top = 384
    Width = 449
    Height = 43
    Alignment = taCenter
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -25
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
end