object FrmDm: TFrmDm
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Paulo\Desktop\Master-View\development\db\DB.FD' +
        'B'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 480
    Top = 56
  end
  object FDTable1: TFDTable
    Connection = FDConnection1
    Left = 632
    Top = 64
  end
  object DataSource1: TDataSource
    Left = 792
    Top = 64
  end
  object Conexao: TSQLConnection
    DriverName = 'Sqlite'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DbxSqlite'
      
        'DriverPackageLoader=TDBXSqliteDriverLoader,DBXSqliteDriver280.bp' +
        'l'
      
        'MetaDataPackageLoader=TDBXSqliteMetaDataCommandFactory,DbxSqlite' +
        'Driver280.bpl'
      'FailIfMissing=True'
      'Database=C:\Users\Paulo\Desktop\Master-View\development\db\db.db')
    Connected = True
    Left = 288
    Top = 448
  end
end
