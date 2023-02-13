object formPrincipal: TformPrincipal
  Left = 0
  Top = 0
  Caption = 'Suporte'
  ClientHeight = 700
  ClientWidth = 1164
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 241
    Top = 0
    Width = 923
    Height = 700
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 241
      Height = 700
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 241
        Height = 73
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 1
          Top = 1
          Width = 239
          Height = 46
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
        object pnlBotoesProblemas: TPanel
          Left = 1
          Top = 47
          Width = 239
          Height = 25
          Align = alBottom
          TabOrder = 0
          object btnNovoProblema: TSpeedButton
            Left = 1
            Top = 1
            Width = 40
            Height = 23
            Align = alLeft
            Caption = 'Novo'
            ExplicitLeft = 4
            ExplicitTop = -2
          end
          object btnExcluirProblema: TSpeedButton
            Left = 198
            Top = 1
            Width = 40
            Height = 23
            Align = alRight
            Caption = 'Excluir'
            ExplicitLeft = 97
            ExplicitTop = 6
          end
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 73
        Width = 241
        Height = 627
        Align = alClient
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object gridModulos: TDBGrid
          Left = 1
          Top = 1
          Width = 239
          Height = 625
          Align = alClient
          BorderStyle = bsNone
          DataSource = dmQuerys.dsProblemas
          DrawingStyle = gdsGradient
          Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'titulo'
              Title.Alignment = taCenter
              Title.Caption = 'Titulo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 621
              Visible = True
            end>
        end
      end
    end
    object pnlProblemas: TPanel
      Left = 241
      Top = 0
      Width = 682
      Height = 700
      Align = alClient
      TabOrder = 1
      object Panel8: TPanel
        Left = 1
        Top = 1
        Width = 680
        Height = 72
        Align = alTop
        TabOrder = 0
        object edtTituloProblema: TDBEdit
          Left = 32
          Top = 26
          Width = 401
          Height = 21
          DataField = 'pr_titulo'
          DataSource = dmQuerys.dsProblemas
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 568
          Top = 26
          Width = 121
          Height = 21
          DataField = 'pr_data'
          DataSource = dmQuerys.dsProblemas
          ReadOnly = True
          TabOrder = 1
        end
      end
      object DBMemo1: TDBMemo
        Left = 33
        Top = 136
        Width = 624
        Height = 161
        DataField = 'pr_problema'
        DataSource = dmQuerys.dsProblemas
        TabOrder = 1
      end
      object DBMemo2: TDBMemo
        Left = 33
        Top = 312
        Width = 624
        Height = 201
        DataField = 'pr_solucao'
        DataSource = dmQuerys.dsProblemas
        ParentShowHint = False
        ShowHint = False
        TabOrder = 2
      end
      object cbModulos: TDBComboBox
        Left = 33
        Top = 88
        Width = 145
        Height = 21
        TabOrder = 3
      end
      object DBNavigator2: TDBNavigator
        Left = 33
        Top = 519
        Width = 222
        Height = 25
        DataSource = dmQuerys.dsProblemas
        VisibleButtons = [nbPost, nbCancel]
        TabOrder = 4
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 241
    Height = 700
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    object Panel6: TPanel
      Left = 0
      Top = 0
      Width = 241
      Height = 73
      Align = alTop
      TabOrder = 0
      object Label2: TLabel
        Left = 1
        Top = 1
        Width = 239
        Height = 46
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
      object DBNavigator1: TDBNavigator
        Left = 1
        Top = 47
        Width = 239
        Height = 25
        DataSource = dmQuerys.dsModulos
        VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel, nbRefresh]
        Align = alBottom
        TabOrder = 0
      end
    end
    object Panel7: TPanel
      Left = 0
      Top = 73
      Width = 241
      Height = 627
      Align = alClient
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 239
        Height = 625
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
