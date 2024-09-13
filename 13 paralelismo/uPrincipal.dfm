object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'FrmPrincipal'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 225
    Top = 32
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Button1: TButton
    Left = 72
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 1
  end
  object Button4: TButton
    Left = 336
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Button4'
    TabOrder = 2
    OnClick = Button4Click
  end
  object Button3: TButton
    Left = 248
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 3
  end
  object Memo1: TMemo
    Left = 424
    Top = 8
    Width = 203
    Height = 283
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
  end
  object Button5: TButton
    Left = 72
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Button5'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 288
    Top = 176
  end
end
