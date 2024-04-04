object FormPreferencias: TFormPreferencias
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Prefer'#234'ncias'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object formPreferencias: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 441
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 620
    ExplicitHeight = 440
    object lblCorPadrao: TLabel
      Left = 471
      Top = 48
      Width = 59
      Height = 14
      Caption = 'Cor padr'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object lblEstatisticas: TLabel
      Left = 8
      Top = 236
      Width = 75
      Height = 21
      Caption = 'Estat'#237'sticas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblQtdeProblemas: TLabel
      Left = 8
      Top = 288
      Width = 125
      Height = 15
      Caption = 'Problemas cadastrados:'
    end
    object lblQtdeModulos: TLabel
      Left = 8
      Top = 309
      Width = 116
      Height = 15
      Caption = 'M'#243'dulos cadastrados:'
    end
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 624
      Height = 33
      Align = alTop
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 620
    end
    object rdgpConsultaPadrao: TRadioGroup
      Left = 8
      Top = 48
      Width = 169
      Height = 81
      Caption = 'Filtro padr'#227'o consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      Items.Strings = (
        'Geral'
        'Somente do m'#243'dulo')
      ParentFont = False
      TabOrder = 1
    end
    object cbCorPadrao: TColorBox
      Left = 471
      Top = 64
      Width = 145
      Height = 22
      NoneColorColor = 16708071
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object btnSalvar: TButton
      Left = 479
      Top = 376
      Width = 105
      Height = 25
      Caption = 'Salvar altera'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnSalvarClick
    end
    object pnlLineDesign: TPanel
      Left = 0
      Top = 263
      Width = 624
      Height = 2
      TabOrder = 4
    end
    object chkFiltrarPorUsuario: TCheckBox
      Left = 104
      Top = 240
      Width = 145
      Height = 17
      Caption = 'Filtrar por usu'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = chkFiltrarPorUsuarioClick
    end
  end
end
