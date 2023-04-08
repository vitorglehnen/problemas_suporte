object formPrincipal: TformPrincipal
  Left = 0
  Top = 0
  Align = alClient
  AutoSize = True
  Caption = 'Suporte'
  ClientHeight = 1061
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
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 1920
    Height = 1061
    Align = alClient
    AutoSize = True
    TabOrder = 0
    ExplicitWidth = 1492
    ExplicitHeight = 749
    object pnlBodyModulosProblemas: TPanel
      Left = 1
      Top = 1
      Width = 512
      Height = 1059
      Align = alLeft
      Caption = 'pnlBodyModulosProblemas'
      TabOrder = 0
      ExplicitHeight = 747
      object pnlBodyProblemas: TPanel
        Left = 242
        Top = 1
        Width = 269
        Height = 1057
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitHeight = 745
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
              ExplicitHeight = 23
            end
            object btnSalvarProblema: TSpeedButton
              Left = 65
              Top = 1
              Width = 64
              Height = 25
              Align = alLeft
              Caption = 'Salvar(F4)'
              ExplicitLeft = 71
              ExplicitTop = -4
            end
            object btnExcluirProblema: TSpeedButton
              Left = 218
              Top = 1
              Width = 48
              Height = 25
              Align = alRight
              Caption = 'Excluir'
              ExplicitLeft = 216
              ExplicitTop = -4
              ExplicitHeight = 23
            end
            object btnCancelarProblema: TSpeedButton
              Left = 170
              Top = 1
              Width = 48
              Height = 25
              Align = alRight
              Caption = 'Cancelar'
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
          Height = 800
          Align = alClient
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          ExplicitHeight = 488
          object gridProblemas: TDBGrid
            Left = 1
            Top = 1
            Width = 267
            Height = 798
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
        Height = 1057
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitHeight = 745
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
            object btnNovoModulo: TSpeedButton
              Left = 1
              Top = 1
              Width = 48
              Height = 25
              Align = alLeft
              Caption = 'Novo'
              ExplicitLeft = -5
              ExplicitTop = -2
              ExplicitHeight = 23
            end
            object btnSalvarModulo: TSpeedButton
              Left = 49
              Top = 1
              Width = 48
              Height = 25
              Align = alLeft
              Caption = 'Salvar'
              ExplicitLeft = 55
              ExplicitTop = -2
              ExplicitHeight = 23
            end
            object btnExcluirModulo: TSpeedButton
              Left = 190
              Top = 1
              Width = 48
              Height = 25
              Align = alRight
              Caption = 'Excluir'
              ExplicitLeft = 188
              ExplicitTop = -2
              ExplicitHeight = 23
            end
            object btnCancelarModulo: TSpeedButton
              Left = 142
              Top = 1
              Width = 48
              Height = 25
              Align = alRight
              Caption = 'Cancelar'
              ExplicitLeft = 136
              ExplicitTop = -2
              ExplicitHeight = 23
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
          end
        end
        object pnlGridModulos: TPanel
          Left = 0
          Top = 257
          Width = 241
          Height = 800
          Align = alClient
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          ExplicitHeight = 488
          object gridModulos: TDBGrid
            Left = 1
            Top = 1
            Width = 239
            Height = 798
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
      Width = 1406
      Height = 1059
      Align = alClient
      ActiveCard = pnlCadastroProblema
      AutoSize = True
      TabOrder = 1
      ExplicitWidth = 978
      ExplicitHeight = 747
      object pnlCadastroProblema: TCard
        Left = 1
        Top = 1
        Width = 1404
        Height = 1057
        Caption = 'pnlCadastroProblema'
        CardIndex = 0
        TabOrder = 0
        ExplicitWidth = 976
        ExplicitHeight = 745
        object pnlProblemas: TPanel
          Left = 0
          Top = 0
          Width = 1404
          Height = 1057
          Align = alClient
          AutoSize = True
          BevelOuter = bvNone
          TabOrder = 0
          TabStop = True
          object pnlTopProblema: TPanel
            Left = 0
            Top = 0
            Width = 1404
            Height = 70
            Align = alTop
            AutoSize = True
            Padding.Right = 250
            TabOrder = 0
            ExplicitWidth = 976
            object pnlTituloProblema: TPanel
              Left = 1
              Top = 1
              Width = 512
              Height = 68
              Align = alLeft
              AutoSize = True
              BevelOuter = bvNone
              Padding.Left = 30
              Padding.Top = 10
              Padding.Right = 30
              Padding.Bottom = 10
              TabOrder = 0
              object lblTituloProblema: TLabel
                Left = 30
                Top = 10
                Width = 452
                Height = 21
                Align = alTop
                Caption = 'T'#237'tulo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -17
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 42
              end
              object edtTituloProblema: TEdit
                Left = 30
                Top = 37
                Width = 452
                Height = 21
                Align = alBottom
                TabOrder = 0
                ExplicitTop = 31
              end
            end
            object pnlDataProblema: TPanel
              Left = 721
              Top = 1
              Width = 432
              Height = 68
              Align = alClient
              AutoSize = True
              BevelOuter = bvNone
              Padding.Left = 320
              Padding.Top = 10
              Padding.Bottom = 10
              TabOrder = 1
              object lblDataProblema: TLabel
                Left = 320
                Top = 10
                Width = 112
                Height = 27
                Align = alLeft
                Caption = 'Data'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -17
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object edtDataProblema: TEdit
                Left = 320
                Top = 37
                Width = 112
                Height = 21
                Align = alBottom
                TabOrder = 0
                ExplicitLeft = 96
                ExplicitWidth = 336
              end
            end
            object pnlChamadoProblema: TPanel
              Left = 513
              Top = 1
              Width = 208
              Height = 68
              Align = alLeft
              AutoSize = True
              BevelOuter = bvNone
              Padding.Left = 10
              Padding.Top = 10
              Padding.Right = 70
              Padding.Bottom = 10
              TabOrder = 2
              object lblChamadoProblema: TLabel
                Left = 10
                Top = 10
                Width = 128
                Height = 21
                Align = alTop
                Caption = 'Chamado'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -17
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ExplicitLeft = 6
                ExplicitTop = 4
              end
              object edtChamadoProblema: TEdit
                Left = 10
                Top = 37
                Width = 128
                Height = 21
                Align = alBottom
                TabOrder = 0
                ExplicitLeft = 6
              end
            end
          end
          object pnlBodyModuloProblema: TPanel
            Left = 0
            Top = 70
            Width = 1404
            Height = 80
            Align = alTop
            AutoSize = True
            BevelOuter = bvNone
            Padding.Left = 30
            Padding.Top = 20
            TabOrder = 1
            ExplicitLeft = 2
            ExplicitTop = 75
            object pnlModuloProblema: TPanel
              Left = 30
              Top = 20
              Width = 135
              Height = 60
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
                Height = 21
                Align = alTop
                TabOrder = 0
              end
            end
          end
          object pnlBodyDetalhesProblema: TPanel
            Left = 0
            Top = 150
            Width = 1404
            Height = 235
            Align = alTop
            AutoSize = True
            BevelOuter = bvNone
            Padding.Left = 30
            Padding.Right = 250
            TabOrder = 2
            ExplicitLeft = 3
            ExplicitTop = 144
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
              ExplicitWidth = 843
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
                Align = alClient
                TabOrder = 0
                ExplicitLeft = 1
                ExplicitTop = 23
              end
            end
          end
          object pnlBodySolucaoProblema: TPanel
            Left = 0
            Top = 385
            Width = 1404
            Height = 672
            Align = alClient
            AutoSize = True
            BevelOuter = bvNone
            Padding.Left = 30
            Padding.Right = 250
            TabOrder = 3
            ExplicitLeft = 5
            ExplicitTop = 391
            object pnlSolucaoProblema: TPanel
              Left = 30
              Top = 0
              Width = 1124
              Height = 672
              Align = alClient
              AutoSize = True
              BevelOuter = bvNone
              Padding.Bottom = 20
              TabOrder = 0
              ExplicitWidth = 843
              ExplicitHeight = 360
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
              object mmSolucaoProblema: TMemo
                Left = 0
                Top = 17
                Width = 1124
                Height = 635
                Align = alClient
                TabOrder = 0
                ExplicitWidth = 843
                ExplicitHeight = 323
              end
            end
          end
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 4
    Top = 1
  end
end
