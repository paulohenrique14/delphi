object FrmConMovimentacao: TFrmConMovimentacao
  Left = 0
  Top = 0
  Caption = 'FrmConMovimentacao'
  ClientHeight = 715
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
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
    TabOrder = 0
    ExplicitWidth = 1018
  end
  object pnlContainer: TPanel
    Left = 0
    Top = 65
    Width = 1024
    Height = 650
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 1018
    ExplicitHeight = 616
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 65
    Width = 1024
    Height = 650
    ActivePage = TabCadastro
    Align = alClient
    TabOrder = 2
    ExplicitHeight = 625
    object TabCadastro: TTabSheet
      Caption = 'Cadastro'
    end
    object TabConsulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
    end
  end
  object SQLCadastro: TSQLDataSet
    CommandText = 'SELECT *  FROM CARROS'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = FrmDm.Conexao
    Left = 400
    Top = 56
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
    object SQLCadastroCAR_NVO: TWideMemoField
      FieldName = 'CAR_NVO'
      Required = True
      BlobType = ftWideMemo
      Size = 1
    end
  end
  object CDSCadastro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCadastro'
    Left = 672
    Top = 64
  end
  object DSPCadastro: TDataSetProvider
    DataSet = SQLCadastro
    Left = 528
    Top = 64
  end
  object DSCadastro: TDataSource
    DataSet = CDSCadastro
    Left = 864
    Top = 72
  end
end
