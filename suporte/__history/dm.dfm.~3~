object dmQuerys: TdmQuerys
  OldCreateOrder = False
  Height = 456
  Width = 578
  object dsModulos: TDataSource
    DataSet = qModulos
    Left = 400
    Top = 8
  end
  object qModulos: TFDQuery
    Active = True
    Connection = conDBSuporte
    SQL.Strings = (
      'select * from modulos')
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
  object qProblemas: TFDQuery
    Active = True
    Connection = conDBSuporte
    SQL.Strings = (
      'select * from problemas'
      '')
    Left = 328
    Top = 128
    object qProblemasid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qProblemasid_modulo: TIntegerField
      FieldName = 'id_modulo'
      Origin = 'id_modulo'
      Required = True
    end
    object qProblemaspr_titulo: TStringField
      FieldName = 'pr_titulo'
      Origin = 'pr_titulo'
      Required = True
      Size = 50
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
  end
  object dsProblemas: TDataSource
    DataSet = qProblemas
    Left = 408
    Top = 128
  end
  object qComboModulos: TFDQuery
    Active = True
    Connection = conDBSuporte
    SQL.Strings = (
      'select * from problemas'
      '')
    Left = 328
    Top = 208
    object FDAutoIncField1: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'id_modulo'
      Origin = 'id_modulo'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'pr_titulo'
      Origin = 'pr_titulo'
      Required = True
      Size = 50
    end
    object MemoField1: TMemoField
      FieldName = 'pr_problema'
      Origin = 'pr_problema'
      Required = True
      BlobType = ftMemo
    end
    object MemoField2: TMemoField
      FieldName = 'pr_solucao'
      Origin = 'pr_solucao'
      Required = True
      BlobType = ftMemo
    end
    object DateTimeField1: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'pr_data'
      Origin = 'pr_data'
    end
  end
end
