object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 493
  ClientWidth = 556
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 183
    Top = 16
    Width = 168
    Height = 35
    Caption = 'Lista de carros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -25
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 96
    Top = 75
    Width = 31
    Height = 15
    Caption = 'Brand'
  end
  object Label3: TLabel
    Left = 96
    Top = 155
    Width = 34
    Height = 15
    Caption = 'Model'
  end
  object Label4: TLabel
    Left = 320
    Top = 75
    Width = 29
    Height = 15
    Caption = 'Color'
  end
  object Label5: TLabel
    Left = 320
    Top = 155
    Width = 22
    Height = 15
    Caption = 'Year'
  end
  object Label6: TLabel
    Left = 96
    Top = 251
    Width = 87
    Height = 15
    Caption = 'Pesquisar model'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 352
    Width = 556
    Height = 141
    Align = alBottom
    DataSource = DataModule2.DataSource1
    Enabled = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 96
    Top = 96
    Width = 121
    Height = 23
    DataField = 'brand'
    DataSource = DataModule2.DataSource1
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 96
    Top = 176
    Width = 121
    Height = 23
    DataField = 'model'
    DataSource = DataModule2.DataSource1
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 320
    Top = 96
    Width = 121
    Height = 23
    DataField = 'color'
    DataSource = DataModule2.DataSource1
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 320
    Top = 176
    Width = 121
    Height = 23
    DataField = 'year'
    DataSource = DataModule2.DataSource1
    TabOrder = 4
  end
  object DBCheckBox1: TDBCheckBox
    Left = 320
    Top = 224
    Width = 97
    Height = 17
    Caption = 'New'
    DataField = 'new'
    DataSource = DataModule2.DataSource1
    TabOrder = 5
  end
  object DBNavigator1: TDBNavigator
    Left = 168
    Top = 313
    Width = 200
    Height = 25
    DataSource = DataModule2.DataSource1
    TabOrder = 6
  end
  object txtBusca: TEdit
    Left = 96
    Top = 272
    Width = 121
    Height = 23
    TabOrder = 7
    OnChange = txtBuscaChange
  end
end
