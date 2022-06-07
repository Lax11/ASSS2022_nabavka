object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 341
  ClientWidth = 722
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
    Left = 0
    Top = 0
    Width = 722
    Height = 40
    Align = alTop
    Alignment = taCenter
    Caption = 'REGISTRACIJA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 263
  end
  object Label2: TLabel
    Left = 280
    Top = 96
    Width = 61
    Height = 13
    Caption = 'USERNAME :'
  end
  object Label3: TLabel
    Left = 280
    Top = 152
    Width = 64
    Height = 13
    Caption = 'PASSWORD :'
  end
  object Label4: TLabel
    Left = 311
    Top = 216
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object Button3: TButton
    Left = 0
    Top = 280
    Width = 153
    Height = 65
    Caption = 'REGISTER'
    TabOrder = 0
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 360
    Top = 93
    Width = 73
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 360
    Top = 149
    Width = 73
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 360
    Top = 213
    Width = 73
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 584
    Top = 280
    Width = 138
    Height = 57
    Caption = 'IZLAZ'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 569
    Top = 40
    Width = 153
    Height = 57
    Caption = 'START'
    TabOrder = 5
    OnClick = Button2Click
  end
end
