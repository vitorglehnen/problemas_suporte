object formImagensProblema: TformImagensProblema
  Left = 0
  Top = 0
  Caption = 'formImagensProblema'
  ClientHeight = 650
  ClientWidth = 900
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnAdicionarImagem: TPanel
    Left = 0
    Top = 0
    Width = 900
    Height = 650
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object imgProblema: TImage
      Left = 81
      Top = 57
      Width = 738
      Height = 593
      Align = alClient
      Center = True
      ExplicitLeft = 75
    end
    object btnProxImagem: TSpeedButton
      Left = 819
      Top = 57
      Width = 81
      Height = 593
      Align = alRight
      Caption = '------->'
      Enabled = False
      ExplicitLeft = 825
      ExplicitTop = 0
      ExplicitHeight = 650
    end
    object btnAntImagem: TSpeedButton
      Left = 0
      Top = 57
      Width = 81
      Height = 593
      Align = alLeft
      Caption = '<-------'
      ExplicitLeft = 8
      ExplicitTop = 0
      ExplicitHeight = 650
    end
    object pnlTopImagem: TPanel
      Left = 0
      Top = 0
      Width = 900
      Height = 57
      Align = alTop
      Padding.Left = 5
      Padding.Top = 5
      Padding.Bottom = 5
      TabOrder = 0
      object btnRemoverImagem: TSpeedButton
        Left = 81
        Top = 6
        Width = 75
        Height = 45
        Align = alLeft
        Caption = 'Remover'
        OnClick = btnRemoverImagemClick
        ExplicitLeft = 87
      end
      object btnAddImagem: TSpeedButton
        Left = 6
        Top = 6
        Width = 75
        Height = 45
        Align = alLeft
        Caption = 'Adicionar'
        OnClick = btnAddImagemClick
        ExplicitLeft = 0
      end
    end
  end
end
