object formPrincipal: TformPrincipal
  Left = 0
  Top = 0
  Caption = 'Problemas Suporte'
  ClientHeight = 884
  ClientWidth = 1928
  Color = 16640729
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 1928
    Height = 884
    Align = alClient
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 1535
    ExplicitHeight = 748
    object pnlBodyModulosProblemas: TPanel
      Left = 0
      Top = 0
      Width = 512
      Height = 870
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'pnlBodyModulosProblemas'
      TabOrder = 0
      ExplicitHeight = 734
      object pnlBodyProblemas: TPanel
        Left = 241
        Top = 0
        Width = 271
        Height = 870
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitHeight = 734
        object pnlTopProblemas: TPanel
          Left = 0
          Top = 0
          Width = 271
          Height = 257
          Align = alTop
          Color = 16708071
          ParentBackground = False
          TabOrder = 0
          object lblTituloProblemas: TLabel
            Left = 1
            Top = 1
            Width = 269
            Height = 76
            Align = alClient
            Alignment = taCenter
            Caption = 'Problemas'
            Color = 16708071
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
            ExplicitWidth = 79
            ExplicitHeight = 18
          end
          object lblTotalDeProblemas: TLabel
            Left = 5
            Top = 1
            Width = 35
            Height = 13
            Caption = 'Total: '
            Color = clMedGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object pnlBotaoCrudProblema: TPanel
            Left = 1
            Top = 77
            Width = 269
            Height = 27
            Align = alBottom
            TabOrder = 0
            object btnExcluirProblema: TSpeedButton
              Left = 203
              Top = 1
              Width = 65
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
              ExplicitLeft = 200
            end
            object btnCancelarProblema: TSpeedButton
              Left = 136
              Top = 1
              Width = 67
              Height = 25
              Align = alRight
              Caption = 'Cancelar(F4)'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Spacing = 2
              OnClick = btnCancelarProblemaClick
              ExplicitLeft = 144
            end
            object btnSalvarProblema: TSpeedButton
              Left = 66
              Top = 1
              Width = 67
              Height = 25
              Align = alLeft
              Caption = 'Salvar(F3)'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Spacing = 2
              OnClick = btnSalvarProblemaClick
              ExplicitLeft = 68
            end
            object btnNovoProblema: TSpeedButton
              Left = 1
              Top = 1
              Width = 65
              Height = 25
              Align = alLeft
              Caption = 'Novo(F2)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Spacing = 2
              OnClick = btnNovoProblemaClick
              ExplicitLeft = 3
              ExplicitTop = 0
            end
          end
          object pnlBodyPesqProblema: TPanel
            Left = 1
            Top = 104
            Width = 269
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
              Width = 251
              Height = 134
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object lblPesqProblema: TLabel
                Left = 0
                Top = 0
                Width = 251
                Height = 13
                Align = alTop
                Caption = 'Pesquisa'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 42
              end
              object edtPesqProblema: TEdit
                Left = 0
                Top = 13
                Width = 251
                Height = 21
                Align = alTop
                TabOrder = 0
                OnChange = edtPesqProblemaChange
              end
              object pnlFiltroPesqProblema: TPanel
                Left = 0
                Top = 34
                Width = 251
                Height = 100
                Align = alClient
                BevelOuter = bvNone
                Padding.Top = 10
                TabOrder = 1
                object SpeedButton1: TSpeedButton
                  Left = 119
                  Top = 9
                  Width = 23
                  Height = 22
                  Caption = '<>'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  OnClick = SpeedButton1Click
                end
                object rdbtnFiltroPesqProblema: TRadioGroup
                  Left = 0
                  Top = 43
                  Width = 251
                  Height = 57
                  Align = alBottom
                  Caption = 'Filtro da pesquisa'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = 1
                  Items.Strings = (
                    'Geral'
                    'Somente do m'#243'dulo')
                  ParentFont = False
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
                  Items.Strings = (
                    'C'#243'digo'
                    'T'#237'tulo'
                    'Chamado'
                    'Detalhes'
                    'Solu'#231#227'o'
                    '')
                end
              end
            end
          end
          object btnAtualizarGridProblemas: TBitBtn
            Left = 5
            Top = 50
            Width = 41
            Height = 21
            Glyph.Data = {
              42040000424D4204000000000000420000002800000010000000100000000100
              20000300000000040000760000007600000000000000000000000000FF0000FF
              0000FF0000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000EC9B6142ED9D
              6191ED9C61B6D37C4DE9D57E4ED0DB8553710000000000000000000000000000
              000000000000000000000000000000000000E8A25D0BED9C60C1ED9C61FFED9C
              61FFED9C61FFCC7347FFCC7347FFCC7347FFD37C4CEEDC875533000000000000
              00000000000000000000000000000000000000000000ED9C618EED9C61FFED9C
              61BAEE9C6184D68150BCD37D4DEBCC7447FFCC7347FFCE7749FCD98757350000
              00000000000000000000FF808002ED9B615400000000FF808002EB9E61320000
              0000000000000000000000000000DC865365CF774AFDCC7347FFD37B4CEF0000
              00000000000000000000ED9C618EED9C61FFEC9B626B00000000000000000000
              000000000000000000000000000000000000DC865365CC7347FFCC7347FFDB85
              537100000000EC9D606DED9C61FFED9C61FFED9C61FBEE9D6249000000000000
              00000000000000000000000000000000000000000000D37C4CEACC7347FFD57E
              4ED000000000ED9C6198EC9C61EAED9C61FFED9C61CFED9C617E000000000000
              000000000000000000000000000000000000DC865365D47E4EE3CC7347FFD17A
              4BF5D985527900000000ED9C61B6ED9C61FFEC9D607A00000000000000000000
              000000000000000000000000000000000000D57F4FCFCC7347FFCC7347FFCC73
              47FFD37C4DEA00000000EE9B6292ED9C61FFEC9D61B300000000000000000000
              000000000000000000000000000000000000DF806008D37C4DEACC7347FFD279
              4BF7DC84581D00000000EC9C5F43ED9C61FFED9C61FDEC9A6035000000000000
              00000000000000000000000000000000000000000000D68F5C19D37C4CEADF89
              5238000000000000000000000000ED9C60C1ED9C61FFED9C61E5EC9A60350000
              0000000000000000000000000000DB875162DB84527A00000000000000000000
              0000000000000000000000000000ED9B641CED9B61E4ED9C61FFED9C61FDEC9D
              61B3EC9B617BD78150BAD37C4DE9CC7347FFCE7548FEDC875257000000000000
              000000000000000000000000000000000000ED9B641CED9C61C2ED9C61FFED9C
              61FFED9C61FFCC7347FFCC7347FFCC7347FFD27B4DF0DA865337000000000000
              0000000000000000000000000000000000000000000000000000EC9C5F43EE9D
              6094ED9C61B5D37C4DEAD78050D0D98552730000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000}
            TabOrder = 2
            OnClick = btnAtualizarGridProblemasClick
          end
        end
        object pnlGridProblemas: TPanel
          Left = 0
          Top = 257
          Width = 271
          Height = 613
          Align = alClient
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          ExplicitHeight = 477
          object gridProblemas: TDBGrid
            Left = 1
            Top = 1
            Width = 269
            Height = 611
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
            OnDrawColumnCell = gridProblemasDrawColumnCell
          end
        end
      end
      object pnlBodyModulos: TPanel
        Left = 0
        Top = 0
        Width = 241
        Height = 870
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitHeight = 734
        object pnlTopModulos: TPanel
          Left = 0
          Top = 0
          Width = 241
          Height = 257
          Align = alTop
          Color = 16708071
          ParentBackground = False
          TabOrder = 0
          object lblTituloModulo: TLabel
            Left = 1
            Top = 1
            Width = 239
            Height = 76
            Align = alClient
            Alignment = taCenter
            Caption = 'M'#243'dulos'
            Color = 16708071
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
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
            BevelOuter = bvSpace
            Color = 16708071
            ParentBackground = False
            TabOrder = 0
            object btnExcluirModulo: TSpeedButton
              Left = 190
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
              OnClick = btnExcluirModuloClick
              ExplicitLeft = 191
              ExplicitTop = 0
            end
            object btnNovoModulo: TSpeedButton
              Left = 1
              Top = 1
              Width = 48
              Height = 25
              Align = alLeft
              Caption = 'Novo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = btnNovoModuloClick
              ExplicitLeft = 9
              ExplicitTop = 2
            end
            object btnCancelarModulo: TSpeedButton
              Left = 142
              Top = 1
              Width = 48
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
              OnClick = btnCancelarModuloClick
              ExplicitTop = 5
            end
            object btnSalvarModulo: TSpeedButton
              Left = 49
              Top = 1
              Width = 48
              Height = 25
              Align = alLeft
              Caption = 'Salvar'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = btnSalvarModuloClick
            end
          end
          object pnlBodyPesqModulo: TPanel
            Left = 1
            Top = 104
            Width = 239
            Height = 152
            Align = alBottom
            BevelOuter = bvLowered
            Color = 16708071
            Padding.Left = 8
            Padding.Top = 8
            Padding.Right = 8
            Padding.Bottom = 8
            ParentBackground = False
            TabOrder = 1
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
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 42
              end
              object edtPesqModulo: TEdit
                Left = 0
                Top = 13
                Width = 221
                Height = 21
                Align = alTop
                TabOrder = 0
                OnChange = edtPesqModuloChange
              end
            end
            object edtNomeModulo: TDBEdit
              Left = 9
              Top = 72
              Width = 221
              Height = 21
              DataField = 'nome'
              DataSource = dsModulos
              TabOrder = 1
            end
          end
        end
        object pnlGridModulos: TPanel
          Left = 0
          Top = 257
          Width = 241
          Height = 613
          Align = alClient
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          ExplicitHeight = 477
          object gridModulos: TDBGrid
            Left = 1
            Top = 1
            Width = 239
            Height = 611
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            DataSource = dsModulos
            DrawingStyle = gdsGradient
            GradientEndColor = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgTitleClick, dgTitleHotTrack]
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
            OnKeyDown = gridModulosKeyDown
          end
        end
      end
    end
    object cardPanelProblemas: TCardPanel
      Left = 512
      Top = 0
      Width = 1416
      Height = 870
      Align = alClient
      ActiveCard = pnlCadastroProblema
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 1023
      ExplicitHeight = 734
      object pnlCadastroProblema: TCard
        Left = 0
        Top = 0
        Width = 1416
        Height = 870
        Caption = 'Painel problema'
        CardIndex = 0
        TabOrder = 0
        ExplicitWidth = 1023
        ExplicitHeight = 734
        object pnlEscolhaUmRegistro: TPanel
          Left = 0
          Top = 0
          Width = 1416
          Height = 870
          Align = alClient
          Caption = 'Selecione um registro'
          Color = 16708071
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          ExplicitWidth = 1023
          ExplicitHeight = 734
          object pnlProblemas: TPanel
            Left = 6
            Top = 33
            Width = 1025
            Height = 835
            BevelOuter = bvNone
            Color = 16708071
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            TabStop = True
            Visible = False
            object pnlBodyModuloProblema: TPanel
              Left = 0
              Top = 67
              Width = 1025
              Height = 108
              Align = alTop
              Anchors = []
              BevelOuter = bvNone
              Padding.Left = 30
              Padding.Top = 20
              TabOrder = 1
              ExplicitTop = 69
              ExplicitWidth = 1021
              object btnImagensProblema: TSpeedButton
                Left = 349
                Top = 34
                Width = 115
                Height = 53
                Caption = 'Imagens (0)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                OnClick = btnImagensProblemaClick
              end
              object pnlModuloProblema: TPanel
                Left = 30
                Top = 20
                Width = 210
                Height = 88
                Align = alLeft
                AutoSize = True
                BevelOuter = bvNone
                TabOrder = 0
                object lblModuloProblema: TLabel
                  Left = 0
                  Top = 0
                  Width = 210
                  Height = 15
                  Align = alTop
                  Caption = '*&M'#243'dulo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitWidth = 47
                end
                object cbModulo: TComboBox
                  Left = 64
                  Top = 17
                  Width = 137
                  Height = 21
                  Style = csDropDownList
                  Color = clWhite
                  TabOrder = 1
                  OnChange = cbModuloChange
                end
                object edtCodModulo: TDBEdit
                  Left = 0
                  Top = 17
                  Width = 57
                  Height = 21
                  DataField = 'cod_mod'
                  DataSource = dsProblemas
                  Enabled = False
                  TabOrder = 0
                end
              end
              object chkSomenteSolucao: TDBCheckBox
                Left = 30
                Top = 72
                Width = 149
                Height = 17
                Caption = 'Mostrar somente solu'#231#227'o'
                DataField = 'somentesolu'
                DataSource = dsProblemas
                TabOrder = 1
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                OnClick = chkSomenteSolucaoClick
              end
            end
            object pnlBodySolucaoProblema: TPanel
              Left = 0
              Top = 456
              Width = 1025
              Height = 375
              AutoSize = True
              BevelOuter = bvNone
              Padding.Left = 30
              TabOrder = 3
              object pnlSolucaoProblema: TPanel
                Left = 30
                Top = 0
                Width = 995
                Height = 375
                BevelOuter = bvNone
                Padding.Right = 60
                TabOrder = 0
                object lblSolucaoProblema: TLabel
                  Left = 0
                  Top = 0
                  Width = 935
                  Height = 15
                  Align = alTop
                  Caption = '&Solu'#231#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitWidth = 43
                end
                object mmSolucaoProblema: TDBWPRichText
                  Left = 0
                  Top = 45
                  Width = 935
                  Height = 330
                  AutoDisplay = True
                  DataField = 'solucao'
                  DataSource = dsProblemas
                  NoUpdateOnExit = False
                  NoReloadOnEdit = True
                  NoResetOnEscape = False
                  RTFVariables = <>
                  WPToolBar = WPToolbar2
                  LayoutMode = wplayNormal
                  ScrollBars = ssVertical
                  ProtectedProp = []
                  InsertPointAttr.TextColor = clRed
                  InsertPointAttr.UseTextColor = True
                  HyperlinkTextAttr.Underline = tsTRUE
                  HyperlinkTextAttr.HotStyleIsActive = True
                  HyperlinkTextAttr.UnderlineColor = clBlue
                  HyperlinkTextAttr.UseUnderlineColor = True
                  HyperlinkTextAttr.HotUnderlineColor = clRed
                  HyperlinkTextAttr.HotTextColor = clRed
                  HyperlinkTextAttr.HotUnderline = tsTRUE
                  HiddenTextAttr.Hidden = True
                  Align = alClient
                  TabOrder = 0
                end
                object WPToolbar2: TWPToolbar
                  Left = 0
                  Top = 15
                  Width = 935
                  Height = 30
                  ImageStretch = False
                  ColorTo = 15790316
                  UseDockManager = False
                  ConfigString = '1b1cB4B5B6|C1C2C3C4'
                  ShowAllElements = wpSelectedElements
                  Align = alTop
                  BevelLines = []
                  AutoEnabling = True
                  WidthBetweenGroups = 4
                  MarginBottom = 0
                  MarginTop = 0
                  sel_DatabaseIcons = []
                  FlatButtons = True
                  ButtonHeight = 22
                end
              end
            end
            object pnlTopProblema: TPanel
              Left = 0
              Top = 0
              Width = 1025
              Height = 67
              Align = alTop
              Anchors = []
              AutoSize = True
              BevelOuter = bvNone
              Color = 16708071
              Padding.Top = 10
              Padding.Bottom = 20
              ParentBackground = False
              TabOrder = 0
              object lblDataProblema: TLabel
                Left = 633
                Top = 10
                Width = 29
                Height = 14
                Caption = '&Data'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lblChamadoProblema: TLabel
                Left = 519
                Top = 10
                Width = 57
                Height = 14
                Caption = '&Chamado'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lblCodProblema: TLabel
                Left = 752
                Top = 10
                Width = 43
                Height = 14
                Caption = '&C'#243'digo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lblTituloProblema: TLabel
                Left = 28
                Top = 10
                Width = 43
                Height = 14
                Caption = '*&T'#237'tulo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object edtTituloProblema: TDBEdit
                Left = 28
                Top = 26
                Width = 454
                Height = 21
                DataField = 'titulo'
                DataSource = dsProblemas
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                OnMouseMove = edtTituloProblemaMouseMove
              end
              object edtChamadoProblema: TDBEdit
                Left = 519
                Top = 26
                Width = 81
                Height = 21
                DataField = 'chamado'
                DataSource = dsProblemas
                TabOrder = 1
              end
              object edtCodProblema: TDBEdit
                Left = 752
                Top = 26
                Width = 73
                Height = 21
                DataField = 'cod_prob'
                DataSource = dsProblemas
                Enabled = False
                TabOrder = 2
              end
              object dtProblema: TDateTimePicker
                Left = 632
                Top = 26
                Width = 97
                Height = 21
                Date = 45076.000000000000000000
                Time = 0.848554212963790600
                Enabled = False
                TabOrder = 3
              end
            end
            object pnlBodyDetalhesProblema: TPanel
              Left = 0
              Top = 177
              Width = 1025
              Height = 248
              BevelOuter = bvNone
              Padding.Left = 30
              TabOrder = 2
              object pnlDetalhesProblema: TPanel
                Left = 30
                Top = 0
                Width = 995
                Height = 249
                BevelOuter = bvNone
                Padding.Right = 60
                Padding.Bottom = 20
                TabOrder = 0
                object lblDetalhesProblema: TLabel
                  Left = 0
                  Top = 0
                  Width = 935
                  Height = 15
                  Align = alTop
                  Caption = '&Detalhes do problema'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitWidth = 122
                end
                object WPToolbar1: TWPToolbar
                  Left = 0
                  Top = 15
                  Width = 935
                  Height = 30
                  ImageStretch = False
                  ColorTo = 15790316
                  UseDockManager = False
                  ConfigString = '1b1cB4B5B6|C1C2C3C4'
                  ShowAllElements = wpSelectedElements
                  Align = alTop
                  BevelLines = []
                  AutoEnabling = True
                  WidthBetweenGroups = 4
                  MarginBottom = 0
                  MarginTop = 0
                  sel_DatabaseIcons = []
                  FlatButtons = True
                  ButtonHeight = 22
                  ExplicitTop = 9
                end
                object mmDetalhesProblema: TDBWPRichText
                  Left = 0
                  Top = 45
                  Width = 935
                  Height = 204
                  AutoDisplay = True
                  DataField = 'detalhes'
                  DataSource = dsProblemas
                  NoUpdateOnExit = False
                  NoReloadOnEdit = True
                  NoResetOnEscape = False
                  RTFVariables = <>
                  WPToolBar = WPToolbar1
                  LayoutMode = wplayNormal
                  ScrollBars = ssVertical
                  AcceptFiles = True
                  AcceptFilesOptions = [wpDropCreatesLinkedImage, wpDropCreatesMovableParObject, wpDropCreatesMovablePageObject, wpDropCreatesNoWrapImage]
                  ProtectedProp = []
                  InsertPointAttr.TextColor = clRed
                  InsertPointAttr.UseTextColor = True
                  HyperlinkTextAttr.Underline = tsTRUE
                  HyperlinkTextAttr.HotStyleIsActive = True
                  HyperlinkTextAttr.UnderlineColor = clBlue
                  HyperlinkTextAttr.UseUnderlineColor = True
                  HyperlinkTextAttr.HotUnderlineColor = clRed
                  HyperlinkTextAttr.HotTextColor = clRed
                  HyperlinkTextAttr.HotUnderline = tsTRUE
                  HiddenTextAttr.Hidden = True
                  Align = alTop
                  TabOrder = 1
                end
              end
            end
          end
        end
      end
    end
    object StatusBar1: TStatusBar
      Left = 0
      Top = 870
      Width = 1928
      Height = 14
      Panels = <
        item
          Text = 'Usu'#225'rio:'
          Width = 50
        end>
      ExplicitTop = 734
      ExplicitWidth = 1535
    end
  end
  object dsModulos: TDataSource
    Left = 19
    Top = 210
  end
  object dsProblemas: TDataSource
    Left = 451
    Top = 210
  end
end
