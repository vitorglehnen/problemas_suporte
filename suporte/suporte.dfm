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
          ExplicitWidth = 241
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
            ExplicitWidth = 236
          end
          object pnlBotoesProblemas: TPanel
            Left = 1
            Top = 68
            Width = 267
            Height = 25
            Align = alBottom
            TabOrder = 0
            ExplicitWidth = 239
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
              ExplicitLeft = 136
              ExplicitTop = -2
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
              ExplicitLeft = 136
              ExplicitTop = -2
            end
          end
          object pnlPesquisaProblemas: TPanel
            Left = 1
            Top = 93
            Width = 267
            Height = 123
            Align = alBottom
            TabOrder = 1
            ExplicitWidth = 239
            object Label4: TLabel
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
              TabOrder = 0
              OnChange = edtPesquisaProblemaChange
            end
            object rdbtnFiltroPesquisaProblemas: TRadioGroup
              Left = 21
              Top = 52
              Width = 185
              Height = 61
              Caption = 'Filtro da pesquisa'
              ItemIndex = 0
              Items.Strings = (
                'Geral'
                'Somente do m'#243'dulo')
              TabOrder = 1
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
          ExplicitWidth = 241
          object gridProblemas: TDBGrid
            Left = 1
            Top = 1
            Width = 267
            Height = 526
            Align = alClient
            BorderStyle = bsNone
            DataSource = dmQuerys.dsProblemas
            DrawingStyle = gdsGradient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
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
            Columns = <
              item
                Expanded = False
                FieldName = 'pr_titulo'
                Title.Alignment = taCenter
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
              Top = 16
              Width = 42
              Height = 13
              Caption = 'Pesquisa'
            end
            object edtPesquisaModulo: TEdit
              Left = 17
              Top = 35
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
            DataSource = dmQuerys.dsModulos
            DrawingStyle = gdsGradient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnCellClick = gridModulosCellClick
            OnKeyDown = gridModulosKeyDown
            OnMouseWheel = gridModulosMouseWheel
            Columns = <
              item
                Expanded = False
                FieldName = 'mo_nome'
                Title.Alignment = taCenter
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
    object CardPanel1: TCardPanel
      Left = 513
      Top = 1
      Width = 978
      Height = 747
      Align = alClient
      ActiveCard = pnlCadastroProblema
      TabOrder = 1
      ExplicitLeft = 484
      ExplicitWidth = 1007
      object pnlCadastroProblema: TCard
        Left = 1
        Top = 1
        Width = 976
        Height = 745
        Caption = 'pnlCadastroProblema'
        CardIndex = 0
        TabOrder = 0
        ExplicitWidth = 1005
        object pnlProblemas: TPanel
          Left = 0
          Top = 0
          Width = 976
          Height = 745
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          TabStop = True
          ExplicitWidth = 973
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
            ExplicitLeft = 2
            ExplicitTop = 1
            ExplicitWidth = 973
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
            object Label1: TLabel
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
              Top = 26
              Width = 401
              Height = 24
              DataField = 'pr_titulo'
              DataSource = dmQuerys.dsProblemas
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
              DataField = 'pr_data'
              DataSource = dmQuerys.dsProblemas
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
              DataField = 'pr_numerochamado'
              DataSource = dmQuerys.dsProblemas
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
            DataField = 'pr_problema'
            DataSource = dmQuerys.dsProblemas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object mmSolucao: TDBMemo
            Left = 32
            Top = 375
            Width = 624
            Height = 274
            DataField = 'pr_solucao'
            DataSource = dmQuerys.dsProblemas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 3
          end
          object cbModulos: TDBComboBox
            Left = 33
            Top = 95
            Width = 145
            Height = 24
            Style = csDropDownList
            DataField = 'pr_modulo'
            DataSource = dmQuerys.dsProblemas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object btAddImagemProblema: TButton
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
            OnClick = btAddImagemProblemaClick
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
            Left = 312
            Top = 93
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
        ExplicitWidth = 1005
        object imgProblema: TDBImage
          Left = 64
          Top = 56
          Width = 665
          Height = 297
          Color = clBtnFace
          DataField = 'pr_primg'
          DataSource = dmQuerys.dsProblemas
          Proportional = True
          Stretch = True
          TabOrder = 0
        end
        object imgSolucao: TDBImage
          Left = 64
          Top = 390
          Width = 665
          Height = 297
          Color = clBtnFace
          DataField = 'pr_solucaoimg'
          DataSource = dmQuerys.dsProblemas
          Proportional = True
          Stretch = True
          TabOrder = 1
        end
        object Button4: TButton
          Left = 64
          Top = 13
          Width = 75
          Height = 25
          Caption = 'Voltar'
          TabOrder = 2
          OnClick = Button4Click
        end
        object btnRemoverImagemProblema: TButton
          Left = 632
          Top = 25
          Width = 99
          Height = 25
          Caption = 'Remover imagem'
          TabOrder = 3
          OnClick = btnRemoverImagemProblemaClick
        end
        object btnRemoverImagemSolucao: TButton
          Left = 632
          Top = 359
          Width = 99
          Height = 25
          Caption = 'Remover imagem'
          TabOrder = 4
          OnClick = btnRemoverImagemSolucaoClick
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 444
    Top = 9
  end
end
