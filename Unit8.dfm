object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'Form8'
  ClientHeight = 347
  ClientWidth = 738
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 238
    Top = 160
    Width = 52
    Height = 13
    Alignment = taCenter
    Caption = 'PROIZVOD'
  end
  object Label4: TLabel
    Left = 242
    Top = 220
    Width = 48
    Height = 13
    Alignment = taCenter
    Caption = 'KOLICINA'
  end
  object Label1: TLabel
    Left = 232
    Top = 134
    Width = 58
    Height = 13
    Alignment = taCenter
    Caption = 'DOBAVLJAC'
  end
  object Label3: TLabel
    Left = 263
    Top = 192
    Width = 27
    Height = 13
    Alignment = taCenter
    Caption = 'CENA'
  end
  object Edit2: TEdit
    Left = 296
    Top = 158
    Width = 121
    Height = 21
    Alignment = taCenter
    TabOrder = 0
  end
  object Button1: TButton
    Left = 552
    Top = 192
    Width = 153
    Height = 65
    Caption = 'DODATI'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 296
    Top = 131
    Width = 121
    Height = 21
    Alignment = taCenter
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 296
    Top = 190
    Width = 121
    Height = 21
    Alignment = taCenter
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 296
    Top = 217
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Button2: TButton
    Left = 552
    Top = 263
    Width = 185
    Height = 81
    Caption = 'IZLAZ'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 0
    Top = 272
    Width = 147
    Height = 73
    Caption = 'NAZAD'
    TabOrder = 6
    OnClick = Button3Click
  end
end
