object Form9: TForm9
  Left = 0
  Top = 0
  Caption = 'Form9'
  ClientHeight = 404
  ClientWidth = 741
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
    Left = 392
    Top = 369
    Width = 30
    Height = 13
    Caption = 'INDEX'
  end
  object StringGrid1: TStringGrid
    Tag = 8
    Left = 104
    Top = -8
    Width = 457
    Height = 249
    ColCount = 8
    FixedCols = 0
    TabOrder = 0
    ColWidths = (
      64
      64
      124
      184
      184
      124
      64
      64)
    ColAligments = (
      1
      0
      0
      0
      0
      0
      1
      1)
  end
  object Button1: TButton
    Left = 0
    Top = 344
    Width = 121
    Height = 65
    Caption = 'NAZAD'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 120
    Top = 344
    Width = 129
    Height = 65
    Caption = 'NOVA PORUDZBENICA'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 576
    Top = 344
    Width = 169
    Height = 65
    Caption = 'IZLAZ'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 248
    Top = 346
    Width = 129
    Height = 61
    Caption = 'BRISANJE'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Edit1: TEdit
    Left = 428
    Top = 347
    Width = 61
    Height = 62
    TabOrder = 5
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.queryPorudzbenica
    ScopeMappings = <>
    Left = 368
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
      Columns = <>
    end
  end
end
