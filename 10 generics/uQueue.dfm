object FrmQueue: TFrmQueue
  Left = 0
  Top = 0
  Caption = 'FrmQueue'
  ClientHeight = 345
  ClientWidth = 485
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
  object Label1: TLabel
    Left = 5
    Top = 12
    Width = 477
    Height = 45
    Alignment = taCenter
    Caption = 'TQueue'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 168
    Top = 72
    Width = 297
    Height = 254
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object EdtValor: TEdit
    Left = 24
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object BtnEnqueue: TButton
    Left = 24
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Enqueue'
    TabOrder = 2
    OnClick = BtnEnqueueClick
  end
  object BtnDequeue: TButton
    Left = 24
    Top = 143
    Width = 75
    Height = 25
    Caption = 'Dequeue'
    TabOrder = 3
    OnClick = BtnDequeueClick
  end
  object BtnExtract: TButton
    Left = 24
    Top = 174
    Width = 75
    Height = 25
    Caption = 'Extract'
    TabOrder = 4
    OnClick = BtnExtractClick
  end
  object BtnPeek: TButton
    Left = 24
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Peek'
    TabOrder = 5
    OnClick = BtnPeekClick
  end
  object BtnTrimExcess: TButton
    Left = 24
    Top = 239
    Width = 75
    Height = 25
    Caption = 'TrimExcess'
    TabOrder = 6
    OnClick = BtnTrimExcessClick
  end
  object BtnCount: TButton
    Left = 24
    Top = 270
    Width = 75
    Height = 25
    Caption = 'Count'
    TabOrder = 7
    OnClick = BtnCountClick
  end
  object BtnCapacity: TButton
    Left = 24
    Top = 301
    Width = 75
    Height = 25
    Caption = 'Capacity'
    TabOrder = 8
    OnClick = BtnCapacityClick
  end
end
