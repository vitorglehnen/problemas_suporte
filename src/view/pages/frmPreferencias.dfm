object FormPreferencias: TFormPreferencias
  Left = 0
  Top = 0
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
    ExplicitLeft = -8
    ExplicitTop = -8
    object Label1: TLabel
      Left = 424
      Top = 48
      Width = 59
      Height = 15
      Caption = 'Cor padr'#227'o'
    end
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 624
      Height = 33
      Align = alTop
      Color = 16708071
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
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
      Items.Strings = (
        'Geral'
        'Somente do m'#243'dulo')
      TabOrder = 1
    end
    object cbCorPadrao: TColorBox
      Left = 424
      Top = 64
      Width = 145
      Height = 22
      NoneColorColor = 16708071
      TabOrder = 2
    end
  end
end
