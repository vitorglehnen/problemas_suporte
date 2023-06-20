object formLogin: TformLogin
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 172
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 172
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 216
      Top = 53
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'Usu'#225'rio'
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 222
      Top = 80
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'Senha'
      Layout = tlCenter
    end
    object btnEntrar: TButton
      Left = 304
      Top = 107
      Width = 75
      Height = 25
      Caption = 'Entrar'
      TabOrder = 0
      OnClick = btnEntrarClick
    end
    object edtUsuario: TEdit
      Left = 258
      Top = 53
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 20
      TabOrder = 1
    end
    object edtSenha: TEdit
      Left = 258
      Top = 80
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 10
      PasswordChar = '*'
      TabOrder = 2
    end
    object pnlLogo: TPanel
      Left = 0
      Top = 0
      Width = 172
      Height = 172
      Align = alLeft
      Color = 16708071
      ParentBackground = False
      TabOrder = 3
    end
  end
end
