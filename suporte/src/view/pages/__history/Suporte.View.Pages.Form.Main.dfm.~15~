object formPrincipal: TformPrincipal
  Left = 0
  Top = 0
  Caption = 'Suporte'
  ClientHeight = 749
  ClientWidth = 1492
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 1492
    Height = 749
    Align = alClient
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
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object pnlTopProblemas: TPanel
          Left = 0
          Top = 0
          Width = 269
          Height = 217
          Align = alTop
          TabOrder = 0
          object lblTituloProblemas: TLabel
            Left = 1
            Top = 1
            Width = 267
            Height = 67
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
          object pnlBotoesProblemas: TPanel
            Left = 1
            Top = 68
            Width = 267
            Height = 25
            Align = alBottom
            TabOrder = 0
            object btnNovoProblema: TSpeedButton
              Left = 1
              Top = 1
              Width = 64
              Height = 23
              Align = alLeft
              Caption = 'Novo(F3)'
              OnClick = btnNovoProblemaClick
            end
            object btnSalvarProblema: TSpeedButton
              Left = 65
              Top = 1
              Width = 64
              Height = 23
              Align = alLeft
              Caption = 'Salvar(F4)'
              Enabled = False
              OnClick = btnSalvarProblemaClick
              ExplicitLeft = 55
              ExplicitTop = 2
            end
            object btnExcluirProblema: TSpeedButton
              Left = 218
              Top = 1
              Width = 48
              Height = 23
              Align = alRight
              Caption = 'Excluir'
              OnClick = btnExcluirProblemaClick
              ExplicitLeft = 216
              ExplicitTop = -4
            end
            object btnCancelarProblema: TSpeedButton
              Left = 170
              Top = 1
              Width = 48
              Height = 23
              Align = alRight
              Caption = 'Cancelar'
              Enabled = False
              OnClick = btnCancelarProblemaClick
              ExplicitLeft = 164
              ExplicitTop = -4
            end
          end
          object pnlPesquisaProblemas: TPanel
            Left = 1
            Top = 93
            Width = 267
            Height = 123
            Align = alBottom
            TabOrder = 1
            object lblPesquisa: TLabel
              Left = 17
              Top = 6
              Width = 42
              Height = 13
              Caption = 'Pesquisa'
            end
            object edtPesquisaProblema: TEdit
              Left = 17
              Top = 25
              Width = 200
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              TabOrder = 0
              OnChange = edtPesquisaProblemaChange
            end
            object rdbtnFiltroPesquisaProblemas: TRadioGroup
              Left = 21
              Top = 52
              Width = 185
              Height = 61
              Caption = 'Filtro da pesquisa'
              ItemIndex = 1
              Items.Strings = (
                'Geral'
                'Somente do m'#243'dulo')
              TabOrder = 1
              OnClick = rdbtnFiltroPesquisaProblemasClick
            end
          end
        end
        object pnlGridProblemas: TPanel
          Left = 0
          Top = 217
          Width = 269
          Height = 528
          Align = alClient
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object gridProblemas: TDBGrid
            Left = 1
            Top = 1
            Width = 267
            Height = 526
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            DataSource = dmConnection.dsProblemas
            DrawingStyle = gdsGradient
            GradientEndColor = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = gridProblemasDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'PR_TITULO'
                Title.Caption = 'T'#237'tulo'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -14
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Visible = True
              end>
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
          Height = 217
          Align = alTop
          TabOrder = 0
          object lblTituloModulos: TLabel
            Left = 1
            Top = 1
            Width = 239
            Height = 67
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
          object pnlBotoesModulos: TPanel
            Left = 1
            Top = 68
            Width = 239
            Height = 25
            Align = alBottom
            TabOrder = 0
            object btnNovoModulo: TSpeedButton
              Left = 1
              Top = 1
              Width = 48
              Height = 23
              Align = alLeft
              Caption = 'Novo'
              OnClick = btnNovoModuloClick
              ExplicitLeft = -5
              ExplicitTop = -2
            end
            object btnSalvarModulo: TSpeedButton
              Left = 49
              Top = 1
              Width = 48
              Height = 23
              Align = alLeft
              Caption = 'Salvar'
              OnClick = btnSalvarModuloClick
              ExplicitLeft = 55
              ExplicitTop = -2
            end
            object btnExcluirModulo: TSpeedButton
              Left = 190
              Top = 1
              Width = 48
              Height = 23
              Align = alRight
              Caption = 'Excluir'
              OnClick = btnExcluirModuloClick
              ExplicitLeft = 188
              ExplicitTop = -2
            end
            object btnCancelarModulo: TSpeedButton
              Left = 142
              Top = 1
              Width = 48
              Height = 23
              Align = alRight
              Caption = 'Cancelar'
              OnClick = btnCancelarModuloClick
              ExplicitLeft = 136
              ExplicitTop = -2
            end
          end
          object pnlPesquisaModulos: TPanel
            Left = 1
            Top = 93
            Width = 239
            Height = 123
            Align = alBottom
            TabOrder = 1
            object lblPesquisaModulos: TLabel
              Left = 17
              Top = 6
              Width = 42
              Height = 13
              Caption = 'Pesquisa'
            end
            object edtPesquisaModulo: TEdit
              Left = 17
              Top = 25
              Width = 200
              Height = 21
              TabOrder = 0
              OnChange = edtPesquisaModuloChange
            end
          end
        end
        object pnlGridModulos: TPanel
          Left = 0
          Top = 217
          Width = 241
          Height = 528
          Align = alClient
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object gridModulos: TDBGrid
            Left = 1
            Top = 1
            Width = 239
            Height = 526
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            DataSource = dmConnection.dsModulos
            DrawingStyle = gdsGradient
            GradientEndColor = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ImeMode = imSAlpha
            Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
            Columns = <
              item
                Expanded = False
                FieldName = 'MO_NOME'
                Title.Caption = 'Nome'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 244
                Visible = True
              end>
          end
        end
      end
    end
    object cardPanelProblemas: TCardPanel
      Left = 513
      Top = 1
      Width = 978
      Height = 747
      Align = alClient
      ActiveCard = pnlImagensSolucao
      TabOrder = 1
      object pnlCadastroProblema: TCard
        Left = 1
        Top = 1
        Width = 976
        Height = 745
        Caption = 'pnlCadastroProblema'
        CardIndex = 0
        TabOrder = 0
        object pnlProblemas: TPanel
          Left = 0
          Top = 0
          Width = 976
          Height = 745
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          TabStop = True
          object lblModuloProblema: TLabel
            Left = 33
            Top = 76
            Width = 131
            Height = 17
            Caption = 'Modulo do problema'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblDetalhesProblema: TLabel
            Left = 33
            Top = 155
            Width = 137
            Height = 17
            Caption = 'Detalhes do problema'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblSolucaoProblema: TLabel
            Left = 33
            Top = 342
            Width = 48
            Height = 17
            Caption = 'Solu'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object pnlTituloProblema: TPanel
            Left = 0
            Top = 0
            Width = 976
            Height = 72
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            TabStop = True
            object lblTituloProblema: TLabel
              Left = 32
              Top = 3
              Width = 38
              Height = 19
              Caption = 'T'#237'tulo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblDataProblema: TLabel
              Left = 683
              Top = 0
              Width = 31
              Height = 19
              Caption = 'Data'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblNumeroChamado: TLabel
              Left = 528
              Top = 0
              Width = 105
              Height = 19
              Caption = 'N'#186' do chamado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edtTituloProblema: TDBEdit
              Left = 32
              Top = 28
              Width = 401
              Height = 24
              CharCase = ecUpperCase
              DataField = 'PR_TITULO'
              DataSource = dmConnection.dsProblemas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object edtHoraProblema: TDBEdit
              Left = 680
              Top = 25
              Width = 193
              Height = 21
              TabStop = False
              BorderStyle = bsNone
              Color = clBtnFace
              DataField = 'PR_DATA'
              DataSource = dmConnection.dsProblemas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object edtNumeroChamado: TDBEdit
              Left = 528
              Top = 25
              Width = 105
              Height = 24
              BiDiMode = bdLeftToRight
              DataField = 'PR_CHAMADO'
              DataSource = dmConnection.dsProblemas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 1
            end
          end
          object mmDetalhesProblema: TDBMemo
            Left = 33
            Top = 188
            Width = 624
            Height = 137
            DataField = 'PR_PROBLEMA'
            DataSource = dmConnection.dsProblemas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 2
          end
          object mmSolucao: TDBMemo
            Left = 32
            Top = 375
            Width = 624
            Height = 274
            DataField = 'PR_SOLUCAO'
            DataSource = dmConnection.dsProblemas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ScrollBars = ssVertical
            ShowHint = False
            TabOrder = 3
          end
          object cbModulos: TDBComboBox
            Left = 33
            Top = 95
            Width = 145
            Height = 24
            Style = csDropDownList
            DataField = 'PR_MODULO'
            DataSource = dmConnection.dsProblemas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object btnAddImagemProblema: TButton
            Left = 536
            Top = 143
            Width = 123
            Height = 25
            Caption = 'Adicionar imagem'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = btnAddImagemProblemaClick
          end
          object btnAddImagemSolucao: TButton
            Left = 536
            Top = 331
            Width = 123
            Height = 25
            Caption = 'Adicionar imagem'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnClick = btnAddImagemSolucaoClick
          end
          object btnVerImagens: TButton
            Left = 424
            Top = 143
            Width = 97
            Height = 25
            Caption = 'Ver imagens'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = btnVerImagensClick
          end
          object btnVerImagensSolucao: TButton
            Left = 424
            Top = 331
            Width = 97
            Height = 25
            Caption = 'Ver imagens'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnClick = btnVerImagensSolucaoClick
          end
        end
      end
      object pnlImagensProblema: TCard
        Left = 1
        Top = 1
        Width = 976
        Height = 745
        Caption = 'pnlImagensProblema'
        CardIndex = 1
        TabOrder = 1
        object pnlMainImagemProblema: TPanel
          Left = 0
          Top = 0
          Width = 976
          Height = 745
          Align = alClient
          BevelOuter = bvNone
          Padding.Left = 30
          Padding.Top = 30
          Padding.Right = 30
          Padding.Bottom = 30
          TabOrder = 0
          object pnlTopImagensProblemas: TPanel
            Left = 30
            Top = 30
            Width = 916
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object btnVoltarImagemProblema: TButton
              Left = 0
              Top = 0
              Width = 81
              Height = 41
              Align = alLeft
              Caption = 'Voltar'
              TabOrder = 0
              OnClick = btnVoltarImagemProblemaClick
            end
            object btnRemoverImagemProblema: TButton
              Left = 817
              Top = 0
              Width = 99
              Height = 41
              Align = alRight
              Caption = 'Remover imagem'
              TabOrder = 1
              OnClick = btnRemoverImagemProblemaClick
            end
            object Panel1: TPanel
              Left = 81
              Top = 0
              Width = 736
              Height = 41
              Align = alClient
              BevelOuter = bvNone
              Padding.Left = 150
              Padding.Right = 150
              TabOrder = 2
              object btnImagemSolucao: TButton
                Left = 150
                Top = 0
                Width = 436
                Height = 41
                Align = alClient
                Caption = 'Imagem da solu'#231#227'o'
                TabOrder = 0
                OnClick = btnImagemSolucaoClick
              end
            end
          end
          object pnlCenterImagemProblema: TPanel
            Left = 30
            Top = 71
            Width = 916
            Height = 644
            Align = alClient
            BevelOuter = bvNone
            Padding.Top = 20
            TabOrder = 1
            object imgProblema: TDBImage
              Left = 0
              Top = 20
              Width = 916
              Height = 624
              Align = alClient
              Color = clBtnFace
              DataField = 'PR_PRIMG'
              DataSource = dmConnection.dsProblemas
              TabOrder = 0
              OnKeyPress = imgProblemaKeyPress
            end
          end
        end
      end
      object pnlImagensSolucao: TCard
        Left = 1
        Top = 1
        Width = 976
        Height = 745
        Caption = 'pnlImagensSolucao'
        CardIndex = 2
        TabOrder = 2
        OnClick = pnlImagensSolucaoClick
        object pnlMainImagemSolucao: TPanel
          Left = 0
          Top = 0
          Width = 976
          Height = 745
          Align = alClient
          BevelOuter = bvNone
          Padding.Left = 30
          Padding.Top = 30
          Padding.Right = 30
          Padding.Bottom = 30
          TabOrder = 0
          object pnlTopImagemSolucao: TPanel
            Left = 30
            Top = 30
            Width = 916
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object btnRemoverImagemSolucao: TButton
              Left = 817
              Top = 0
              Width = 99
              Height = 41
              Align = alRight
              Caption = 'Remover imagem'
              TabOrder = 0
              OnClick = btnRemoverImagemSolucaoClick
            end
            object btnVoltarImagemSolucao: TButton
              Left = 0
              Top = 0
              Width = 81
              Height = 41
              Align = alLeft
              Caption = 'Voltar'
              TabOrder = 1
              OnClick = btnVoltarImagemSolucaoClick
            end
            object pnlTopCenterImagemSolucao: TPanel
              Left = 81
              Top = 0
              Width = 736
              Height = 41
              Align = alClient
              BevelOuter = bvNone
              Padding.Left = 150
              Padding.Right = 150
              TabOrder = 2
              object btnImagemProblema: TButton
                Left = 150
                Top = 0
                Width = 436
                Height = 41
                Align = alClient
                Caption = 'Imagem do problema'
                TabOrder = 0
                OnClick = btnImagemProblemaClick
              end
            end
          end
          object pnlCenterImagemSolucao: TPanel
            Left = 30
            Top = 71
            Width = 916
            Height = 644
            Align = alClient
            BevelOuter = bvNone
            Padding.Top = 20
            TabOrder = 1
            object imgSolucao: TDBImage
              Left = 0
              Top = 20
              Width = 916
              Height = 624
              Align = alClient
              Color = clBtnFace
              DataField = 'PR_SOLUCAOIMG'
              DataSource = dmConnection.dsProblemas
              TabOrder = 0
              OnKeyPress = imgSolucaoKeyPress
            end
          end
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 268
    Top = 25
  end
end
