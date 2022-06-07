object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 385
  ClientWidth = 713
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 384
    Top = 342
    Width = 63
    Height = 23
    Caption = 'INDEX'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object StringGrid1: TStringGrid
    Tag = 5
    Left = 0
    Top = 0
    Width = 713
    Height = 322
    FixedCols = 0
    TabOrder = 0
    ColWidths = (
      64
      100
      100
      100
      100)
    ColAligments = (
      1
      0
      0
      1
      1)
  end
  object Button1: TButton
    Left = 88
    Top = 328
    Width = 129
    Height = 57
    Caption = 'NAZAD'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 520
    Top = 328
    Width = 193
    Height = 57
    Caption = 'IZLAZ'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 208
    Top = 328
    Width = 170
    Height = 57
    Caption = 'BRISANJE'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 453
    Top = 328
    Width = 68
    Height = 21
    TabOrder = 4
  end
  object Button4: TButton
    Left = -7
    Top = 328
    Width = 96
    Height = 57
    Caption = 'UPIS'
    TabOrder = 5
    OnClick = Button4Click
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.FDQuery2
    ScopeMappings = <>
    Left = 352
    Top = 200
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = DataModule1.FDQuery1
    ScopeMappings = <>
    Left = 360
    Top = 208
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = StringGrid1
      Columns = <
        item
          MemberName = 'IDTabele'
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
          Width = 100
        end
        item
          MemberName = 'Cena'
          Width = 100
        end>
    end
  end
  object BindSourceDB3: TBindSourceDB
    DataSet = DataModule1.FDQuery3
    ScopeMappings = <>
    Left = 368
    Top = 216
  end
end
