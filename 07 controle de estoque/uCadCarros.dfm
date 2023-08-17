object FrmConMovimentacao: TFrmConMovimentacao
  Left = 0
  Top = 0
  Caption = 'FrmConMovimentacao'
  ClientHeight = 687
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlContainer: TPanel
    Left = 0
    Top = 65
    Width = 1024
    Height = 552
    Align = alTop
    TabOrder = 0
    ExplicitTop = 71
    object pnlCampoCarros: TPanel
      Left = 1
      Top = 424
      Width = 1022
      Height = 127
      Align = alBottom
      TabOrder = 0
      ExplicitLeft = 49
      ExplicitTop = 430
      object Label1: TLabel
        Left = 515
        Top = 112
        Width = 3
        Height = 15
      end
      object Label12: TLabel
        Left = 246
        Top = 11
        Width = 41
        Height = 15
        Caption = 'Modelo'
      end
      object Label16: TLabel
        Left = 14
        Top = 11
        Width = 39
        Height = 15
        Caption = 'C'#243'digo'
      end
      object Label3: TLabel
        Left = 14
        Top = 67
        Width = 33
        Height = 15
        Caption = 'Marca'
      end
      object Label4: TLabel
        Left = 246
        Top = 68
        Width = 22
        Height = 15
        Caption = 'Ano'
      end
      object Label5: TLabel
        Left = 462
        Top = 11
        Width = 19
        Height = 15
        Caption = 'Cor'
      end
      object Label2: TLabel
        Left = 462
        Top = 67
        Width = 84
        Height = 15
        Caption = 'Quilometragem'
      end
      object Label6: TLabel
        Left = 672
        Top = 11
        Width = 19
        Height = 15
        Caption = 'Cor'
      end
      object DBEAnoCarro: TDBEdit
        Left = 246
        Top = 89
        Width = 121
        Height = 23
        DataField = 'CAR_ANO'
        DataSource = DSCadastro
        TabOrder = 0
      end
      object DBECodigoCarro: TDBEdit
        Left = 14
        Top = 32
        Width = 121
        Height = 23
        DataField = 'CAR_COD'
        DataSource = DSCadastro
        TabOrder = 1
      end
      object DBECorCarro: TDBEdit
        Left = 462
        Top = 32
        Width = 121
        Height = 23
        DataField = 'CAR_COR'
        DataSource = DSCadastro
        TabOrder = 2
      end
      object DBEMarcaCarro: TDBEdit
        Left = 14
        Top = 88
        Width = 121
        Height = 23
        DataField = 'CAR_MAR'
        DataSource = DSCadastro
        TabOrder = 3
      end
      object DBEModeloCarro: TDBEdit
        Left = 246
        Top = 32
        Width = 121
        Height = 23
        DataField = 'CAR_MOD'
        DataSource = DSCadastro
        TabOrder = 4
      end
      object DBEKmCarro: TDBEdit
        Left = 462
        Top = 88
        Width = 121
        Height = 23
        DataField = 'CAR_KMS'
        DataSource = DSCadastro
        TabOrder = 5
      end
      object DBMObsCarro: TDBMemo
        Left = 672
        Top = 32
        Width = 337
        Height = 79
        DataField = 'CAR_OBS'
        DataSource = DSCadastro
        TabOrder = 6
      end
    end
    object pnlGridCarros: TPanel
      Left = 1
      Top = 1
      Width = 1022
      Height = 423
      Align = alClient
      Caption = 'pnlGridCarros'
      TabOrder = 1
      ExplicitLeft = 448
      ExplicitTop = 328
      ExplicitWidth = 185
      ExplicitHeight = 41
    end
  end
  object pnlFooter: TPanel
    Left = 0
    Top = 615
    Width = 1024
    Height = 72
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 606
    ExplicitWidth = 1018
    object Button1: TButton
      Left = 472
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
    end
  end
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 65
    Align = alTop
    Caption = 'Car managment'
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -25
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    ExplicitWidth = 1018
  end
  object SQLCadastro: TSQLDataSet
    Active = True
    CommandText = 'SELECT *  FROM CARROS'
    DataSource = DSCadastro
    MaxBlobSize = 1
    Params = <>
    SQLConnection = FrmDm.Conexao
    Left = 432
    Top = 120
    object SQLCadastroCAR_COD: TWideMemoField
      FieldName = 'CAR_COD'
      Required = True
      BlobType = ftWideMemo
      Size = 1
    end
    object SQLCadastroCAR_MOD: TWideMemoField
      FieldName = 'CAR_MOD'
      Required = True
      BlobType = ftWideMemo
      Size = 1
    end
    object SQLCadastroCAR_MAR: TWideMemoField
      FieldName = 'CAR_MAR'
      Required = True
      BlobType = ftWideMemo
      Size = 1
    end
    object SQLCadastroCAR_ANO: TWideMemoField
      FieldName = 'CAR_ANO'
      Required = True
      BlobType = ftWideMemo
      Size = 1
    end
    object SQLCadastroCAR_COR: TWideMemoField
      FieldName = 'CAR_COR'
      Required = True
      BlobType = ftWideMemo
      Size = 1
    end
    object SQLCadastroCAR_OBS: TWideMemoField
      FieldName = 'CAR_OBS'
      Required = True
      BlobType = ftWideMemo
      Size = 1
    end
    object SQLCadastroCAR_KMS: TWideMemoField
      FieldName = 'CAR_KMS'
      Required = True
      BlobType = ftWideMemo
      Size = 1
    end
  end
  object CDSCadastro: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCadastro'
    Left = 704
    Top = 96
    object CDSCadastroCAR_COD: TWideMemoField
      FieldName = 'CAR_COD'
      Required = True
      BlobType = ftWideMemo
    end
    object CDSCadastroCAR_MOD: TWideMemoField
      FieldName = 'CAR_MOD'
      Required = True
      BlobType = ftWideMemo
    end
    object CDSCadastroCAR_MAR: TWideMemoField
      FieldName = 'CAR_MAR'
      Required = True
      BlobType = ftWideMemo
    end
    object CDSCadastroCAR_ANO: TWideMemoField
      FieldName = 'CAR_ANO'
      Required = True
      BlobType = ftWideMemo
    end
    object CDSCadastroCAR_COR: TWideMemoField
      FieldName = 'CAR_COR'
      Required = True
      BlobType = ftWideMemo
    end
    object CDSCadastroCAR_OBS: TWideMemoField
      FieldName = 'CAR_OBS'
      Required = True
      BlobType = ftWideMemo
    end
    object CDSCadastroCAR_KMS: TWideMemoField
      FieldName = 'CAR_KMS'
      Required = True
      BlobType = ftWideMemo
    end
  end
  object DSPCadastro: TDataSetProvider
    DataSet = SQLCadastro
    Left = 584
    Top = 112
  end
  object DSCadastro: TDataSource
    DataSet = CDSCadastro
    Left = 872
    Top = 120
  end
end
