object formImagensProblema: TformImagensProblema
  Left = 0
  Top = 0
  Caption = 'formImagensProblema'
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
    TabOrder = 0
    object imgProblema: TImage
      Left = 81
      Top = 98
      Width = 988
      Height = 602
      Align = alClient
      AutoSize = True
      Center = True
      OnDblClick = imgProblemaDblClick
      ExplicitLeft = 87
      ExplicitTop = 136
      ExplicitHeight = 564
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
      ExplicitTop = 57
      ExplicitHeight = 643
    end
    object pnlTopImagem: TPanel
      Left = 0
      Top = 0
      Width = 1150
      Height = 57
      Align = alTop
      Padding.Left = 5
      Padding.Top = 5
      Padding.Bottom = 5
      TabOrder = 0
      object btnRemoverImagem: TSpeedButton
        Left = 213
        Top = 6
        Width = 69
        Height = 45
        Align = alLeft
        Caption = 'Remover'
        OnClick = btnRemoverImagemClick
        ExplicitLeft = 219
        ExplicitTop = 7
      end
      object btnAddImagem: TSpeedButton
        Left = 6
        Top = 6
        Width = 69
        Height = 45
        Align = alLeft
        Caption = 'Adcionar'
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
        ExplicitLeft = 81
      end
      object btnSelecionarImagem: TSpeedButton
        Left = 282
        Top = 6
        Width = 69
        Height = 45
        Align = alLeft
        Caption = 'Procurar'
        Enabled = False
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
