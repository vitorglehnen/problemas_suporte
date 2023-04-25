object formPrincipal: TformPrincipal
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Problemas Suporte'
  ClientHeight = 749
  ClientWidth = 1920
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 1920
    Height = 749
    Align = alClient
    AutoSize = True
    TabOrder = 0
    object pnlBodyModulosProblemas: TPanel
      Left = 1
      Top = 1
      Width = 512
      Height = 747
      Align = alLeft
      Caption = 'pnlBodyModulosProblemas'
      TabOrder = 0
      object pnlBodyProblemas: TPanel
        Left = 242
        Top = 1
        Width = 269
        Height = 745
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
            ExplicitWidth = 79
            ExplicitHeight = 18
          end
          object lblTotalDeProblemas: TLabel
            Left = 6
            Top = 6
            Width = 95
            Height = 12
            Caption = 'Total de problemas: '
            Color = clMedGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBtnText
            Font.Height = -9
            Font.Name = 'Segoe UI Light'
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
              Spacing = 2
              OnMouseDown = btnSalvarProblemaMouseDown
              ExplicitLeft = 71
              ExplicitTop = 5
            end
            object btnExcluirProblema: TSpeedButton
              Left = 218
              Top = 1
              Width = 48
              Height = 25
              Align = alRight
              Caption = 'Excluir'
              Spacing = 2
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
              Spacing = 2
              OnMouseDown = btnCancelarProblemaMouseDown
              ExplicitLeft = 174
              ExplicitTop = 5
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
          Height = 488
          Align = alClient
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object gridProblemas: TDBGrid
            Left = 1
            Top = 1
            Width = 267
            Height = 486
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            DrawingStyle = gdsGradient
            GradientEndColor = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
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
          end
        end
      end
      object pnlBodyModulos: TPanel
        Left = 1
        Top = 1
        Width = 241
        Height = 745
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
            Font.Color = clWindowText
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
            object btnSalvarModulo: TSpeedButton
              Left = 49
              Top = 1
              Width = 48
              Height = 25
              Align = alLeft
              Caption = 'Salvar'
              Enabled = False
              OnMouseDown = btnSalvarModuloMouseDown
              ExplicitTop = 5
            end
            object btnCancelarModulo: TSpeedButton
              Left = 142
              Top = 1
              Width = 48
              Height = 25
              Align = alRight
              Caption = 'Cancelar'
              Enabled = False
              OnMouseDown = btnCancelarModuloMouseDown
              ExplicitLeft = 136
              ExplicitTop = -4
            end
            object btnEditarModulo: TSpeedButton
              Left = 190
              Top = 1
              Width = 48
              Height = 25
              Align = alRight
              Caption = 'Editar'
              OnMouseDown = btnEditarModuloMouseDown
              ExplicitLeft = 188
              ExplicitTop = 5
            end
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
            object pnlPesqModulo: TPanel
              Left = 9
              Top = 9
              Width = 221
              Height = 46
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object lblPesqModulo: TLabel
                Left = 0
                Top = 0
                Width = 221
                Height = 13
                Align = alTop
                Caption = 'M'#243'dulo'
                ExplicitWidth = 34
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
            object edtNomeModulo: TLabeledEdit
              Left = 9
              Top = 88
              Width = 217
              Height = 21
              CharCase = ecUpperCase
              EditLabel.Width = 79
              EditLabel.Height = 13
              EditLabel.Caption = 'Nome do m'#243'dulo'
              Enabled = False
              TabOrder = 1
              OnExit = edtNomeModuloExit
            end
          end
        end
        object pnlGridModulos: TPanel
          Left = 0
          Top = 257
          Width = 241
          Height = 488
          Align = alClient
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object gridModulos: TDBGrid
            Left = 1
            Top = 1
            Width = 239
            Height = 486
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            DrawingStyle = gdsGradient
            GradientEndColor = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnCellClick = gridModulosCellClick
            OnColExit = gridModulosColExit
          end
        end
      end
    end
    object cardPanelProblemas: TCardPanel
      Left = 513
      Top = 1
      Width = 1406
      Height = 747
      Align = alClient
      ActiveCard = pnlCadastroProblema
      AutoSize = True
      TabOrder = 1
      OnExit = cardPanelProblemasExit
      object pnlCadastroProblema: TCard
        Left = 1
        Top = 1
        Width = 1404
        Height = 745
        Caption = 'pnlCadastroProblema'
        CardIndex = 0
        TabOrder = 0
        object pnlProblemas: TPanel
          Left = 0
          Top = 0
          Width = 1404
          Height = 745
          Align = alClient
          AutoSize = True
          BevelOuter = bvNone
          Enabled = False
          TabOrder = 0
          TabStop = True
          object pnlBodyModuloProblema: TPanel
            Left = 0
            Top = 87
            Width = 1404
            Height = 100
            Align = alTop
            AutoSize = True
            BevelOuter = bvNone
            Padding.Left = 30
            Padding.Top = 20
            TabOrder = 1
            ExplicitTop = 72
            object SpeedButton1: TSpeedButton
              Left = 1052
              Top = 33
              Width = 103
              Height = 34
              Caption = 'Ver imagens'
              Enabled = False
            end
            object SpeedButton2: TSpeedButton
              Left = 943
              Top = 32
              Width = 103
              Height = 34
              Caption = 'Adicionar imagens'
            end
            object pnlModuloProblema: TPanel
              Left = 30
              Top = 20
              Width = 135
              Height = 80
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
                Caption = 'Modulo do problema'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitWidth = 131
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
            Top = 422
            Width = 1404
            Height = 323
            Align = alClient
            AutoSize = True
            BevelOuter = bvNone
            Padding.Left = 30
            Padding.Right = 250
            TabOrder = 2
            ExplicitTop = 407
            ExplicitHeight = 338
            object pnlSolucaoProblema: TPanel
              Left = 30
              Top = 0
              Width = 1124
              Height = 323
              Align = alClient
              AutoSize = True
              BevelOuter = bvNone
              Padding.Bottom = 20
              TabOrder = 0
              ExplicitHeight = 338
              object lblSolucaoProblema: TLabel
                Left = 0
                Top = 0
                Width = 1124
                Height = 17
                Align = alTop
                Caption = 'Solu'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitWidth = 48
              end
              object mmSolucaoProblema: TRichEdit
                Left = 0
                Top = 17
                Width = 1124
                Height = 286
                Align = alClient
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
                Zoom = 100
                ExplicitTop = 23
                ExplicitHeight = 263
              end
            end
          end
          object pnlTopProblema: TPanel
            Left = 0
            Top = 0
            Width = 1404
            Height = 87
            Align = alTop
            AutoSize = True
            TabOrder = 0
            ExplicitTop = 24
            object lblDataProblema: TLabel
              Left = 633
              Top = 20
              Width = 36
              Height = 21
              Caption = 'Data'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lblChamadoProblema: TLabel
              Left = 519
              Top = 20
              Width = 69
              Height = 21
              Caption = 'Chamado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lblCodProblema: TLabel
              Left = 752
              Top = 34
              Width = 33
              Height = 15
              Caption = 'C'#243'digo'
            end
            object edtDataProblema: TMaskEdit
              Left = 633
              Top = 47
              Width = 97
              Height = 22
              EditMask = '!99/99/0000;1;_'
              MaxLength = 10
              ReadOnly = True
              TabOrder = 0
              Text = '  /  /    '
            end
            object edtChamadoProblema: TEdit
              Tag = 1
              Left = 519
              Top = 47
              Width = 81
              Height = 21
              NumbersOnly = True
              ReadOnly = True
              TabOrder = 1
            end
            object pnlTituloProblema: TPanel
              Left = 1
              Top = 1
              Width = 512
              Height = 85
              Align = alLeft
              AutoSize = True
              BevelOuter = bvNone
              Padding.Left = 30
              Padding.Top = 10
              Padding.Right = 30
              Padding.Bottom = 10
              TabOrder = 2
              ExplicitTop = 2
              ExplicitHeight = 84
              object lblTituloProblema: TLabel
                Left = 30
                Top = 19
                Width = 452
                Height = 21
                Caption = 'T'#237'tulo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -17
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object edtTituloProblema: TEdit
                Left = 30
                Top = 46
                Width = 452
                Height = 21
                ReadOnly = True
                TabOrder = 0
              end
            end
            object edtCodProblema: TEdit
              Left = 752
              Top = 47
              Width = 73
              Height = 21
              Enabled = False
              TabOrder = 3
            end
          end
          object pnlBodyDetalhesProblema: TPanel
            Left = 0
            Top = 187
            Width = 1404
            Height = 235
            Align = alTop
            AutoSize = True
            BevelOuter = bvNone
            Padding.Left = 30
            Padding.Right = 250
            TabOrder = 3
            ExplicitTop = 172
            object pnlDetalhesProblema: TPanel
              Left = 30
              Top = 0
              Width = 1124
              Height = 235
              Align = alClient
              AutoSize = True
              BevelOuter = bvNone
              Padding.Bottom = 20
              TabOrder = 0
              object lblDetalhesProblema: TLabel
                Left = 0
                Top = 0
                Width = 1124
                Height = 17
                Align = alTop
                Caption = 'Detalhes do problema'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitWidth = 137
              end
              object mmDetalhesProblema: TMemo
                Left = 0
                Top = 17
                Width = 1124
                Height = 198
                Align = alTop
                ReadOnly = True
                ScrollBars = ssVertical
                TabOrder = 0
                ExplicitLeft = -36
                ExplicitTop = 23
              end
            end
          end
        end
      end
      object pnlImagensProblema: TCard
        Left = 1
        Top = 1
        Width = 1404
        Height = 745
        Caption = 'pnlImagensProblema'
        CardIndex = 1
        TabOrder = 1
      end
    end
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
      end
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
      end
      item
      end
      item
        Items = <
          item
            Action = FormatRichEditBold1
            ImageIndex = 31
            ShortCut = 16450
          end
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
            Caption = 'Bu&llets'
            ImageIndex = 38
          end
          item
            Action = FormatRichEditAlignLeft1
            Caption = '&Align Left'
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
      end>
    Left = 1552
    Top = 489
    StyleName = 'Platform Default'
    object Action2: TAction
      Caption = 'Action2'
    end
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
    object FormatRichEditBold2: TRichEditBold
      Category = 'Format'
      AutoCheck = True
      Caption = '&Bold'
      Hint = 'Bold'
      ImageIndex = 31
      ShortCut = 16450
    end
    object FormatRichEditItalic2: TRichEditItalic
      Category = 'Format'
      AutoCheck = True
      Caption = '&Italic'
      Hint = 'Italic'
      ImageIndex = 29
      ShortCut = 16457
    end
    object FormatRichEditUnderline2: TRichEditUnderline
      Category = 'Format'
      AutoCheck = True
      Caption = '&Underline'
      Hint = 'Underline'
      ImageIndex = 28
      ShortCut = 16469
    end
    object FormatRichEditStrikeOut2: TRichEditStrikeOut
      Category = 'Format'
      AutoCheck = True
      Caption = '&Strikeout'
      Hint = 'Strikeout'
      ImageIndex = 44
    end
    object FormatRichEditBullets2: TRichEditBullets
      Category = 'Format'
      AutoCheck = True
      Caption = '&Bullets'
      Hint = 'Bullets|Inserts a bullet on the current line'
      ImageIndex = 38
    end
    object FormatRichEditAlignLeft2: TRichEditAlignLeft
      Category = 'Format'
      AutoCheck = True
      Caption = 'Align &Left'
      Hint = 'Align Left|Aligns text at the left indent'
      ImageIndex = 35
    end
    object FormatRichEditAlignRight2: TRichEditAlignRight
      Category = 'Format'
      AutoCheck = True
      Caption = 'Align &Right'
      Hint = 'Align Right|Aligns text at the right indent'
      ImageIndex = 36
    end
    object FormatRichEditAlignCenter2: TRichEditAlignCenter
      Category = 'Format'
      AutoCheck = True
      Caption = '&Center'
      Hint = 'Center|Centers text between margins'
      ImageIndex = 37
    end
    object FormatRichEditAlignCenter3: TRichEditAlignCenter
      Category = 'Format'
      AutoCheck = True
      Caption = '&Center'
      ImageIndex = 37
    end
    object CustomizeActionBars1: TCustomizeActionBars
      Category = 'Tools'
      Caption = '&Customize...'
      CustomizeDlg.StayOnTop = False
    end
  end
end
