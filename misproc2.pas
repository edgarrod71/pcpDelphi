unit misproc2;

interface
uses Windows, Classes, Graphics, Jpeg;

function ResJpegStream(str : String): TJpegImage;

implementation

{$R recurs32.res}

(***************************************************************)
(* Nombre      : ResJpegStream
(* Creador     : Edgar Fernando Rodriguez P.
(* Fecha       : 25/10/06
(* Versión     : PCP4.03.02
(* Descripción : Incorpora una mejor rutina para cargar Jpegs
(*               en vez de bitmaps.
(***************************************************************)
function ResJpegStream(str : String): TJpegImage;
var
  RSN : TResourceStream;
  BM1 : TBitmap;
begin
  RSN := NIL;
  Result := TJpegImage.Create;
  try
    RSN := TResourceStream.Create(hInstance, str, RT_RCDATA);
    RSN.Seek(0, soFromBeginning);
    try
      Result.LoadFromStream(RSN);
    except // En caso que no sea JPEG, puede ser BMP
      BM1 := TBitmap.Create;
      RSN.Seek(0, soFromBeginning); // Se carga de nuevo
      BM1.LoadFromStream(RSN);
      Result.Assign(BM1);
      BM1.Free;
    end;
  finally
    RSN.Free;
  end;
end;

end.
 