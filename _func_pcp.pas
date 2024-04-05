{*******************************************************************}
{       Softconf Limitada                                           }
{       Planeación y Control de la Producción                       }
{                                                                   }
{       Todos los derechos reservados (c) 1998-2004                 }
{       Software de Confianza   Softconf Limitada                   }
{                                                                   }
{       Todo el contenido de este archivo está protegido por las    }
{       leyes colombianas y por las Leyes y Tratados                }
{       Internacionales.                                            }
{                                                                   }
{       Su reproducción no autorizada, la ingeniería inversa y la   }
{       distribución total o parcial del código contenido en este   }
{       archivo está estrictamente prohibido y podrá tener severas  }
{       consecuencias civiles y penales.                            }
{                                                                   }
{       RESTRICCIONES                                               }
{                                                                   }
{       ESTE CODIGO Y TODOS LOS ARCHIVOS RELACIONADOS               }
{       (DCU, OBJ, DLL, ETC.) SON CONFIDENCIALES Y SU               }
{       PROPIETARIO ES SOFTCONF LIMITADA.                           }
{                                                                   }
{                                                                   }
{       www.softwaredeconfianza.com                                 }
{       tecnologia@softwaredeconfianza.com                          }
{*******************************************************************
        Unit            : _func_pcp
        Objetivo        : Funciones de uso global para PCP
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Febrero 06 de 2004
        Versión         : pcp4000
*******************************************************************}

{$I DEFINICIONES.INC}

unit _func_pcp;

interface

Uses Forms, Dialogs, Controls, sysUtils, _Vent_Child, Windows, _cons_pcp,
    dbTables, db, classes, JvExExtCtrls, JvBalloonHint, Graphics, edbImage, jpeg;

Type
    TTipoMensajeBalon = (ikCustom, ikNone, ikApplication, ikError, ikInformation, ikQuestion, ikWarning); //tjvIconKind

//RC1
Function AbrirModulo(Clase : TFormClass;
	TipoVentana : TFormStyle = fsNormal;
  Ventana_Detalle: TFormClass = Nil) : T_FVent_Child;
// TransaccionesDB
//....................................................................
Procedure StartDBTransaction;
Procedure CommitDBWork;
Procedure RollBackDBWork;
Function PCPEnTransaccion : Boolean;
//Ventana MDI
//....................................................................
Procedure SetEsperaVisible(Value : Boolean);
Procedure EjecutarMensajeBalon(peControl   : TControl; peTitulo, peMensaje : String;
                    peTipoMensaje : TTipoMensajeBalon; peMostrarBotonCerrar : Boolean = True; peSonido : Boolean = True;
                    peTiempoVisible : Integer = 5000);
Procedure CerrarMensajeBalon;
//Formatos
Function FormatoFloat (ConSeparadorDeMiles : Boolean = True): String;
{$IFDEF PCP4}
Procedure doCambiarTextoIndicadoresProduccion(peQuery : TQuery;
    peNomb_para_1 : String = 'INDI_1';
    peNomb_para_2 : String = 'INDI_2';
    peNomb_para_3 : String = 'INDI_3');
Function ObjetoAdicionalPCPToInteger(peObjetoAdicionalPCP : TObjetoAdicionalPCP) : Integer;
Function IntegerToObjetoAdicionalPCP(peInteger : Integer) : TObjetoAdicionalPCP;
Function IntegerToTipoUbicacionPersonal(peInteger : Integer) : TTipoUbicacionPersonal;
Function TipoUbicacionPersonalToInteger(peTipoUbicacion : TTipoUbicacionPersonal) : Integer;

{$ENDIF}
//DB - GDB
Procedure doAplicarFiltroUsuarioPCP(pe_SQL : String; pe_tag_filtro : Integer = -1;
    pe_es_entero : Boolean = True);


//Corte
Function func_tipo_unid_medi_corte(unid_medida : String):TUnid_medi_paqu_corte;

//Edicion de reportes y usuario final
Function doEjecutarDialogoSeleccionCampos(peDataSet: TDataSet; var peCampo: string): Boolean;
function doEjecutarDialogoLineas(peLineas: TStrings; peDataSet: TDataSet): Boolean; overload;
function doEjecutarDialogoLineas(var peStr: string; peDataSet: TDataSet): Boolean; overload;

//Busqueda
Procedure ListaRapida(peDataSet : TDataSet; peKeyFieldName : String = '');

