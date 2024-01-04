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
  TextHeight = 15
  object Button1: TButton
    Left = 272
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 104
    Top = 184
    Width = 121
    Height = 23
    TabOrder = 1
    Text = 'Edit1'
  end
  object Memo1: TMemo
    Left = 272
    Top = 184
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
end
