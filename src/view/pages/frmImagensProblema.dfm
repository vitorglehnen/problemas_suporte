object formImagensProblema: TformImagensProblema
  Left = 0
  Top = 0
  Caption = 'Imagens do problema'
  ClientHeight = 700
  ClientWidth = 1150
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 1150
    Height = 700
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Clique em adicionar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object imgProblema: TImage
      Left = 81
      Top = 98
      Width = 988
      Height = 602
      ParentCustomHint = False
      Align = alClient
      AutoSize = True
      Center = True
      ParentShowHint = False
      ShowHint = True
      OnDblClick = imgProblemaDblClick
      ExplicitLeft = 87
      ExplicitTop = 103
    end
    object btnProxImagem: TSpeedButton
      Left = 1069
      Top = 98
      Width = 81
      Height = 602
      Align = alRight
      Caption = '------->'
      OnClick = btnProxImagemClick
      ExplicitLeft = 1068
      ExplicitTop = 103
    end
    object btnAntImagem: TSpeedButton
      Left = 0
      Top = 98
      Width = 81
      Height = 602
      Align = alLeft
      Caption = '<-------'
      Enabled = False
      OnClick = btnAntImagemClick
      ExplicitLeft = -6
      ExplicitTop = 103
    end
    object pnlTopImagem: TPanel
      Left = 0
      Top = 0
      Width = 1150
      Height = 57
      ParentCustomHint = False
      Align = alTop
      BiDiMode = bdLeftToRight
      Color = 16708071
      Ctl3D = True
      DoubleBuffered = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Padding.Left = 5
      Padding.Top = 5
      Padding.Bottom = 5
      ParentBiDiMode = False
      ParentBackground = False
      ParentCtl3D = False
      ParentDoubleBuffered = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      ExplicitLeft = -1
      ExplicitTop = -5
      object btnRemoverImagem: TSpeedButton
        Left = 213
        Top = 6
        Width = 69
        Height = 45
        Align = alLeft
        Caption = 'Remover'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = btnRemoverImagemClick
        ExplicitLeft = 219
      end
      object btnAddImagem: TSpeedButton
        Left = 6
        Top = 6
        Width = 69
        Height = 45
        Align = alLeft
        Caption = 'Adicionar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = btnAddImagemClick
        ExplicitLeft = 0
      end
      object btnSalvarImagem: TSpeedButton
        Left = 75
        Top = 6
        Width = 69
        Height = 45
        Align = alLeft
        Caption = 'Salvar'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnMouseDown = btnSalvarImagemMouseDown
        ExplicitLeft = 69
      end
      object btnCancelarImagem: TSpeedButton
        Left = 144
        Top = 6
        Width = 69
        Height = 45
        Align = alLeft
        Caption = 'Cancelar'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = btnCancelarImagemClick
        ExplicitLeft = 138
      end
      object btnSelecionarImagem: TSpeedButton
        Left = 282
        Top = 6
        Width = 69
        Height = 45
        Align = alLeft
        Caption = 'Procurar'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = btnSelecionarImagemClick
        ExplicitLeft = 288
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 57
      Width = 1150
      Height = 41
      Align = alTop
      BiDiMode = bdLeftToRight
      Color = 16775668
      Ctl3D = True
      DoubleBuffered = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentBackground = False
      ParentCtl3D = False
      ParentDoubleBuffered = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      object lblNmroImagem: TLabel
        Left = 1
        Top = 1
        Width = 1148
        Height = 39
        Align = alClient
        Alignment = taCenter
        Caption = '1/5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 24
        ExplicitHeight = 19
      end
    end
  end
end
