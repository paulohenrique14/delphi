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
    Left = 312
    Top = 248
  end
  object FDTable1: TFDTable
    Connection = FDConnection1
    Left = 464
    Top = 256
  end
  object DataSource1: TDataSource
    Left = 624
    Top = 256
  end
end
