object FrmDm: TFrmDm
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object Conexao: TSQLConnection
    ConnectionName = 'Conexao'
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
    Left = 496
    Top = 208
  end
end
