object dmConnection: TdmConnection
  OldCreateOrder = False
  Height = 483
  Width = 785
  object dsModulos: TDataSource
    DataSet = qModulos
    Left = 400
    Top = 8
  end
  object qModulos: TFDQuery
    Active = True
    AfterScroll = qModulosAfterScroll
    Connection = conDBSuporte
    SQL.Strings = (
      'select * from modulos_problemas')
    Left = 328
    Top = 8
  end
  object conDBSuporte: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=127.0.0.1'
      'Port=3050'
      'CharacterSet=WIN1252'
      'Database=C:\Problemas Suporte\data\DBSUPORTE.FDB'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 8
  end
  object qComboModulos: TFDQuery
    Connection = conDBSuporte
    SQL.Strings = (
      'select * from problema where pr_titulo = '#39#39
      ''
      '')
    Left = 328
    Top = 128
  end
  object qProblemas: TFDQuery
    AfterInsert = qProblemasAfterInsert
    BeforeEdit = qProblemasBeforeEdit
    BeforePost = qProblemasBeforePost
    BeforeCancel = qProblemasBeforeCancel
    AfterScroll = qProblemasAfterScroll
    Connection = conDBSuporte
    Left = 328
    Top = 72
    object qProblemasPR_MODULO: TStringField
      FieldName = 'PR_MODULO'
      Origin = 'PR_MODULO'
      Size = 35
    end
    object qProblemasPR_TITULO: TStringField
      FieldName = 'PR_TITULO'
      Origin = 'PR_TITULO'
      Size = 75
    end
    object qProblemasPR_PROBLEMA: TStringField
      FieldName = 'PR_PROBLEMA'
      Origin = 'PR_PROBLEMA'
      Size = 2000
    end
    object qProblemasPR_SOLUCAO: TStringField
      FieldName = 'PR_SOLUCAO'
      Origin = 'PR_SOLUCAO'
      Size = 2000
    end
    object qProblemasPR_CHAMADO: TIntegerField
      FieldName = 'PR_CHAMADO'
      Origin = 'PR_CHAMADO'
    end
    object qProblemasPR_DATA: TDateField
      FieldName = 'PR_DATA'
      Origin = 'PR_DATA'
    end
    object qProblemasPR_PRIMG: TBlobField
      FieldName = 'PR_PRIMG'
      Origin = 'PR_PRIMG'
    end
    object qProblemasPR_SOLUCAOIMG: TBlobField
      FieldName = 'PR_SOLUCAOIMG'
      Origin = 'PR_SOLUCAOIMG'
    end
  end
  object dsProblemas: TDataSource
    DataSet = qProblemas
    Left = 400
    Top = 72
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files (x86)\Firebird\Firebird_2_5\bin\fbclient.dll'
    Left = 24
    Top = 80
  end
end
