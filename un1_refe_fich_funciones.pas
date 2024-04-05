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
        Unit            : un1_refe_fich_funciones
        Objetivo        : Funciones genéricas para el módulo de fichas
                          técnicas
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 24-May-2005
        Versión         : pcp4.0.20.8
*******************************************************************}
unit un1_refe_fich_funciones;

interface

Uses
      _cons_pcp, _vent_modal, _vent_Child, Forms, dbTables, sysUtils, Windows, Classes,
      Controls, SCLColumnGrid, db;


Function AbrirModuloFichaTecnica(peTipoFichaTecnica : TFichasTecnicasDiseno) : T_fvent_Child;

Function ModificarFichaTecnica(peTipoFichaTecnica : TFichasTecnicasDiseno;
         peAccion : TTipoAccion;
         peCons_refe_Ficha : Integer = 0;
         peCaptionVentanaPadre  : String = '';
         peformStyle : TFormStyle = fsMDIChild) : T_fvent_modal;

Procedure ImprimirFichaTecnica(
         peTipoFichaTecnica : TFichasTecnicasDiseno;
         peCons_refe_Ficha : Integer = 0;
         peEsReferencia : Boolean = True);

Function TipoFichasTecnicasToInteger(peTipoFichaTecnica : TFichasTecnicasDiseno) : Integer;
Function IntegerToTipoFichasTecnicas(peValor : Integer) : TFichasTecnicasDiseno;
Function NombreTipoFichasTecnicas(peTipoFichaTecnica : TFichasTecnicasDiseno) : String;
Function TamanoTipoFichasTecnicas(peTipoFichaTecnica : TFichasTecnicasDiseno) : TPoint;
Procedure SetTamanoImagen(peImagen : TWinControl; peTipoFichaTecnica : TFichasTecnicasDiseno);
Procedure GuardarFicha08EnTabla(peCons_Refe_Ficha : Integer);



implementation


Uses
    _func_pcp, urn1_refe_fich_tecn_base, un1_refe_fich_00child,
    _func_varias, _vari_pcp,

    //Ventanas de edición
    

    //Reportes
    urn1_refe_fich_tecn_01_hoja_dise_caratula,
    urn1_refe_fich_tecn_02_hoja_diseno,
    urn1_refe_fich_tecn_03_espe_gene_diseno,
    urn1_refe_fich_tecn_04_espe_dise_detalles,
    urn1_refe_fich_tecn_05_espe_empaque,
    urn1_refe_fich_tecn_06_espe_Construccion,
    urn1_refe_fich_tecn_07_medi_Especiales,
    urn1_refe_fich_tecn_08_medi_prenda_1,
    urn1_refe_fich_tecn_08_medi_prenda_2,
    urn1_refe_fich_tecn_09_espe_presentacion


    ;

