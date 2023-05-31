object formPrincipal: TformPrincipal
  Left = 0
  Top = 0
  Align = alClient
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Problemas Suporte'
  ClientHeight = 759
  ClientWidth = 1549
  Color = 16640729
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
          Color = 16708071
          ParentBackground = False
          TabOrder = 0
          object lblTituloProblemas: TLabel
            Left = 1
            Top = 1
            Width = 267
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
            ExplicitLeft = 4
            ExplicitTop = -4
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
            Width = 267
            Height = 27
            Align = alBottom
            TabOrder = 0
            object btnExcluirProblema: TSpeedButton
              Left = 199
              Top = 1
              Width = 67
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
              ExplicitLeft = 218
            end
            object btnCancelarProblema: TSpeedButton
              Left = 132
              Top = 1
              Width = 67
              Height = 25
              Align = alRight
              Caption = 'Cancelar(F6)'
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
              Left = 68
              Top = 1
              Width = 67
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
            end
            object btnNovoProblema: TSpeedButton
              Left = 1
              Top = 1
              Width = 67
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
              OnClick = btnNovoProblemaClick
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
                Width = 249
                Height = 21
                Align = alTop
                TabOrder = 0
                OnChange = edtPesqProblemaChange
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
                  ItemIndex = 1
                  TabOrder = 1
                  Text = 'T'#237'tulo'
                  Items.Strings = (
                    'C'#243'digo'
                    'T'#237'tulo'
                    'Chamado')
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
              ExplicitLeft = 89
              ExplicitTop = -4
            end
            object btnNovoModulo: TSpeedButton
              Left = 1
              Top = 1
              Width = 48
              Height = 25
              Align = alLeft
              Caption = 'Novo'
              OnClick = btnNovoModuloClick
              ExplicitLeft = 9
              ExplicitTop = 2
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
              end
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
            DataSource = dsModulos
            DrawingStyle = gdsGradient
            GradientEndColor = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
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
          Color = 16708071
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
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
              Top = 69
              Width = 1031
              Height = 168
              Align = alTop
              AutoSize = True
              BevelOuter = bvNone
              Padding.Left = 30
              Padding.Top = 20
              TabOrder = 1
              object btnImagensProblema: TSpeedButton
                Left = 349
                Top = 34
                Width = 115
                Height = 53
                Caption = 'Imagens'
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
                Width = 209
                Height = 148
                Align = alLeft
                AutoSize = True
                BevelOuter = bvNone
                TabOrder = 0
                object lblModuloProblema: TLabel
                  Left = 0
                  Top = 0
                  Width = 209
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
                  Left = 63
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
                  TabOrder = 0
                end
              end
            end
            object pnlBodySolucaoProblema: TPanel
              Left = 0
              Top = 472
              Width = 1031
              Height = 281
              Align = alClient
              AutoSize = True
              BevelOuter = bvNone
              Padding.Left = 30
              TabOrder = 3
              object pnlSolucaoProblema: TPanel
                Left = 30
                Top = 0
                Width = 1001
                Height = 281
                Align = alClient
                AutoSize = True
                BevelOuter = bvNone
                Padding.Right = 60
                Padding.Bottom = 50
                TabOrder = 0
                object lblSolucaoProblema: TLabel
                  Left = 0
                  Top = 0
                  Width = 941
                  Height = 15
                  Align = alTop
                  Caption = '*&Solu'#231#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitWidth = 48
                end
                object mmSolucaoProblema: TDBRichEdit
                  Left = 0
                  Top = 15
                  Width = 941
                  Height = 216
                  Align = alClient
                  DataField = 'solucao'
                  DataSource = dsProblemas
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  TabOrder = 0
                  Zoom = 100
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
              Color = 16708071
              Padding.Top = 10
              Padding.Bottom = 20
              ParentBackground = False
              TabOrder = 0
              object lblDataProblema: TLabel
                Left = 633
                Top = 11
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
                Top = 11
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
                Top = 11
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
                Top = 11
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
                Top = 27
                Width = 454
                Height = 21
                DataField = 'titulo'
                DataSource = dsProblemas
                TabOrder = 0
              end
              object edtChamadoProblema: TDBEdit
                Left = 520
                Top = 27
                Width = 81
                Height = 21
                DataField = 'chamado'
                DataSource = dsProblemas
                TabOrder = 1
              end
              object edtCodProblema: TDBEdit
                Left = 752
                Top = 27
                Width = 73
                Height = 21
                DataField = 'cod_prob'
                DataSource = dsProblemas
                Enabled = False
                TabOrder = 2
              end
              object dtProblema: TDateTimePicker
                Left = 632
                Top = 27
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
              Top = 237
              Width = 1031
              Height = 235
              Align = alTop
              AutoSize = True
              BevelOuter = bvNone
              Padding.Left = 30
              TabOrder = 2
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
                  Height = 15
                  Align = alTop
                  Caption = '*&Detalhes do problema'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitWidth = 127
                end
                object mmDetalhesProblema: TDBRichEdit
                  Left = 0
                  Top = 38
                  Width = 941
                  Height = 177
                  Align = alClient
                  DataField = 'detalhes'
                  DataSource = dsProblemas
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  TabOrder = 0
                  Zoom = 100
                  ExplicitTop = 15
                  ExplicitHeight = 200
                end
                object ActionToolBar1: TActionToolBar
                  Left = 0
                  Top = 15
                  Width = 941
                  Height = 23
                  ActionManager = ActionManager1
                  Caption = 'ActionToolBar1'
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
              end
            end
          end
        end
      end
    end
  end
  object dsModulos: TDataSource
    Left = 19
    Top = 218
  end
  object dsProblemas: TDataSource
    Left = 451
    Top = 210
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = FormatRichEditItalic1
            ImageIndex = 29
            ShortCut = 16457
          end
          item
            Action = FormatRichEditUnderline1
            ImageIndex = 28
            ShortCut = 16469
          end
          item
            Action = FormatRichEditStrikeOut1
            ImageIndex = 44
          end
          item
            Action = FormatRichEditBullets1
            ImageIndex = 38
          end
          item
            Action = FormatRichEditAlignLeft1
            ImageIndex = 35
          end
          item
            Action = FormatRichEditAlignRight1
            ImageIndex = 36
          end
          item
            Action = FormatRichEditAlignCenter1
            ImageIndex = 37
          end>
        ActionBar = ActionToolBar1
      end>
    Left = 593
    Top = 376
    StyleName = 'Platform Default'
    object FormatRichEditBold1: TRichEditBold
      Category = 'Format'
      AutoCheck = True
      Caption = '&Bold'
      Hint = 'Bold'
      ImageIndex = 31
      ShortCut = 16450
    end
    object FormatRichEditItalic1: TRichEditItalic
      Category = 'Format'
      AutoCheck = True
      Caption = '&Italic'
      Hint = 'Italic'
      ImageIndex = 29
      ShortCut = 16457
    end
    object FormatRichEditUnderline1: TRichEditUnderline
      Category = 'Format'
      AutoCheck = True
      Caption = '&Underline'
      Hint = 'Underline'
      ImageIndex = 28
      ShortCut = 16469
    end
    object FormatRichEditStrikeOut1: TRichEditStrikeOut
      Category = 'Format'
      AutoCheck = True
      Caption = '&Strikeout'
      Hint = 'Strikeout'
      ImageIndex = 44
    end
    object FormatRichEditBullets1: TRichEditBullets
      Category = 'Format'
      AutoCheck = True
      Caption = '&Bullets'
      Hint = 'Bullets|Inserts a bullet on the current line'
      ImageIndex = 38
    end
    object FormatRichEditAlignLeft1: TRichEditAlignLeft
      Category = 'Format'
      AutoCheck = True
      Caption = 'Align &Left'
      Hint = 'Align Left|Aligns text at the left indent'
      ImageIndex = 35
    end
    object FormatRichEditAlignRight1: TRichEditAlignRight
      Category = 'Format'
      AutoCheck = True
      Caption = 'Align &Right'
      Hint = 'Align Right|Aligns text at the right indent'
      ImageIndex = 36
    end
    object FormatRichEditAlignCenter1: TRichEditAlignCenter
      Category = 'Format'
      AutoCheck = True
      Caption = '&Center'
      Hint = 'Center|Centers text between margins'
      ImageIndex = 37
    end
  end
end
