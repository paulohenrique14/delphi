object DataModule2: TDataModule2
  Height = 691
  Width = 890
  PixelsPerInch = 120
  object ConexaoBD: TFDConnection
    Params.Strings = (
      'Database=agenda'
      'User_Name=root'
      'Port=3307'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 80
    Top = 72
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = ConexaoBD
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'agenda.carros'
    Left = 216
    Top = 88
    object FDTable1id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object FDTable1brand: TStringField
      FieldName = 'brand'
      Origin = 'brand'
      Required = True
      Size = 15
    end
    object FDTable1model: TStringField
      FieldName = 'model'
      Origin = 'model'
      Required = True
      Size = 30
    end
    object FDTable1new: TBooleanField
      FieldName = 'new'
      Origin = 'new'
      Required = True
    end
    object FDTable1color: TStringField
      FieldName = 'color'
      Origin = 'color'
      Required = True
      Size = 15
    end
    object FDTable1year: TIntegerField
      FieldName = 'year'
      Origin = 'year'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 368
    Top = 144
  end
end
