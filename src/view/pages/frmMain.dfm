object formPrincipal: TformPrincipal
  Left = 0
  Top = 0
  Align = alClient
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Problemas Suporte'
  ClientHeight = 759
  ClientWidth = 1549
  Color = clBtnFace
  DockSite = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poPrintToFit
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 1549
    Height = 759
    Align = alClient
    AutoSize = True
    TabOrder = 0
    object pnlBodyModulosProblemas: TPanel
      Left = 1
      Top = 1
      Width = 512
      Height = 757
      Align = alLeft
      Caption = 'pnlBodyModulosProblemas'
      TabOrder = 0
      object pnlBodyProblemas: TPanel
        Left = 242
        Top = 1
        Width = 269
        Height = 755
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object pnlTopProblemas: TPanel
          Left = 0
          Top = 0
          Width = 269
          Height = 257
          Align = alTop
          TabOrder = 0
          object lblTituloProblemas: TLabel
            Left = 1
            Top = 1
            Width = 267
            Height = 76
            Align = alClient
            Alignment = taCenter
            Caption = 'Problemas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHotLight
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 5
          end
          object lblTotalDeProblemas: TLabel
            Left = 6
            Top = 1
            Width = 35
            Height = 13
            Caption = 'Total: '
            Color = clMedGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHotLight
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object pnlBotaoCrudProblema: TPanel
            Left = 1
            Top = 77
            Width = 267
            Height = 27
            Align = alBottom
            TabOrder = 0
            object btnNovoProblema: TSpeedButton
              Left = 1
              Top = 1
              Width = 64
              Height = 25
              Align = alLeft
              Caption = 'Novo(F3)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Spacing = 2
              OnMouseDown = btnNovoProblemaMouseDown
              ExplicitLeft = 3
              ExplicitTop = 5
            end
            object btnSalvarProblema: TSpeedButton
              Left = 65
              Top = 1
              Width = 55
              Height = 25
              Align = alLeft
              Caption = 'Salvar(F4)'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Spacing = 2
              OnClick = btnSalvarProblemaClick
              ExplicitLeft = 59
              ExplicitTop = 5
            end
            object btnExcluirProblema: TSpeedButton
              Left = 218
              Top = 1
              Width = 48
              Height = 25
              Align = alRight
              Caption = 'Excluir'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Spacing = 2
              OnClick = btnExcluirProblemaClick
              ExplicitLeft = 146
              ExplicitTop = -4
            end
            object btnCancelarProblema: TSpeedButton
              Left = 168
              Top = 1
              Width = 50
              Height = 25
              Align = alRight
              Caption = 'Cancelar'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Spacing = 2
              OnMouseDown = btnCancelarProblemaMouseDown
              ExplicitLeft = 162
              ExplicitTop = -4
            end
            object btnEditarProblema: TSpeedButton
              Left = 120
              Top = 1
              Width = 48
              Height = 25
              Align = alClient
              Caption = 'Editar'
              Spacing = 2
              OnClick = btnEditarProblemaClick
              ExplicitLeft = 126
              ExplicitTop = 5
            end
          end
          object pnlBodyPesqProblema: TPanel
            Left = 1
            Top = 104
            Width = 267
            Height = 152
            Align = alBottom
            Padding.Left = 8
            Padding.Top = 8
            Padding.Right = 8
            Padding.Bottom = 8
            TabOrder = 1
            object pnlPesqProblema: TPanel
              Left = 9
              Top = 9
              Width = 249
              Height = 134
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object lblPesqProblema: TLabel
                Left = 0
                Top = 0
                Width = 249
                Height = 13
                Align = alTop
                Caption = 'Pesquisa'
                ExplicitWidth = 42
              end
              object edtPesqProblema: TEdit
                Left = 0
                Top = 13
                Width = 249
                Height = 21
                Align = alTop
                TabOrder = 0
              end
              object pnlFiltroPesqProblema: TPanel
                Left = 0
                Top = 34
                Width = 249
                Height = 100
                Align = alClient
                BevelOuter = bvNone
                Padding.Top = 10
                TabOrder = 1
                object rdbtnFiltroPesqProblema: TRadioGroup
                  Left = 0
                  Top = 43
                  Width = 249
                  Height = 57
                  Align = alBottom
                  Caption = 'Filtro da pesquisa'
                  ItemIndex = 1
                  Items.Strings = (
                    'Geral'
                    'Somente do m'#243'dulo')
                  TabOrder = 0
                  OnClick = rdbtnFiltroPesqProblemaClick
                end
                object cbFiltroPesqProblema: TComboBox
                  Left = 0
                  Top = 10
                  Width = 113
                  Height = 21
                  Style = csDropDownList
                  TabOrder = 1
                end
              end
            end
          end
        end
        object pnlGridProblemas: TPanel
          Left = 0
          Top = 257
          Width = 269
          Height = 498
          Align = alClient
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object gridProblemas: TDBGrid
            Left = 1
            Top = 1
            Width = 267
            Height = 496
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            DrawingStyle = gdsGradient
            GradientEndColor = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnCellClick = gridProblemasCellClick
            OnDrawColumnCell = gridProblemasDrawColumnCell
          end
        end
      end
      object pnlBodyModulos: TPanel
        Left = 1
        Top = 1
        Width = 241
        Height = 755
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object pnlTopModulos: TPanel
          Left = 0
          Top = 0
          Width = 241
          Height = 257
          Align = alTop
          TabOrder = 0
          object lblTituloModulo: TLabel
            Left = 1
            Top = 1
            Width = 239
            Height = 76
            Align = alClient
            Alignment = taCenter
            Caption = 'M'#243'dulos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitWidth = 62
            ExplicitHeight = 18
          end
          object pnlBotaoCrudModulo: TPanel
            Left = 1
            Top = 77
            Width = 239
            Height = 27
            Align = alBottom
            TabOrder = 0
            ExplicitTop = 76
            object btnNovoModulo: TSpeedButton
              Left = 1
              Top = 1
              Width = 48
              Height = 25
              Align = alLeft
              Caption = 'Novo'
              OnMouseDown = btnNovoModuloMouseDown
              ExplicitLeft = 9
              ExplicitTop = 2
            end
            object btnExcluirModulo: TSpeedButton
              Left = 190
              Top = 1
              Width = 48
              Height = 25
              Align = alRight
              Caption = 'Excluir'
              OnClick = btnExcluirModuloClick
              ExplicitLeft = 89
              ExplicitTop = -4
            end
            object btnCancelarModulo: TSpeedButton
              Left = 142
              Top = 1
              Width = 48
              Height = 25
              Align = alRight
              Caption = 'Cancelar'
              Enabled = False
              OnMouseDown = btnCancelarMouseDown
              ExplicitTop = 5
            end
          end
          object pnlBodyPesqModulo: TPanel
            Left = 1
            Top = 104
            Width = 239
            Height = 152
            Align = alBottom
            Padding.Left = 8
            Padding.Top = 8
            Padding.Right = 8
            Padding.Bottom = 8
            TabOrder = 1
            ExplicitLeft = 6
            ExplicitTop = 100
            object lblModulo: TLabel
              Left = 9
              Top = 75
              Width = 34
              Height = 13
              Caption = 'M'#243'dulo'
            end
            object pnlPesqModulo: TPanel
              Left = 9
              Top = 9
              Width = 221
              Height = 35
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object lblPesqModulo: TLabel
                Left = 0
                Top = 0
                Width = 221
                Height = 13
                Align = alTop
                Caption = 'Pesquisa'
                ExplicitLeft = 4
                ExplicitTop = -3
              end
              object edtPesqModulo: TEdit
                Left = 0
                Top = 13
                Width = 221
                Height = 21
                Align = alTop
                TabOrder = 0
                ExplicitLeft = 4
              end
            end
            object edtModulo: TEdit
              Left = 9
              Top = 88
              Width = 225
              Height = 21
              Enabled = False
              TabOrder = 1
              OnExit = edtModuloExit
            end
          end
        end
        object pnlGridModulos: TPanel
          Left = 0
          Top = 257
          Width = 241
          Height = 498
          Align = alClient
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object gridModulos: TDBGrid
            Left = 1
            Top = 1
            Width = 239
            Height = 496
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            DrawingStyle = gdsGradient
            GradientEndColor = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnCellClick = gridModulosCellClick
            OnDrawColumnCell = gridModulosDrawColumnCell
            OnDblClick = gridModulosDblClick
            OnKeyDown = gridModulosKeyDown
          end
        end
      end
    end
    object cardPanelProblemas: TCardPanel
      Left = 513
      Top = 1
      Width = 1035
      Height = 757
      Align = alClient
      ActiveCard = pnlCadastroProblema
      AutoSize = True
      TabOrder = 1
      object pnlCadastroProblema: TCard
        Left = 1
        Top = 1
        Width = 1033
        Height = 755
        Caption = 'Painel problema'
        CardIndex = 0
        TabOrder = 0
        object pnlEscolhaUmRegistro: TPanel
          Left = 0
          Top = 0
          Width = 1033
          Height = 755
          Align = alClient
          Caption = 'Selecione um registro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object pnlProblemas: TPanel
            Left = 1
            Top = 1
            Width = 1031
            Height = 753
            Align = alClient
            AutoSize = True
            BevelOuter = bvNone
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = True
            Visible = False
            object pnlBodyModuloProblema: TPanel
              Left = 0
              Top = 69
              Width = 1031
              Height = 126
              Align = alTop
              AutoSize = True
              BevelOuter = bvNone
              Padding.Left = 30
              Padding.Top = 20
              TabOrder = 1
              ExplicitTop = 75
              object btnImagensProblema: TSpeedButton
                Left = 857
                Top = 25
                Width = 115
                Height = 34
                Caption = 'Imagens'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                OnClick = btnImagensProblemaClick
              end
              object pnlModuloProblema: TPanel
                Left = 30
                Top = 20
                Width = 135
                Height = 106
                Align = alLeft
                AutoSize = True
                BevelOuter = bvNone
                TabOrder = 0
                object lblModuloProblema: TLabel
                  Left = 0
                  Top = 0
                  Width = 135
                  Height = 17
                  Align = alTop
                  Caption = '*&M'#243'dulo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitWidth = 54
                end
                object cbModulo: TComboBox
                  Left = 0
                  Top = 17
                  Width = 135
                  Height = 22
                  Align = alTop
                  Style = csOwnerDrawFixed
                  Color = clWhite
                  Enabled = False
                  TabOrder = 0
                end
              end
            end
            object pnlBodySolucaoProblema: TPanel
              Left = 0
              Top = 430
              Width = 1031
              Height = 323
              Align = alClient
              AutoSize = True
              BevelOuter = bvNone
              Padding.Left = 30
              TabOrder = 3
              ExplicitTop = 436
              ExplicitHeight = 317
              object pnlSolucaoProblema: TPanel
                Left = 30
                Top = 0
                Width = 1001
                Height = 323
                Align = alClient
                AutoSize = True
                BevelOuter = bvNone
                Padding.Right = 60
                Padding.Bottom = 50
                TabOrder = 0
                ExplicitHeight = 317
                object lblSolucaoProblema: TLabel
                  Left = 0
                  Top = 0
                  Width = 941
                  Height = 17
                  Align = alTop
                  Caption = '*&Solu'#231#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitWidth = 54
                end
                object mmSolucaoProblema: TRichEdit
                  Left = 0
                  Top = 41
                  Width = 941
                  Height = 232
                  Align = alClient
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  ScrollBars = ssVertical
                  TabOrder = 0
                  Zoom = 100
                  OnEnter = mmSolucaoProblemaEnter
                  ExplicitHeight = 226
                end
                object pnlTopSolucaoProblema: TPanel
                  Left = 0
                  Top = 17
                  Width = 941
                  Height = 24
                  Align = alTop
                  Alignment = taLeftJustify
                  BevelOuter = bvNone
                  Enabled = False
                  TabOrder = 1
                  object cbNameFontSolucao: TComboBox
                    Left = 41
                    Top = 0
                    Width = 98
                    Height = 22
                    Align = alLeft
                    Style = csOwnerDrawFixed
                    Enabled = False
                    ItemIndex = 0
                    TabOrder = 0
                    TabStop = False
                    Text = 'Arial'
                    OnChange = cbSizeFontSolucaoChange
                    Items.Strings = (
                      'Arial'
                      'Calibri'
                      'Cambria'
                      'Candara'
                      'Comic Sans MS'
                      'Consolas'
                      'Courier New'
                      'Georgia'
                      'Impact'
                      'Lucida Console'
                      'Lucida Sans Unicode'
                      'Microsoft Sans Serif'
                      'Palatino Linotype'
                      'Segoe UI'
                      'Tahoma'
                      'Times New Roman'
                      'Trebuchet MS'
                      'Verdana')
                  end
                  object cbSizeFontSolucao: TComboBox
                    Left = 0
                    Top = 0
                    Width = 41
                    Height = 22
                    Align = alLeft
                    Style = csOwnerDrawFixed
                    Enabled = False
                    ItemIndex = 9
                    TabOrder = 1
                    TabStop = False
                    Text = '10'
                    OnChange = cbSizeFontSolucaoChange
                    Items.Strings = (
                      '1'
                      '2'
                      '3'
                      '4'
                      '5'
                      '6'
                      '7'
                      '8'
                      '9'
                      '10'
                      '11'
                      '12'
                      '13'
                      '14'
                      '15'
                      '16'
                      '17'
                      '18'
                      '19'
                      '20'
                      '21'
                      '22'
                      '23'
                      '24'
                      '25'
                      '26'
                      '27'
                      '28'
                      '29'
                      '30'
                      '31'
                      '32'
                      '33'
                      '34'
                      '35'
                      '36'
                      '37'
                      '38'
                      '39'
                      '40'
                      '41'
                      '42'
                      '43'
                      '44'
                      '45'
                      '46'
                      '47'
                      '48'
                      '49'
                      '50')
                  end
                  object ActionToolBar2: TActionToolBar
                    Left = 257
                    Top = 0
                    Width = 684
                    Height = 24
                    Align = alClient
                    Caption = 'ActionToolBar2'
                    Color = clMenuBar
                    ColorMap.DisabledFontColor = 10461087
                    ColorMap.HighlightColor = clWhite
                    ColorMap.BtnSelectedFont = clBlack
                    ColorMap.UnusedColor = clWhite
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    Spacing = 0
                  end
                  object chkItalicoSolucao: TCheckBox
                    Left = 201
                    Top = 0
                    Width = 56
                    Height = 24
                    TabStop = False
                    Align = alLeft
                    Caption = 'It'#225'lico'
                    Enabled = False
                    TabOrder = 3
                    OnClick = chkItalicoSolucaoClick
                  end
                  object chkNegritoSolucao: TCheckBox
                    Left = 139
                    Top = 0
                    Width = 62
                    Height = 24
                    TabStop = False
                    Align = alLeft
                    Caption = 'Negrito'
                    Enabled = False
                    TabOrder = 4
                    OnClick = chkNegritoSolucaoClick
                  end
                end
              end
            end
            object pnlTopProblema: TPanel
              Left = 0
              Top = 0
              Width = 1031
              Height = 69
              Align = alTop
              AutoSize = True
              Padding.Top = 10
              Padding.Bottom = 20
              TabOrder = 0
              object lblDataProblema: TLabel
                Left = 633
                Top = 11
                Width = 31
                Height = 16
                Caption = '&Data'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lblChamadoProblema: TLabel
                Left = 519
                Top = 11
                Width = 59
                Height = 16
                Caption = '&Chamado'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lblCodProblema: TLabel
                Left = 752
                Top = 11
                Width = 43
                Height = 16
                Caption = '&C'#243'digo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lblTituloProblema: TLabel
                Left = 28
                Top = 11
                Width = 43
                Height = 16
                Caption = '*&T'#237'tulo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object edtDataProblema: TMaskEdit
                Left = 633
                Top = 27
                Width = 97
                Height = 21
                TabStop = False
                EditMask = '!99/99/0000;1;_'
                MaxLength = 10
                ReadOnly = True
                TabOrder = 2
                Text = '  /  /    '
              end
              object edtChamadoProblema: TEdit
                Tag = 1
                Left = 519
                Top = 27
                Width = 81
                Height = 21
                NumbersOnly = True
                ReadOnly = True
                TabOrder = 1
              end
              object edtCodProblema: TEdit
                Left = 752
                Top = 27
                Width = 73
                Height = 21
                Enabled = False
                TabOrder = 3
              end
              object edtTituloProblema: TEdit
                Left = 30
                Top = 27
                Width = 452
                Height = 21
                ReadOnly = True
                TabOrder = 0
              end
            end
            object pnlBodyDetalhesProblema: TPanel
              Left = 0
              Top = 195
              Width = 1031
              Height = 235
              Align = alTop
              AutoSize = True
              BevelOuter = bvNone
              Padding.Left = 30
              TabOrder = 2
              ExplicitTop = 201
              object pnlDetalhesProblema: TPanel
                Left = 30
                Top = 0
                Width = 1001
                Height = 235
                Align = alClient
                AutoSize = True
                BevelOuter = bvNone
                Padding.Right = 60
                Padding.Bottom = 20
                TabOrder = 0
                object lblDetalhesProblema: TLabel
                  Left = 0
                  Top = 0
                  Width = 941
                  Height = 17
                  Align = alTop
                  Caption = '*&Detalhes do problema'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitWidth = 143
                end
                object Panel2: TPanel
                  Left = 0
                  Top = 17
                  Width = 941
                  Height = 24
                  Align = alTop
                  BevelOuter = bvNone
                  TabOrder = 0
                  object cbNameFontDetalhes: TComboBox
                    Left = 41
                    Top = 0
                    Width = 98
                    Height = 22
                    Align = alLeft
                    Style = csOwnerDrawFixed
                    Enabled = False
                    ItemIndex = 0
                    TabOrder = 0
                    TabStop = False
                    Text = 'Arial'
                    OnChange = cbNameFontDetalhesChange
                    Items.Strings = (
                      'Arial'
                      'Calibri'
                      'Cambria'
                      'Candara'
                      'Comic Sans MS'
                      'Consolas'
                      'Courier New'
                      'Georgia'
                      'Impact'
                      'Lucida Console'
                      'Lucida Sans Unicode'
                      'Microsoft Sans Serif'
                      'Palatino Linotype'
                      'Segoe UI'
                      'Tahoma'
                      'Times New Roman'
                      'Trebuchet MS'
                      'Verdana')
                  end
                  object cbSizeFontDetalhes: TComboBox
                    Left = 0
                    Top = 0
                    Width = 41
                    Height = 22
                    Align = alLeft
                    Style = csOwnerDrawFixed
                    Color = clWhite
                    Enabled = False
                    ItemIndex = 9
                    TabOrder = 1
                    TabStop = False
                    Text = '10'
                    OnChange = cbSizeFontDetalhesChange
                    Items.Strings = (
                      '1'
                      '2'
                      '3'
                      '4'
                      '5'
                      '6'
                      '7'
                      '8'
                      '9'
                      '10'
                      '11'
                      '12'
                      '13'
                      '14'
                      '15'
                      '16'
                      '17'
                      '18'
                      '19'
                      '20'
                      '21'
                      '22'
                      '23'
                      '24'
                      '25'
                      '26'
                      '27'
                      '28'
                      '29'
                      '30'
                      '31'
                      '32'
                      '33'
                      '34'
                      '35'
                      '36'
                      '37'
                      '38'
                      '39'
                      '40'
                      '41'
                      '42'
                      '43'
                      '44'
                      '45'
                      '46'
                      '47'
                      '48'
                      '49'
                      '50')
                  end
                  object chkItalicoDetalhes: TCheckBox
                    Left = 201
                    Top = 0
                    Width = 56
                    Height = 24
                    TabStop = False
                    Align = alLeft
                    Caption = 'It'#225'lico'
                    Enabled = False
                    TabOrder = 2
                    OnClick = chkItalicoDetalhesClick
                  end
                  object chkNegritoDetalhes: TCheckBox
                    Left = 139
                    Top = 0
                    Width = 62
                    Height = 24
                    TabStop = False
                    Align = alLeft
                    Caption = 'Negrito'
                    Enabled = False
                    TabOrder = 3
                    OnClick = chkNegritoDetalhesClick
                  end
                end
                object mmDetalhesProblema: TRichEdit
                  Tag = 1
                  Left = 0
                  Top = 41
                  Width = 941
                  Height = 174
                  Align = alClient
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  ScrollBars = ssVertical
                  TabOrder = 1
                  Zoom = 100
                  OnEnter = mmDetalhesProblemaEnter
                  ExplicitTop = 45
                end
              end
            end
          end
        end
      end
    end
  end
end
