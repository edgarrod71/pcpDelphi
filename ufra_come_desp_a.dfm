object ffra_come_desp_a: Tffra_come_desp_a
  Left = 0
  Top = 0
  Width = 320
  Height = 240
  TabOrder = 0
  object Q_facturar_a: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT B.cons_facturar_a,'
      ' b.cons_tercero,'
      ' b.codi_facturar_a,'
      ' b.iden_facturar_a, b.digi_verificacion,'
      ' b.nomb_facturar_a,'
      ' b.contacto1, b.contacto2,'
      ' b.direccion, b.cons_pais, b.cons_departamento, b.cons_ciudad,'
      ' C.nomb_pais, D.nomb_departamento, E.nomb_ciudad,'
      
        ' b.codi_postal, b.telefono1, b.telefono2, b.telefono3, b.fax1, b' +
        '.fax2,'
      ' b.celular, b.corr_electronico, '
      ' b.fech_sistema, b.usua_sistema'
      'FROM glo_terceros A, glo_terc_facturar_a B,'
      '     glo_paises C, glo_departamentos D,  glo_ciudades E'
      ' WHERE A.cons_tercero = :cons_tercero'
      ' AND B.cons_tercero = A.cons_tercero'
      ' AND C.cons_pais = B.cons_pais'
      ' AND D.cons_departamento = B.cons_departamento'
      ' AND E.cons_ciudad = B.cons_ciudad')
    Top = 1
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_TERCERO'
        ParamType = ptInput
      end>
    object Q_facturar_aCONS_FACTURAR_A: TIntegerField
      DisplayLabel = 'Cons. Facturar A'
      FieldName = 'CONS_FACTURAR_A'
    end
    object Q_facturar_aCONS_TERCERO: TIntegerField
      DisplayLabel = 'Cons. Cliente'
      FieldName = 'CONS_TERCERO'
    end
    object Q_facturar_aCODI_FACTURAR_A: TStringField
      DisplayLabel = 'C�digo'
      FieldName = 'CODI_FACTURAR_A'
      Size = 12
    end
    object Q_facturar_aDIGI_VERIFICACION: TStringField
      DisplayLabel = 'D�gito Verificaci�n'
      FieldName = 'DIGI_VERIFICACION'
      Size = 1
    end
    object Q_facturar_aIDEN_FACTURAR_A: TStringField
      DisplayLabel = 'Nit � C�dula'
      FieldName = 'IDEN_FACTURAR_A'
      Size = 30
    end
    object Q_facturar_aNOMB_FACTURAR_A: TStringField
      DisplayLabel = 'Facturar A'
      FieldName = 'NOMB_FACTURAR_A'
      Size = 120
    end
    object Q_facturar_aCONTACTO1: TStringField
      DisplayLabel = 'Contacto 1'
      FieldName = 'CONTACTO1'
      Size = 60
    end
    object Q_facturar_aCONTACTO2: TStringField
      DisplayLabel = 'Contacto 2'
      FieldName = 'CONTACTO2'
      Size = 60
    end
    object Q_facturar_aDIRECCION: TStringField
      DisplayLabel = 'Direcci�n'
      FieldName = 'DIRECCION'
      Size = 240
    end
    object Q_facturar_aCONS_PAIS: TIntegerField
      DisplayLabel = 'Cons. Pa�s'
      FieldName = 'CONS_PAIS'
    end
    object Q_facturar_aNOMB_PAIS: TStringField
      DisplayLabel = 'Pa�s'
      FieldName = 'NOMB_PAIS'
      Size = 60
    end
    object Q_facturar_aCONS_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'Cons. Departamento'
      FieldName = 'CONS_DEPARTAMENTO'
    end
    object Q_facturar_aNOMB_DEPARTAMENTO: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'NOMB_DEPARTAMENTO'
      Size = 60
    end
    object Q_facturar_aCONS_CIUDAD: TIntegerField
      DisplayLabel = 'Cons. Ciudad'
      FieldName = 'CONS_CIUDAD'
    end
    object Q_facturar_aNOMB_CIUDAD: TStringField
      DisplayLabel = 'Ciudad'
      FieldName = 'NOMB_CIUDAD'
      Size = 60
    end
    object Q_facturar_aCODI_POSTAL: TStringField
      DisplayLabel = 'C�d. Postal'
      FieldName = 'CODI_POSTAL'
      Size = 15
    end
    object Q_facturar_aTELEFONO1: TStringField
      DisplayLabel = 'Tel�fono 1'
      FieldName = 'TELEFONO1'
      Size = 15
    end
    object Q_facturar_aTELEFONO2: TStringField
      DisplayLabel = 'Tel�fono 2'
      FieldName = 'TELEFONO2'
      Size = 15
    end
    object Q_facturar_aTELEFONO3: TStringField
      DisplayLabel = 'Tel�fono 3'
      FieldName = 'TELEFONO3'
      Size = 15
    end
    object Q_facturar_aFAX1: TStringField
      DisplayLabel = 'Fax 1'
      FieldName = 'FAX1'
      Size = 15
    end
    object Q_facturar_aFAX2: TStringField
      DisplayLabel = 'Fax 1'
      FieldName = 'FAX2'
      Size = 15
    end
    object Q_facturar_aCELULAR: TStringField
      DisplayLabel = 'M�vil'
      FieldName = 'CELULAR'
      Size = 15
    end
    object Q_facturar_aCORR_ELECTRONICO: TStringField
      DisplayLabel = 'Correo Electr�nico'
      FieldName = 'CORR_ELECTRONICO'
      Size = 240
    end
    object Q_facturar_aFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creaci�n'
      FieldName = 'FECH_SISTEMA'
    end
    object Q_facturar_aUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creaci�n'
      FieldName = 'USUA_SISTEMA'
    end
  end
  object DSQ_facturar_a: TDataSource
    DataSet = Q_facturar_a
    Left = 32
    Top = 1
  end
end