//Fichas técnicas
Function ObservacionesImagenCatalogo(peCons_Herr_Imagen : Integer) : String;
Procedure MostrarImagenVentanaCompleta(peDataSource : TDataSource; peDataField : String);
Procedure EDBImageToBlobField(peEDBImage : TEDBImage; peBlobField : TBlobField; peAncho : Integer = 0; peAlto : Integer = 0);




implementation

Uses _func_varias, _mdi, _vari_pcp, un0_dial_strings, un0_dial_sele_Campos,
        un0_list_rapida, _Vent_Most_Imagen;

{****************************************************************
Procedimiento   : AbrirModulo
Objetivo        : Crear una ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 06 de 2004
Versión         : pcp4000
*****************************************************************}
Function AbrirModulo(Clase : TFormClass;
	TipoVentana : TFormStyle = fsNormal;
  Ventana_Detalle: TFormClass = Nil) : T_FVent_Child;
Var
  Ventana : TForm;
  i : Integer;
Begin
   Try
     Result := Nil;
     Try
        //Deshabilitar el Align para evitar repintados
        _fmdi.DisableAlign;
        If Not ExisteVentana(Clase, True) Then Begin
          Ventana := Clase.Create(Application.MainForm);
          //Si es NIL, Salir
          if Ventana=Nil then Exit;
          //RC20.6 evitar el parpadeo
          Ventana.FormStyle := fsNormal;
          Ventana.WindowState := wsMaximized;
          If Ventana_Detalle <> Nil Then
            (Ventana As T_FVent_Child).Variables.DetalleFormClass := Ventana_Detalle;
          //Colores de la aplicacion
          if (Ventana is T_FVent_Child) Then Begin
              (Ventana As T_FVent_Child).padr_titu_ventana.Color := colorAplicacion;
              (Ventana As T_FVent_Child).Variables.ColorPanel := colorAplicacion;
              Result := (Ventana As T_FVent_Child);
            End
          Else
            Result := Nil;
        End
        Else  Begin
          //Buscar la ventana
           For i:=1 to Application.MainForm.MDIChildCount do
             If (Application.Mainform.MDIChildren[i-1].ClassName=Clase.ClassName)
               and (Application.Mainform.MDIChildren[i-1] is T_FVent_Child) Then
                  Result := (Application.Mainform.MDIChildren[i-1] As T_FVent_Child);
        End;
     Except
       on E:Exception do EjecutarMensajeError(e.Message);
     End;
     //Habilitar el align
     _fmdi.EnableAlign;
     _fmdi.Repaint;
   Except
     On e:Exception do EjecutarMensajeError(e.Message);
   End;
   //Ventana.ManualDock(_fmdi.contenedorMDI);
   //Cambiar el estilo de la ventana
   Ventana.FormStyle := TipoVentana;
   //Si es MDIChild, maximizarla
   If (TipoVentana = fsMDIChild) and
     (Ventana.WindowState <> wsMaximized) Then
       Ventana.WindowState := wsMaximized;
