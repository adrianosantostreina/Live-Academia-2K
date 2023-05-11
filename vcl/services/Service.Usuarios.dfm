inherited ServiceUsuarios: TServiceUsuarios
  object MemUsuarios: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 112
    Top = 64
    object MemUsuariosid: TIntegerField
      FieldName = 'id'
    end
    object MemUsuariosusuario: TStringField
      FieldName = 'usuario'
      Size = 50
    end
    object MemUsuariossenha: TStringField
      FieldName = 'senha'
    end
    object MemUsuariostipousuario: TIntegerField
      FieldName = 'tipousuario'
    end
    object MemUsuariosusu_perfil: TIntegerField
      FieldName = 'usu_perfil'
    end
  end
end