{****************************************************************
Procedimiento   : AbrirModuloFichaTecnica
Objetivo        : Abre una ventana Child de fichas técnicas
                  de acuerdo con el tipo de ficha solicitada
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 26-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Function AbrirModuloFichaTecnica(peTipoFichaTecnica : TFichasTecnicasDiseno) : T_fvent_Child;
Begin
    Result := Nil;
    //Evaluar el tipo de ficha técnica
   { Case peTipoFichaTecnica of
         ftdHojaDisenoCaratula : Result :=  AbrirModulo(TFn1_refe_fich_00Child, fsMDIChild, Tfn1_refe_fich_01_hoja_diseno1);
         ftdHojaDiseno : Result := AbrirModulo(TFn1_refe_fich_00Child, fsMDIChild, Tfn1_refe_fich_02_hoja_diseno1);
    End;
    //Configurar el Resultado
    If (Result <> Nil) Then
    Begin
        (Result as tfn1_refe_fich_00Child).TipoFichaTecnica := peTipoFichaTecnica;
    End;    }
End;

    
{****************************************************************
Procedimiento   : ModificarFichaTecnica
Objetivo        : Abre/Modifica/Consulta una ficha técnica especificada
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Function ModificarFichaTecnica(peTipoFichaTecnica : TFichasTecnicasDiseno;
         peAccion : TTipoAccion;
         peCons_refe_Ficha : Integer = 0;
         peCaptionVentanaPadre  : String = '';
         peformStyle : TFormStyle = fsMDIChild) : T_fvent_modal;
Var
   var_text_tipo_ficha  : String;
Begin
        //Inicializar el resultado
        Result := Nil;
    {    //Evaluar el tipo de ficha técnica
        Case peTipoFichaTecnica of
             ftdHojaDisenoCaratula : Begin
                Application.CreateForm(Tfn1_refe_fich_01_hoja_diseno1, fn1_refe_fich_01_hoja_diseno1);
                Result := (fn1_refe_fich_01_hoja_diseno1 as T_fvent_modal);
                fn1_refe_fich_01_hoja_diseno1.Ejecutar(peCons_Refe_Ficha);
             End;
             ftdHojaDiseno : Begin
                Application.CreateForm(Tfn1_refe_fich_02_hoja_diseno1, fn1_refe_fich_02_hoja_diseno1);
                Result := (fn1_refe_fich_02_hoja_diseno1 as T_fvent_modal);
                fn1_refe_fich_02_hoja_diseno1.Ejecutar(peCons_Refe_Ficha);
             End;
        End;
        //Configurar el Resultado
        If (Result <> Nil) Then                                        
        Begin
            var_Text_tipo_Ficha := NombreTipoFichasTecnicas(peTipoFichaTecnica);
            Case peAccion of
                   taInsert       : Result.Caption := Format(cosAdicionando , [var_Text_Tipo_Ficha]);
                   taEdit         : Result.Caption := cosEditando + var_Text_Tipo_Ficha + ' ' + IntToStr(peCons_Refe_Ficha);
                   taConsulta     : Result.Caption := cosConsultando + var_Text_Tipo_Ficha + ' ' + IntToStr(peCons_Refe_Ficha);
            End;
            //Maximizar los child
            if (peFormStyle = fsMDIChild) Then
                Result.WindowState := wsMaximized;
            Result.CaptionVentanaPadre := peCaptionVentanaPadre;
            Result.FormStyle := peFormStyle;
        End;                               }
End;

{****************************************************************
Procedimiento   : ImprimirFichaTecnica
Objetivo        : Imprime una ficha técnica (vista previa)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Procedure ImprimirFichaTecnica(
         peTipoFichaTecnica : TFichasTecnicasDiseno;
         peCons_refe_Ficha : Integer = 0;
         peEsReferencia : Boolean = True);
Var
        var_Ventana : Trn1_refe_fich_tecn_base;
        var_Query       : TQuery;
        var_nume_tallas : Integer;
Const
        con_maxi_tall_verticales = 13;

Begin
       //Crear la ventana contenedora según el tipo de informe
       Case peTipoFichaTecnica of
             ftdHojaDisenoCaratula : Application.CreateForm(Trn1_refe_fich_tecn_01_hoja_dise_caratula, var_Ventana);
             ftdHojaDiseno : Application.CreateForm(Trn1_refe_fich_tecn_02_hoja_diseno, var_Ventana);
             ftdEspecificacionesGeneralesDiseno : Application.CreateForm(Trn1_refe_fich_tecn_03_espe_gene_diseno, var_ventana);
             ftdEspecificacionesDisenoDetalles : Application.CreateForm(Trn1_refe_fich_tecn_04_espe_dise_detalles, var_ventana);
             ftdEspecificacionesEmpaque :   Application.CreateForm(Trn1_refe_fich_tecn_05_espe_empaque, var_ventana);
             ftdMedidasEspecialesDetalles :  Application.CreateForm(Trn1_refe_fich_tecn_07_medi_Especiales, var_ventana);
             ftdEspecificacionesConstruccion :   Application.CreateForm(Trn1_refe_fich_tecn_06_espe_construccion, var_ventana);
             ftdEspecificacionesPresentacion :   Application.CreateForm(Trn1_refe_fich_tecn_09_espe_presentacion, var_ventana);
             ftdMedidasPrendaTerminada :        Begin
                 //Obtener el número de tallas para saber si es vertical / horizontal
                 var_Query := TQuery.Create(Nil);
                 Try
                    With var_Query do
                    Begin
                       DataBaseName := cosDataBasePCP;
                       SQL.Add('SELECT COUNT(*) AS CUANTOS');
                       SQL.Add('FROM PCP_REFE_FICH_08_MEDI_DETA');
                       SQL.Add('WHERE CONS_REFE_FICHA = ' + IntToStr(peCons_refe_Ficha));
                       SQL.Add('AND CONS_FILA = 0');
                       Open;
                       var_nume_tallas := FieldByName('cuantos').asInteger;
                       Close;
                    End;
                 Except
                      var_nume_tallas := 0;
                 End;
                 var_Query.Free;
                  if var_nume_tallas <= con_maxi_tall_verticales Then
                        Application.CreateForm(Trn1_refe_fich_tecn_08_medi_prenda_1, var_ventana)
                  Else
                        Application.CreateForm(Trn1_refe_fich_tecn_08_medi_prenda_2, var_ventana);
             End;
       End;
       //Si no hay reporte, salir
       if var_Ventana = Nil Then Exit;
       //Preparar el reporte
       Case peTipoFichaTecnica of
            ftdHojaDisenoCaratula : Trn1_refe_fich_tecn_01_hoja_dise_caratula(var_ventana).PrepararReporte(peCons_refe_Ficha, peEsReferencia);
            Else
               var_Ventana.PrepararReporte(peCons_refe_Ficha, peEsReferencia);
       End;
       //Mostrar el reporte
       var_Ventana.Preview;
End;


{****************************************************************
Procedimiento   : TipoFichasTecnicasToInteger
Objetivo        : Devuelve el consecutivo correspondiente a un tipo de ficha
                  técnica
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Function TipoFichasTecnicasToInteger(peTipoFichaTecnica : TFichasTecnicasDiseno) : Integer;
Begin
     Result := coiFichasTecnicasDiseno[peTipoFichaTecnica];
End;
{****************************************************************
Procedimiento   : IntegerToTipoFichasTecnicas
Objetivo        : Devuelve el tipo de ficha técnica correspondiente
                  a un consecutivo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versión
     : pcp4.0.20.8
*****************************************************************}
Function IntegerToTipoFichasTecnicas(peValor : Integer) : TFichasTecnicasDiseno;
Var
  var_Tipo : TFichasTecnicasDiseno;
Begin
  Result := ftdSinAsignar; 
  for var_Tipo := Low(TFichasTecnicasDiseno) to High(TFichasTecnicasDiseno) do
  Begin
       if (peValor = coiFichasTecnicasDiseno[var_Tipo]) Then
       Begin
           Result := var_Tipo;
           Break;
       End;
  End;
End;
{****************************************************************
Procedimiento   : NombreTipoFichasTecnicas
Objetivo        : Consulta el nombre de un tipo de ficha técnica dado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 26-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Function NombreTipoFichasTecnicas(peTipoFichaTecnica : TFichasTecnicasDiseno) : String;
var
   var_Query : TQuery;
Begin
    Result := '';
    var_Query := TQuery.Create(Nil);
    Try
          //Actuaizar el caption
          With var_Query do
          Begin
               DataBaseName := cosDataBasePCP;
               SQL.Add('SELECT NOMB_REFE_TIPO_FICHA FROM SIS_REFE_TIPO_FICHA');
               SQL.Add('WHERE CONS_REFE_TIPO_FICHA = ' + IntToStr(coiFichasTecnicasDiseno[peTipoFichaTecnica]));
               Open;
               Result := FieldByName('nomb_refe_tipo_ficha').asString;
               Close;
          End;
    Finally
          var_Query.Free;
    End;
End;

{****************************************************************
Procedimiento   : TamanoTipoFichasTecnicas
Objetivo        : Devuelve el tamaño del tipo de ficha
                  técnica especificada
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
Function TamanoTipoFichasTecnicas(peTipoFichaTecnica : TFichasTecnicasDiseno) : TPoint;
var
   var_Query : TQuery;
Begin
    //Inicializar el resultado
    Result := Point(0,0);
    var_Query := TQuery.Create(Nil);
    Try
          //Actuaizar el caption
          With var_Query do
          Begin
               DataBaseName := cosDataBasePCP;
               SQL.Add('SELECT ALTO, ANCHO FROM GLO_HERR_IMAG_CATEGORIAS');
               SQL.Add('WHERE CONS_HERR_IMAG_CATEGORIA = ' + IntToStr(coiFichasTecnicasDiseno[peTipoFichaTecnica] + 100));
               Open;
               Result.X := FieldByName('ancho').asInteger;
               Result.Y := FieldByName('alto').asInteger;
               Close;
          End;
    Finally
          var_Query.Free;
    End;
End;

{****************************************************************
Procedimiento   : SetTamanoImagen
Objetivo        : Da el tamaño óptimo a un cuado de edición de imágenes
                  de acuerdo con el tipo de ficha técnica
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
Procedure SetTamanoImagen(peImagen : TWinControl; peTipoFichaTecnica : TFichasTecnicasDiseno);
Var
        var_AnchoImagenes       : Integer;
        var_AltoImagenes        : Integer;
        var_Point       : TPoint;
Begin
       //Obtener el tamaño de la imáge
       var_Point := TamanoTipoFichasTecnicas(peTipoFichaTecnica);
       var_AnchoImagenes := var_Point.X;
       var_AltoImagenes := var_Point.Y;
       //Validar
       if (var_AnchoImagenes = 0) or (var_AltoImagenes = 0) then
          Exit;
       if (peImagen = Nil) then Exit;
       //Si es más ancho que alto
       if (var_AnchoImagenes > var_AltoImagenes) Then
       Begin
              peImagen.Width := peImagen.Parent.Width - 15;
              peImagen.Height := Trunc(peImagen.parent.Width * (var_altoImagenes / var_anchoImagenes));
       End
       Else
       Begin
              peImagen.Height := peImagen.Parent.Height - 15;
              peImagen.Width := Trunc(peImagen.parent.Height * (var_anchoImagenes / var_altoImagenes));
       End;
End;
{****************************************************************
Procedimiento   : GuardarFicha08EnTabla
Objetivo        : Guarda una ficha técnia 08 (Medidas de prenda terminada)
                  en una tabla de memoria para ser impresa
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 07-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
Procedure GuardarFicha08EnTabla(peCons_Refe_Ficha : Integer);
var
        var_Grid        : TSCLColumnGrid;
        var_Quer_Tall_Ficha       : TQuery;
        var_quer_sele_Cantidades        : TQuery;
        var_Max_Row     : Integer;
        var_i   : Integer;
        var_Fila        : Integer;
        var_Colu        : Integer;
        var_Tabla       : TTable;

Const
        con_Colu_Iniciales = 3; //Numero de columnas iniciales del GRID
        con_Maxi_Tallas = 20; //Numero de tallas que se crearán (incluye 4 titulos)
Begin
    //Crear los componentes
    var_Tabla := TTable.Create(Nil);
    var_Grid := TSCLColumnGrid.Create(nil);
    var_Quer_Tall_Ficha := TQuery.Create(Nil);
    With var_Tabla do
    Begin
         DataBaseName := 'PCPLOCAL';
         TableName := 'tmp_repo_fich_tecn_08';
    End;
    with var_Quer_Tall_Ficha do
    Begin
        DataBaseName := cosDataBasePCP;
        SQL.Add('SELECT TEXTO');
        SQL.Add('FROM PCP_REFE_FICH_08_MEDI_DETA');
        SQL.Add('WHERE CONS_REFE_FICHA = '+IntToStr(peCons_Refe_Ficha));
        SQL.Add('AND CONS_FILA = 0');
        SQL.Add('ORDER BY CONS_COLUMNA');
        Open;
    End;
    var_quer_sele_Cantidades := TQuery.Create(Nil);
    With var_quer_sele_Cantidades do
    Begin
        DataBaseName := cosDataBasePCP;
        SQL.Add('SELECT CONS_FILA, CONS_COLUMNA, TEXTO');
        SQL.Add('FROM PCP_REFE_FICH_08_MEDI_DETA');
        SQL.Add('WHERE CONS_REFE_FICHA = '+IntToStr(peCons_Refe_Ficha));
        SQL.Add('AND CONS_FILA > 0');
        SQL.Add('ORDER BY CONS_FILA, CONS_COLUMNA');
        Open;
    End;
    Try
        //Vaciar la tabla temporal
        With var_Tabla do
        Begin
            FieldDefs.Clear;
            FieldDefs.Add('cons_refe_ficha', ftInteger, 0 ,False);
            FieldDefs.Add('cons_fila', ftInteger, 0 ,False);
        End;
        //Llamar las cantidades
        With var_Grid do
        Begin
                //Dar formato al GRID
                Visible := False;
                RowCount := 2;
                ColCount := con_Colu_Iniciales;
                Cells[0,0] := cosZona;
                Cells[0,1] := cosDe;
                Cells[1,1] := cosA;
                Cells[2,1] := cosDenominacion;
                //Llamar las tallas
                With var_quer_tall_ficha do
                Begin
                   While not Eof do
                   Begin
                        //Crear la columnma
                        ColCount := ColCount + 1;
                        Columns[ColCount - 1].Width := 50;
                        Cells[ColCount - 1, 1] := FieldByName('texto').AsString;
                        //Siguiente registro
                        Next;
                   End;
                   Close;
                End;
                //Crear los campos
                For var_i := 1 to con_maxi_tallas + 1 do
                    var_Tabla.FieldDefs.Add('camp_' + IntToStr(var_i - 1), ftString, 60 ,False);
                var_Tabla.FieldDefs.Add('mas_menos', ftString, 60 ,False);
                //Cantidades
                With var_quer_sele_Cantidades do
                Begin
                    Open;
                    var_Max_Row := 0;
                    While Not Eof do
                    Begin
                         Try
                             If (FieldByName('cons_Fila').asInteger > var_Max_Row) Then
                                var_Max_Row := FieldByName('cons_Fila').asInteger + 1;
                             Cells[FieldByName('cons_columna').AsInteger, FieldByName('cons_fila').asInteger + 1] := FieldByName('texto').AsString;
                         Except
                            on E:Exception do
                                EjecutarMensajeError(e.Message);
                         End;
                         Next;
                    End;
                    Close;
                    RowCount := var_Max_Row + 1;
                End;
        End;
        //Crear la tabla temporal
        var_Tabla.CreateTable;
        var_Tabla.Open;
        With var_Tabla do
        Begin
             For var_Fila := 1 to var_Grid.RowCount - 1 do
             Begin
                 Insert;
                 FieldByName('cons_refe_ficha').Value := peCons_Refe_Ficha;
                 FieldByName('cons_fila').Value := var_Fila;
                 For var_Colu := 0 to con_maxi_tallas do
                 Begin
                     //Casos en los que no se guarda
                     if Not
                        ((var_Fila = 1) and (var_Colu = 2)) Then
                     Begin
                        //Si no es la última
                        if var_Colu <> var_Grid.ColCount - 1 Then
                            FieldByName('camp_' + IntToStr(var_Colu)).Value := var_Grid.Cells[var_Colu, var_Fila]
                        Else
                            FieldByName('mas_menos').Value := var_Grid.Cells[var_Colu, var_Fila];
                     End;
                 End;
                 Post;
             End;
        End;
    Except
        On e:Exception do
           EjecutarMensajeError(e.Message);
    End;
    //Liberar los objetos
    var_Tabla.Free;
    var_Quer_Tall_Ficha.Free;
    var_quer_sele_Cantidades.Free;
    var_Grid.Free;
End;

end.
