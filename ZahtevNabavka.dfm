object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 305
  ClientWidth = 663
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object INDEX: TLabel
    Left = 455
    Top = 274
    Width = 55
    Height = 23
    Caption = 'INDEX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object StringGrid1: TStringGrid
    Tag = 6
    Left = 8
    Top = 0
    Width = 659
    Height = 257
    ColCount = 6
    FixedCols = 0
    TabOrder = 0
    ColWidths = (
      50
      100
      100
      100
      64
      100)
    ColAligments = (
      1
      0
      0
      0
      1
      1)
  end
  object Button1: TButton
    Left = 0
    Top = 256
    Width = 153
    Height = 49
    Caption = 'NAZAD'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 296
    Top = 256
    Width = 153
    Height = 49
    Caption = 'BRISANJE ZAHTEVA'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 151
    Top = 256
    Width = 153
    Height = 49
    Caption = 'DODAVANJE ZAHTEVA'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 516
    Top = 256
    Width = 53
    Height = 21
    TabOrder = 4
  end
  object Button4: TButton
    Left = 568
    Top = 256
    Width = 91
    Height = 49
    Caption = 'IZLAZ'
    TabOrder = 5
    OnClick = Button4Click
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.FDQuery3
    ScopeMappings = <>
    Left = 328
    Top = 160
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 28
    Top = 101
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = StringGrid1
      Columns = <
        item
          MemberName = 'IDTabele'
          Width = 50
        end
        item
          MemberName = 'ImePodnosioca'
          Width = 100
        end
        item
          MemberName = 'ImeDobavljaca'
          Width = 100
        end
        item
          MemberName = 'ImeProizvoda'
          Width = 100
        end
        item
          MemberName = 'Kolicina'
        end
        item
          MemberName = 'DatumPodnosenja'
          Width = 100
        end>
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = DataModule1.FDQuery1
    ScopeMappings = <>
    Left = 336
    Top = 168
  end
end
