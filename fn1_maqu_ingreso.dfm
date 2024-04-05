inherited _fvent_child1: T_fvent_child1
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TdxDBGrid
          KeyField = 'CODI_MAQUINA'
          ShowSummaryFooter = True
          Filter.Criteria = {00000000}
          object padr_gridCODI_MAQUINA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 87
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_MAQUINA'
            SummaryFooterType = cstCount
            SummaryFooterFormat = '0'
          end
          object padr_gridCODI_INTERNO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 85
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_INTERNO'
          end
          object padr_gridCODI_MAQU_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 72
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_MAQU_GRUPO'
          end
          object padr_gridNOMB_MAQU_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_MAQU_GRUPO'
          end
          object padr_gridCODI_MAQU_TIPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 72
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_MAQU_TIPO'
          end
          object padr_gridNOMB_MAQU_TIPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_MAQU_TIPO'
          end
          object padr_gridCODI_MAQU_FAMILIA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 72
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_MAQU_FAMILIA'
          end
          object padr_gridNOMB_MAQU_FAMILIA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_MAQU_FAMILIA'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUA_SISTEMA'
          end
          object padr_gridCLASE: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 184
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLASE'
          end
          object padr_gridCODI_MARCA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 72
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_MARCA'
          end
          object padr_gridNOMB_MAQU_MARCA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_MAQU_MARCA'
          end
          object padr_gridNUME_SERIE: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 184
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_SERIE'
          end
          object padr_gridCODI_TIPO_PUNTADA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 84
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_TIPO_PUNTADA'
          end
          object padr_gridRPM: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 64
            BandIndex = 0
            RowIndex = 0
            FieldName = 'RPM'
          end
          object padr_gridNOMB_MAQU_UBICACION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_MAQU_UBICACION'
          end
          object padr_gridCODI_EMPRESA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_EMPRESA'
          end
          object padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_EMPRESA'
          end
          object padr_gridCODI_AREA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 72
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_AREA'
          end
          object padr_gridNOMB_AREA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_AREA'
          end
          object padr_gridCODI_PLANTA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 72
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PLANTA'
          end
          object padr_gridNOMB_PLANTA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PLANTA'
          end
          object padr_gridCODI_SECCION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_SECCION'
          end
          object padr_gridNOMB_SECCION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_SECCION'
          end
          object padr_gridCODI_BODEGA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_BODEGA'
          end
          object padr_gridNOMB_BODEGA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_BODEGA'
          end
          object padr_gridOTRA_UBICACION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OTRA_UBICACION'
          end
          object padr_gridFOTO: TdxDBGridBlobColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 95
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FOTO'
          end
          object padr_gridAJUS_FOTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 59
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AJUS_FOTO'
          end
          object padr_gridCARACTERISTICAS: TdxDBGridMemoColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CARACTERISTICAS'
          end
          object padr_gridCODI_TIPO_DOCU_ENTRADA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_TIPO_DOCU_ENTRADA'
          end
          object padr_gridNOMB_TIPO_DOCU_ENTRADA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 128
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_TIPO_DOCU_ENTRADA'
          end
          object padr_gridNUME_DOCU_ENTRADA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 151
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_DOCU_ENTRADA'
          end
          object padr_gridFECH_COMPRA: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Width = 143
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_COMPRA'
          end
          object padr_gridFECH_INGRESO: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_INGRESO'
          end
          object padr_gridNOMB_ENTREGA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 345
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_ENTREGA'
          end
          object padr_gridCARG_ENTREGA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 345
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CARG_ENTREGA'
          end
          object padr_gridNOMB_RECIBE: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 345
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_RECIBE'
          end
          object padr_gridCARG_RECIBE: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 345
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CARG_RECIBE'
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPanel
      Caption = 'Ingreso de recursos'
    end
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'Select *'
      'from vis_pcp_maquinaria'
      'order by codi_maquina')
    object consultaCODI_MAQUINA: TStringField
      DisplayLabel = 'Código máquina'
      FieldName = 'CODI_MAQUINA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CODI_MAQUINA'
      Size = 12
    end
    object consultaCODI_INTERNO: TStringField
      DisplayLabel = 'Código interno'
      FieldName = 'CODI_INTERNO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CODI_INTERNO'
      Size = 12
    end
    object consultaCODI_MAQU_GRUPO: TStringField
      DisplayLabel = 'Código grupo'
      FieldName = 'CODI_MAQU_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CODI_MAQU_GRUPO'
      Size = 12
    end
    object consultaNOMB_MAQU_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMB_MAQU_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NOMB_MAQU_GRUPO'
      Size = 60
    end
    object consultaCODI_MAQU_TIPO: TStringField
      DisplayLabel = 'Código tipo'
      FieldName = 'CODI_MAQU_TIPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CODI_MAQU_TIPO'
      Size = 12
    end
    object consultaNOMB_MAQU_TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'NOMB_MAQU_TIPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NOMB_MAQU_TIPO'
      FixedChar = True
      Size = 60
    end
    object consultaCODI_MAQU_FAMILIA: TStringField
      DisplayLabel = 'Código familia'
      FieldName = 'CODI_MAQU_FAMILIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CODI_MAQU_FAMILIA'
      Size = 12
    end
    object consultaNOMB_MAQU_FAMILIA: TStringField
      DisplayLabel = 'Familia'
      FieldName = 'NOMB_MAQU_FAMILIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NOMB_MAQU_FAMILIA'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.USUA_SISTEMA'
    end
    object consultaFECH_COMPRA: TDateTimeField
      DisplayLabel = 'Fecha compra'
      FieldName = 'FECH_COMPRA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.FECH_COMPRA'
    end
    object consultaCLASE: TStringField
      DisplayLabel = 'Clase'
      FieldName = 'CLASE'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CLASE'
      Size = 30
    end
    object consultaCODI_MARCA: TStringField
      DisplayLabel = 'Código marca'
      FieldName = 'CODI_MARCA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CODI_MARCA'
      Size = 12
    end
    object consultaNOMB_MAQU_MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'NOMB_MAQU_MARCA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NOMB_MAQU_MARCA'
      Size = 60
    end
    object consultaNUME_SERIE: TStringField
      DisplayLabel = 'Número serie'
      FieldName = 'NUME_SERIE'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NUME_SERIE'
      Size = 30
    end
    object consultaCODI_TIPO_PUNTADA: TStringField
      DisplayLabel = 'Tipo de puntada'
      FieldName = 'CODI_TIPO_PUNTADA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CODI_TIPO_PUNTADA'
      Size = 12
    end
    object consultaRPM: TIntegerField
      DisplayLabel = 'R.P.M.'
      FieldName = 'RPM'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.RPM'
    end
    object consultaNOMB_MAQU_UBICACION: TStringField
      DisplayLabel = 'Ubicación'
      FieldName = 'NOMB_MAQU_UBICACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NOMB_MAQU_UBICACION'
      Size = 60
    end
    object consultaCODI_EMPRESA: TStringField
      DisplayLabel = 'Código empresa'
      FieldName = 'CODI_EMPRESA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CODI_EMPRESA'
      Size = 12
    end
    object consultaNOMB_EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'NOMB_EMPRESA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NOMB_EMPRESA'
      Size = 60
    end
    object consultaCODI_AREA: TStringField
      DisplayLabel = 'Código área'
      FieldName = 'CODI_AREA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CODI_AREA'
      Size = 12
    end
    object consultaNOMB_AREA: TStringField
      DisplayLabel = 'Area'
      FieldName = 'NOMB_AREA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NOMB_AREA'
      Size = 60
    end
    object consultaCODI_PLANTA: TStringField
      DisplayLabel = 'Código planta'
      FieldName = 'CODI_PLANTA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CODI_PLANTA'
      Size = 12
    end
    object consultaNOMB_PLANTA: TStringField
      DisplayLabel = 'Planta'
      FieldName = 'NOMB_PLANTA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NOMB_PLANTA'
      Size = 60
    end
    object consultaCODI_SECCION: TStringField
      DisplayLabel = 'Código sección'
      FieldName = 'CODI_SECCION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CODI_SECCION'
      Size = 12
    end
    object consultaNOMB_SECCION: TStringField
      DisplayLabel = 'Sección'
      FieldName = 'NOMB_SECCION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NOMB_TIPO_DOCU_ENTRADA'
      Size = 60
    end
    object consultaCODI_BODEGA: TStringField
      DisplayLabel = 'Código bodega'
      FieldName = 'CODI_BODEGA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CODI_BODEGA'
      Size = 12
    end
    object consultaNOMB_BODEGA: TStringField
      DisplayLabel = 'Bodega'
      FieldName = 'NOMB_BODEGA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NOMB_BODEGA'
      Size = 60
    end
    object consultaOTRA_UBICACION: TStringField
      DisplayLabel = 'Otra ubicación'
      FieldName = 'OTRA_UBICACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.OTRA_UBICACION'
      Size = 30
    end
    object consultaFOTO: TBlobField
      DisplayLabel = 'Foto'
      FieldName = 'FOTO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.FOTO'
      BlobType = ftBlob
      Size = 1
    end
    object consultaAJUS_FOTO: TIntegerField
      DisplayLabel = 'Ajustar foto'
      FieldName = 'AJUS_FOTO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.AJUS_FOTO'
    end
    object consultaCARACTERISTICAS: TMemoField
      DisplayLabel = 'Características'
      FieldName = 'CARACTERISTICAS'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CARACTERISTICAS'
      BlobType = ftMemo
      Size = 2000
    end
    object consultaCODI_TIPO_DOCU_ENTRADA: TStringField
      DisplayLabel = 'Código tipo documento'
      FieldName = 'CODI_TIPO_DOCU_ENTRADA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CODI_TIPO_DOCU_ENTRADA'
      Size = 12
    end
    object consultaNOMB_TIPO_DOCU_ENTRADA: TStringField
      DisplayLabel = 'Tipo doc. ingreso'
      FieldName = 'NOMB_TIPO_DOCU_ENTRADA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NOMB_TIPO_DOCU_ENTRADA'
      Size = 60
    end
    object consultaNUME_DOCU_ENTRADA: TStringField
      DisplayLabel = 'No. documento ingreso'
      FieldName = 'NUME_DOCU_ENTRADA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NUME_DOCU_ENTRADA'
      Size = 30
    end
    object consultaFECH_INGRESO: TDateTimeField
      DisplayLabel = 'Fecha ingreso'
      FieldName = 'FECH_INGRESO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.FECH_INGRESO'
    end
    object consultaNOMB_ENTREGA: TStringField
      DisplayLabel = 'Entregado por'
      FieldName = 'NOMB_ENTREGA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NOMB_ENTREGA'
      Size = 60
    end
    object consultaCARG_ENTREGA: TStringField
      DisplayLabel = 'Cargo (entregado por)'
      FieldName = 'CARG_ENTREGA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CARG_ENTREGA'
      Size = 60
    end
    object consultaNOMB_RECIBE: TStringField
      DisplayLabel = 'Recibido por'
      FieldName = 'NOMB_RECIBE'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NOMB_RECIBE'
      Size = 60
    end
    object consultaCARG_RECIBE: TStringField
      DisplayLabel = 'Cargo (recibido por)'
      FieldName = 'CARG_RECIBE'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CARG_RECIBE'
      Size = 60
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'CODI_MAQUINA'
    NombreAMostrar = 'Recurso'
    CamposDeBusqueda = 'CODI_MAQUINA'
    TipoGenero = geEl
    TablaMaestra = 'PCP_MAQUINARIA'
  end
end