End;
{****************************************************************
Procedimiento   : StarDBTransaction
Objetivo        : Inicia una transacción en la base de datos de PCP
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure StartDBTransaction;
Begin
    With _fmdi.data_base_pcp do
    Begin
        //Cerrar la transaccion (si la hay)
        If InTransaction then
          Case EjecutarMensaje(cosExisteTransaccion, mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
             mrYes : CommitDBWork;
             mrNo  : RollBackDBWork;
             mrCancel : Abort;
          End;
        //Iniciar la transacción
        StartTransaction;
    end;
End;
{****************************************************************
Procedimiento   : CommitDBWork
Objetivo        : Hace permanentes los cambios de la transaccion activa
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure CommitDBWork;
Begin
    With _fmdi.data_base_pcp do
    Begin
        //Cancelar si no hay transacción
        If Not InTransaction then
           Raise Exception.Create(cosNoHayTransaccionActiva);
        Commit;
    End;
End;
{****************************************************************
Procedimiento   : RollBackDBWork
Objetivo        : Deshace los cambios realizados en la transacción activa
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de de 2004
Versión         : pcp4000
*****************************************************************}
Procedure RollBackDBWork;
Begin
    With _fmdi.data_base_pcp do
    Begin
        //Cancelar si no hay transacción
        If Not InTransaction then
           Raise Exception.Create(cosNoHayTransaccionActiva);
        RollBack;
    End;
End;
{****************************************************************
Procedimiento   : PCPEnTransaccion
Objetivo        : Indica si existe una transacción activa en PCP
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 12-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Function PCPEnTransaccion : Boolean;
Begin
        Result := _fmdi.data_base_pcp.InTransaction;
End;
{****************************************************************
Procedimiento   : FormatoFloat
Objetivo        : Devuelve el formato con el cual se mostrarán los
                  campos del tipo Float
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 27 de 2004
Versión         : pcp4000
*****************************************************************}
Function FormatoFloat (ConSeparadorDeMiles : Boolean = True): String;      
{$IFDEF PCP4}
Var
   var_auxi_integer : Integer;
{$ENDIF}        
Begin
   {$IFDEF PCP4}
         If ConSeparadorDeMiles then 
                 Result := ',0.'
         Else
                 Result := '0.';
         For var_auxi_integer := 1 to _fmdi.tabl_pcp_opciones.FieldByName('inge_meto_nume_decimales').AsInteger do
              Result := Result + '0';
   {$ELSE}
         If ConSeparadorDeMiles then 
                Result := ',0.000'
         Else
                Result := '0.000';
   {$ENDIF}        
End;
{****************************************************************
Procedimiento   : SetBarraEsperaVisible
Objetivo        : Activa/Desactiva la barra de espera de la
                  ventana MDI
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 17 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure SetEsperaVisible(Value : Boolean);
Begin
    {$IFDEF PCP4}
{        _fmdi.prog_espera.Visible := Value;
        _fmdi.prog_espera.Active := Value;
        _fmdi.prog_espera.Update;
        Application.ProcessMessages;}
    {$ENDIF}
End;
{****************************************************************
Procedimiento   : func_tipo_unid_medi_corte
Objetivo        : Identificar el tipo de unidad de medida de corte
                  convirtiendolo a una variable tipo entero
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
Function func_tipo_unid_medi_corte(unid_medida : String):TUnid_medi_paqu_corte;
Begin
    Result := umpcNoAsignado;
    If UpperCase(unid_medida)='BLOQUES'         Then Result := umpcBLOQUES;
    If UpperCase(unid_medida)='BLOQUES CP'      Then Result := umpcBLOQUESCP;
    If UpperCase(unid_medida)='CAPAS'           Then Result := umpcCAPAS;
    If UpperCase(unid_medida)='PAQUETES'        Then Result := umpcPAQUETES;
    If UpperCase(unid_medida)='TALLAS'          Then Result := umpcTALLAS;
End;
{****************************************************************
Procedimiento   : doCambiarTextoIndicadoresProduccion
Objetivo        : Cabia el texto de los labels asociados a los
                  indicadores de producción
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 09 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
{$IFDEF PCP4}
Procedure doCambiarTextoIndicadoresProduccion(peQuery : TQuery;
    peNomb_para_1 : String = 'INDI_1';
    peNomb_para_2 : String = 'INDI_2';
    peNomb_para_3 : String = 'INDI_3');
Begin
    If (peQuery = Nil) Then Exit;
    peQuery.FieldByName(peNomb_para_1).DisplayLabel := _fmdi.tabl_pcp_opciones.FieldByName('CONT_PROD_NOMB_INDI_1').asString;
    peQuery.FieldByName(peNomb_para_2).DisplayLabel := _fmdi.tabl_pcp_opciones.FieldByName('CONT_PROD_NOMB_INDI_2').asString;
    peQuery.FieldByName(peNomb_para_3).DisplayLabel := _fmdi.tabl_pcp_opciones.FieldByName('CONT_PROD_NOMB_INDI_3').asString;
End;
{$ENDIF}
{****************************************************************
Procedimiento   : doAplicarFiltroUsuarioPCP
Objetivo        : Aplica un filtro en la tabla temporal de filtros por usuario
                  de acuerdo con el SQL enviado.
                  El objetivo es llenar una tabla temporal (en la base de datos real)
                  con datos para ser utilizados de manera inmediata, como apoyo a otras
                  consultas (por ejemplo filtrando y utilizando select in ())
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 31 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
Procedure doAplicarFiltroUsuarioPCP(pe_SQL : String; pe_tag_filtro : Integer = -1;
    pe_es_entero : Boolean = True);
Var
    var_query   : TQuery;
Begin
    {$IFDEF PCP4}
    //Limpiar el filtro actual
    With _fMdi.quer_elim_filtro do
    Begin
        ParamByName('usuario').Value := var_usua_activo;
        //cuando el pe_tag_Filtro = -1 se borran TODOS los filtros (0..1000)
        if pe_tag_filtro = -1 Then
        Begin
              ParamByName('tag_inicio').Value := 0;
              ParamByName('tag_final').Value := 1000;
        End
        Else
        //De lo contrario, se borra el rango solicitado
        Begin
              ParamByName('tag_inicio').Value := pe_tag_filtro;
              ParamByName('tag_final').Value := pe_tag_filtro;
        End;
        //Ejecutar
        ExecSQL;
    End;
    //Si no hay consulta, salir
    if pe_SQL = '' Then Exit;
    //Las consultas enviadas SOLAMENTE DEBEN CONTENER UN CAMPO
    var_query := TQuery.Create(Nil);
    Try
      With var_query do
      Begin
          DataBaseName := _fmdi.data_base_pcp.DataBaseName;
          Sql.Clear;
          Sql.Add(pe_SQL);
          Open;
          //Verificar que solo tenga un campo
          if FieldDefs.Count <> 1 Then
            Raise Exception.Create(cos_Error_doAplicarFiltroUsuarioPCP);
          //Insertar los registros
          _fmdi.quer_inse_filtro.ParamByName('usuario').Value := var_usua_activo;
          _fmdi.quer_inse_filtro.ParamByName('tag_filtro').Value := pe_tag_filtro;
          _fmdi.quer_inse_filtro.ParamByName('inte_filtro').Clear;
          _fmdi.quer_inse_filtro.ParamByName('varc_filtro').Clear;
          While not Eof do
          Begin
              if pe_es_entero Then
                 _fmdi.quer_inse_filtro.ParamByName('inte_filtro').Value := Fields[0].asInteger
              Else
                 _fmdi.quer_inse_filtro.ParamByName('varc_filtro').Value := Fields[0].asString;
              _fmdi.quer_inse_filtro.ExecSQL;
              //Siguiente
              Next;
          End;
          Close;
      End;
    Except
       On E:Exception do
          EjecutarMensajeError(e.Message);
    End;
    //Liberar el query
    if (var_query <> Nil) Then
        var_query.Free;
    {$ENDIF}
End;

{****************************************************************
Procedimiento   : doEjecutarDialogoSeleccionCampos
Objetivo        : Ejecutar el diálogo de selección de campos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
Function doEjecutarDialogoSeleccionCampos(peDataSet: TDataSet; var peCampo: string): Boolean;
Begin
      Application.CreateForm(Tfn0_dial_sele_campos, fn0_dial_sele_campos);
      Result := fn0_dial_sele_Campos.doEjecutarVentana(peDataSet, peCampo);
End;
{****************************************************************
Procedimiento   : doEjecutarDialogoLineas
Objetivo        : Ejecutar el diálogo de edición de lineas
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
function doEjecutarDialogoLineas(peLineas: TStrings; peDataSet: TDataSet): Boolean;
Begin
    Application.CreateForm(Tfn0_dial_strings, fn0_dial_strings);
    Result := fn0_Dial_Strings.doEjecutarVentana(peLineas, peDataSet);
End;
{OVERLOAD}
function doEjecutarDialogoLineas(var peStr: string; peDataSet: TDataSet): Boolean;
Begin
    Application.CreateForm(Tfn0_dial_strings, fn0_dial_strings);
    Result := fn0_Dial_Strings.doEjecutarVentana(peStr, peDataSet);
End;
{****************************************************************
Procedimiento   : EjecutarMensajeBalon
Objetivo        : Muestra un mensaje en un balón
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 16 de 2005
Versión         : pcp4.0.20.4
*****************************************************************}

Procedure EjecutarMensajeBalon(peControl   : TControl;  peTitulo, peMensaje : String;
                    peTipoMensaje : TTipoMensajeBalon; peMostrarBotonCerrar : Boolean = True; peSonido : Boolean = True;
                    peTiempoVisible : Integer = 5000);
Begin
    //Validar el control inicial
    if peControl = Nil Then peControl := Application.MainForm;
    With _fmdi.mens_balon do
    Begin
         //Botón de cerrar
         if peMostrarBotonCerrar then
          Options := Options + [boShowCloseBtn]
         else
          Options := Options - [boShowCloseBtn];
         //Sonido
         if peSonido then
          Options := Options + [boPlaySound]
         else
          Options := Options - [boPlaySound];
         //Mostrar el mensaje
         Case peTipoMensaje of
            ikNone, ikCustom : ActivateHint(peControl, peMensaje, peTitulo, peTiempoVisible);
            Else ActivateHint(peControl, peMensaje, TjvIconKind(peTipoMensaje), peTitulo, peTiempoVisible);
         End;
    End;
End;
{****************************************************************
Procedimiento   : CerrarMensajeBalon
Objetivo        : Cierra el mensaje del mdi form
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 28-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure CerrarMensajeBalon;
Begin
     _fmdi.mens_balon.CancelHint;
End;
{****************************************************************
Procedimiento   : ObjetoAdicionalPCPToInteger
Objetivo        : Convierte un tipo ObjetoAdicionalPCP a Entero
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 08-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Function ObjetoAdicionalPCPToInteger(peObjetoAdicionalPCP : TObjetoAdicionalPCP) : Integer;
Begin
      Case peObjetoAdicionalPCP of
         toaConsultas : Result := 1;
         toaFormularios : Result := 2;
         toaInformes : Result := 3;
         toaImagenes : Result := 4;
         toaInformesEnChild : Result := 5;
         Else Result := 0;
      End;
End;
{****************************************************************
Procedimiento   : IntegerToObjetoAdicionalPCP
Objetivo        : Convierte un tipo Entero a ObjetoAdicionalPCP
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 08-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Function IntegerToObjetoAdicionalPCP(peInteger : Integer) : TObjetoAdicionalPCP;
Begin
      Case peInteger of
         1 : Result := toaConsultas;
         2 : Result := toaFormularios;
         3 : Result := toaInformes;
         4 : Result := toaImagenes;
         5 : Result := toaInformesEnChild;
         Else Result := toaNinguno;
      End;
End;

{****************************************************************
Procedimiento   : ListaRapida
Objetivo        : Ejecuta una lista rápida para búsquedas
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure ListaRapida(peDataSet : TDataSet; peKeyFieldName : String = '');
Begin
        if (peDataSet = Nil) Then Exit;
        if (Not peDataSet.Active) Then Exit;
        Application.CreateForm(Tfn0_list_rapida, fn0_list_rapida);
        fn0_list_rapida.Ejecutar(peDataSet, peKeyFieldName);
End;

{****************************************************************
Procedimiento   : ObservacionesImagenCatalogo
Objetivo        : Función para obtener las observaciones de una imágen del
                  catálogo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 26-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Function ObservacionesImagenCatalogo(peCons_Herr_Imagen : Integer) : String;
var
        var_Query       : TQuery;
Begin
    Result := '';
    //Validar
    if (peCons_Herr_Imagen = 0) Then Exit;
    var_Query := TQuery.Create(Nil);
    Try
         With  var_Query do
         Begin
             DataBaseName := cosDataBasePCP;
             SQL.Add('SELECT OBSERVACIONES FROM GLO_HERR_IMAGENES');
             SQL.Add('WHERE CONS_HERR_IMAGEN = ' + IntToStr(peCons_Herr_Imagen));
             Open;
             Result := FieldByName('observaciones').asString;
             Close;
         End;
    Finally
        var_Query.Free;
    End;
End;
{****************************************************************
Procedimiento   : MostrarImagenVentanaCompleta
Objetivo        : Muestra una imágen en una ventana de pantalla completa
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 27-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Procedure MostrarImagenVentanaCompleta(peDataSource : TDataSource; peDataField : String);
Begin
    //Validar
    if (peDataSource = Nil) or (peDataSource.DataSet = Nil) or (Not peDataSource.DataSet.Active) Then
        Raise Exception.Create(Format(cosErrorFuenteDatosNoValida, ['']));
    if (peDataField = '') Then
        Raise Exception.Create(cosErrorNombreCampoNulo);
    //Crear el modal para mostrar la imagen en showmodal
    Application.CreateForm(T_FVent_Most_Imagen, _FVent_Most_Imagen);
    With _FVent_Most_Imagen Do
    Begin
        //ajustar imagen que no va a la base de datos
        fram_fotografia.fram_chec_ajustar.Visible := False;
        fram_fotografia.CBAjustar.Visible := True;
        fram_fotografia.CBAjustar.Left := fram_fotografia.fram_chec_ajustar.Left;
        //Asignar dataset y fieldname a los componentes
        fram_fotografia.fram_fotografia.DataSource := peDataSource;
        fram_fotografia.fram_fotografia.DataField := peDataField;
        //Mostrar la ventana en MODAL
        ShowModal;
    End;
End;
{****************************************************************
Procedimiento   : BlobFieldToJPEGStream
Objetivo        : Convierte la imágen de la base de datos
                  a un stream en memoria con el anchoxalto dados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 27-May-2005
Versión         : pcp4.0.20.10
*****************************************************************}
Procedure EDBImageToBlobField(peEDBImage : TEDBImage; peBlobField : TBlobField; peAncho : Integer = 0; peAlto : Integer = 0);
var
        var_Bitmap      : TBitmap;
        var_jpeg        : TJPEGImage;
        var_Rect        : TRect;
        var_width       : Integer;
        var_height      : Integer;
        var_half        : Integer;
        var_Stream      : TMemoryStream;
Begin
      //Validar
      If (peEDBImage = Nil) Then
          Raise Exception.Create(cosErrorEDBImageNotValid);
      if (peBlobField = Nil) or (peBlobField.DataSet = Nil) or (Not peBlobField.DataSet.Active) Then
          Raise Exception.Create(cosErrorBlobFieldNotValid);
      if Not Assigned(peEDBImage.Picture.Graphic) Then Exit;
      //Crear los componentes necesarios
      var_Bitmap := TBitmap.Create;
      var_jpeg := TJPEGImage.Create;
      var_Stream := TMemoryStream.Create;
      Try
             if (peAncho = 0) or (peAlto = 0) Then
             Begin
                var_Bitmap.Width := peEDBImage.Picture.Graphic.Width;
                var_Bitmap.Height := peEDBImage.Picture.Graphic.Height;
             End
             Else
             Begin
                var_Bitmap.Width := peAncho;
                var_Bitmap.Height := peAlto;
             End;
             //Hallar el rect en el que se dibujará

             IF ((peEDBImage.Picture.Graphic.Width / peEDBImage.Picture.Graphic.Height)  <  (var_Bitmap.Width / var_Bitmap.Height)) Then
             Begin
                // Stretch Height to match.
                var_Rect.Top    := 0;
                var_Rect.Bottom := var_Bitmap.Height;

                // Adjust and center Width.
                var_Width := MulDiv(var_Bitmap.Height, peEDBImage.Picture.Graphic.Width, peEDBImage.Picture.Graphic.Height);
                var_Half := (var_Bitmap.Width - var_Width) DIV 2;

                var_Rect.Left  := var_Half;
                var_Rect.Right := var_Rect.Left + var_Width;
             End
             Else
             Begin
                // Stretch Width to match.
                var_Rect.Left    := 0;
                var_Rect.Right   := var_Bitmap.Width;

                // Adjust and center Height.
                var_Height := MulDiv(var_Bitmap.Width, peEDBImage.Picture.Graphic.Height, peEDBImage.Picture.Graphic.Width);
                var_Half := (var_Bitmap.Height - var_Height) DIV 2;

                var_Rect.Top    := var_Half;
                var_Rect.Bottom := var_Rect.Top + var_Height
              End;

             var_Bitmap.Canvas.StretchDraw(var_Rect, peEDBImage.Picture.Graphic);
             var_JPEG.Assign(var_Bitmap);
             var_JPEG.SaveToStream(var_Stream);
             peBlobField.LoadFromStream(var_Stream);
      Except
          on E:Exception do
             EjecutarMensajeError(e.Message);
      End;
      var_Bitmap.Free;
      var_JPEG.Free;
      var_Stream.Free;
End;
{****************************************************************
Procedimiento   : IntegerToTipoUbicacionPersonal
Objetivo        : Convierte un entero a TipoUbicacionPersonal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
Function IntegerToTipoUbicacionPersonal(peInteger : Integer) : TTipoUbicacionPersonal;
Begin
      Case peInteger of
         1 : Result := upPlantaPropia;
         2 : Result := upTallerSatelite;
         3 : Result := upBodega;
         4 : Result := upOtraUbicacion;
         Else Result := upNoAsingado;
      End;
End;
{****************************************************************
Procedimiento   : TipoUbicacionPersonalToInteger
Objetivo        : Convierte un TipoUbicacionPersonal a entero
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
Function TipoUbicacionPersonalToInteger(peTipoUbicacion : TTipoUbicacionPersonal) : Integer;
Begin
      Case peTipoUbicacion of
         upPlantaPropia : Result := 1;
         upTallerSatelite : Result := 2;
         upBodega : Result := 3;
         upOtraUbicacion : Result := 4;
         Else Result := 0;
      End;
End;

end.

