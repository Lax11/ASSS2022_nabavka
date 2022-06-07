object Form1: TForm1
  Left = 0
  Top = 0
  ClientHeight = 383
  ClientWidth = 758
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
    Left = 282
    Top = 155
    Width = 61
    Height = 13
    Caption = 'USERNAME :'
  end
  object Label2: TLabel
    Left = 286
    Top = 235
    Width = 57
    Height = 13
    Caption = 'PASSWORD'
  end
  object Label3: TLabel
    Left = 8
    Top = 32
    Width = 753
    Height = 33
    Alignment = taCenter
    Caption = 'PRIJAVA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 349
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 349
    Top = 232
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 0
    Top = 336
    Width = 169
    Height = 49
    Caption = 'LOGIN'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 592
    Top = 336
    Width = 169
    Height = 47
    Caption = 'EXIT'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 312
    Top = 332
    Width = 158
    Height = 55
    Align = alCustom
    Caption = 'REGISTER'
    TabOrder = 4
    OnClick = Button3Click
  end
end
