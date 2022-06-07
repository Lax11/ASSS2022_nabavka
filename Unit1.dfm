object DataModule1: TDataModule1
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 590
  Width = 809
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\lax10\Documents\embacadero2\Win32\Debug\Nabavk' +
        'a.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 520
    Top = 240
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM Korisnici')
    Left = 624
    Top = 144
  end
  object FDQuery2: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT IDTabele,  ImeDobavljaca, ImeProizvoda, Kolicina, Cena FR' +
        'OM ListaProizvodaZahtev')
    Left = 648
    Top = 248
  end
  object FDQuery3: TFDQuery
    Active = True
    Filtered = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT IDTabele,  ImePodnosioca,  ImeDobavljaca, ImeProizvoda, K' +
        'olicina, DatumPodnosenja FROM ListaProizvodaZahtev'
      '               '
      '               ')
    Left = 672
    Top = 344
  end
  object queryInsert: TFDQuery
    Connection = FDConnection1
    Left = 640
    Top = 488
  end
  object FDQuery4: TFDQuery
    Connection = FDConnection1
    Left = 704
    Top = 440
  end
  object queryPorudzbenica: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM Porudzbenica')
    Left = 512
    Top = 408
  end
end
