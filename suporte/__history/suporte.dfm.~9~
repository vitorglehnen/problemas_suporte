object formPrincipal: TformPrincipal
  Left = 0
  Top = 0
  Caption = 'Suporte'
  ClientHeight = 836
  ClientWidth = 1296
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 1296
    Height = 836
    Align = alClient
    Caption = 'pnlPrincipal'
    TabOrder = 0
    ExplicitLeft = 280
    ExplicitTop = 320
    ExplicitWidth = 185
    ExplicitHeight = 41
    object pnlCadastroProblema: TPanel
      Left = 484
      Top = 1
      Width = 811
      Height = 834
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      OnClick = pnlCadastroProblemaClick
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 1296
      ExplicitHeight = 836
      object pnlProblemas: TPanel
        Left = 0
        Top = 0
        Width = 811
        Height = 834
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 814
        object lblModuloProblema: TLabel
          Left = 33
          Top = 76
          Width = 96
          Height = 13
          Caption = 'Modulo do problema'
        end
        object lblDetalhesProblema: TLabel
          Left = 33
          Top = 142
          Width = 104
          Height = 13
          Caption = 'Detalhes do problema'
        end
        object lblSolucaoProblema: TLabel
          Left = 33
          Top = 321
          Width = 37
          Height = 13
          Caption = 'Solu'#231#227'o'
        end
        object Panel8: TPanel
          Left = 1
          Top = 1
          Width = 809
          Height = 72
          Align = alTop
          TabOrder = 3
          ExplicitWidth = 1053
          object lblTituloProblema: TLabel
            Left = 32
            Top = 7
            Width = 26
            Height = 13
            Caption = 'T'#237'tulo'
          end
          object lblDataProblema: TLabel
            Left = 536
            Top = 7
            Width = 23
            Height = 13
            Caption = 'Data'
          end
          object edtTituloProblema: TDBEdit
            Left = 32
            Top = 26
            Width = 401
            Height = 21
            DataField = 'pr_titulo'
            DataSource = dmQuerys.dsProblemas
            TabOrder = 0
          end
          object edtHoraProblema: TDBEdit
            Left = 536
            Top = 26
            Width = 121
            Height = 21
            TabStop = False
            BorderStyle = bsNone
            DataField = 'pr_data'
            DataSource = dmQuerys.dsProblemas
            ReadOnly = True
            TabOrder = 1
          end
        end
        object DBMemo1: TDBMemo
          Left = 33
          Top = 161
          Width = 624
          Height = 137
          DataField = 'pr_problema'
          DataSource = dmQuerys.dsProblemas
          TabOrder = 1
        end
        object DBMemo2: TDBMemo
          Left = 33
          Top = 348
          Width = 624
          Height = 337
          DataField = 'pr_solucao'
          DataSource = dmQuerys.dsProblemas
          ParentShowHint = False
          ShowHint = False
          TabOrder = 2
        end
        object cbModulos: TDBComboBox
          Left = 33
          Top = 95
          Width = 145
          Height = 21
          DataField = 'pr_modulo'
          DataSource = dmQuerys.dsProblemas
          TabOrder = 0
        end
      end
    end
    object pnlBodyModulosProblemas: TPanel
      Left = 1
      Top = 1
      Width = 483
      Height = 834
      Align = alLeft
      Caption = 'pnlBodyModulosProblemas'
      TabOrder = 1
      object Panel2: TPanel
        Left = 242
        Top = 1
        Width = 241
        Height = 832
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        OnClick = Panel2Click
        ExplicitLeft = -56
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 241
          Height = 217
          Align = alTop
          TabOrder = 0
          object Label1: TLabel
            Left = 1
            Top = 1
            Width = 239
            Height = 69
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
            ExplicitLeft = 2
            ExplicitTop = 5
          end
          object pnlBotoesProblemas: TPanel
            Left = 1
            Top = 70
            Width = 239
            Height = 25
            Align = alBottom
            TabOrder = 0
            object btnNovoProblema: TSpeedButton
              Left = 1
              Top = 1
              Width = 48
              Height = 23
              Align = alLeft
              Caption = 'Novo'
              Enabled = False
              OnClick = btnNovoProblemaClick
            end
            object btnSalvarProblema: TSpeedButton
              Left = 49
              Top = 1
              Width = 48
              Height = 23
              Align = alLeft
              Caption = 'Salvar'
              Enabled = False
              OnClick = btnSalvarProblemaClick
              ExplicitLeft = 46
              ExplicitTop = -2
            end
            object btnExcluirProblema: TSpeedButton
              Left = 190
              Top = 1
              Width = 48
              Height = 23
              Align = alRight
              Caption = 'Excluir'
              Enabled = False
              OnClick = btnExcluirProblemaClick
              ExplicitLeft = 136
              ExplicitTop = -2
            end
            object btnCancelarProblema: TSpeedButton
              Left = 142
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
          object Panel10: TPanel
            Left = 1
            Top = 95
            Width = 239
            Height = 121
            Align = alBottom
            TabOrder = 1
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
        object Panel4: TPanel
          Left = 0
          Top = 217
          Width = 241
          Height = 615
          Align = alClient
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          ExplicitHeight = 617
          object gridModulos: TDBGrid
            Left = 1
            Top = 1
            Width = 239
            Height = 613
            TabStop = False
            Align = alClient
            BorderStyle = bsNone
            DataSource = dmQuerys.dsProblemas
            DrawingStyle = gdsGradient
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 241
        Height = 832
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitLeft = 0
        ExplicitTop = 217
        ExplicitHeight = 615
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 241
          Height = 217
          Align = alTop
          TabOrder = 0
          object Label2: TLabel
            Left = 1
            Top = 1
            Width = 239
            Height = 108
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
            ExplicitLeft = -2
            ExplicitTop = -3
            ExplicitHeight = 68
          end
          object Panel9: TPanel
            Left = 1
            Top = 109
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
          object Panel11: TPanel
            Left = 1
            Top = 134
            Width = 239
            Height = 82
            Align = alBottom
            TabOrder = 1
            object Label3: TLabel
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
        object Panel7: TPanel
          Left = 0
          Top = 217
          Width = 241
          Height = 615
          Align = alClient
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          ExplicitHeight = 398
          object DBGrid1: TDBGrid
            Left = 1
            Top = 1
            Width = 239
            Height = 613
            TabStop = False
            Align = alClient
            BorderStyle = bsNone
            DataSource = dmQuerys.dsModulos
            DrawingStyle = gdsGradient
            Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnCellClick = DBGrid1CellClick
            OnMouseWheel = DBGrid1MouseWheel
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
  end
end
