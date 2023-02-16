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
    Connection = conDBSuporte
    SQL.Strings = (
      'select * from modulos_problemas')
    Left = 328
    Top = 8
  end
  object conDBSuporte: TFDConnection
    Params.Strings = (
      'Database=suporte'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    Left = 256
    Top = 8
  end
  object qComboModulos: TFDQuery
    Connection = conDBSuporte
    SQL.Strings = (
      'select * from problema where pr_titulo = '#39#39
      ''
      '')
    Left = 328
    Top = 216
  end
  object qProblemas: TFDQuery
    Connection = conDBSuporte
    Left = 328
    Top = 128
    object qProblemasid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qProblemaspr_modulo: TStringField
      FieldName = 'pr_modulo'
      Origin = 'pr_modulo'
      Required = True
      Size = 35
    end
    object qProblemaspr_titulo: TStringField
      FieldName = 'pr_titulo'
      Origin = 'pr_titulo'
      Required = True
      Size = 75
    end
    object qProblemaspr_problema: TMemoField
      FieldName = 'pr_problema'
      Origin = 'pr_problema'
      Required = True
      BlobType = ftMemo
    end
    object qProblemaspr_solucao: TMemoField
      FieldName = 'pr_solucao'
      Origin = 'pr_solucao'
      Required = True
      BlobType = ftMemo
    end
    object qProblemaspr_data: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'pr_data'
      Origin = 'pr_data'
    end
    object qProblemaspr_primg: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'pr_primg'
      Origin = 'pr_primg'
    end
    object qProblemaspr_solucaoimg: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'pr_solucaoimg'
      Origin = 'pr_solucaoimg'
    end
    object qProblemaspr_numerochamado: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pr_numerochamado'
      Origin = 'pr_numerochamado'
    end
  end
  object dsProblemas: TDataSource
    DataSet = qProblemas
    Left = 416
    Top = 128
  end
end
