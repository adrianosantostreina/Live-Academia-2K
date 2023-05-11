unit dao.usuarios;

interface

uses
  ADRConn.DAO.Base,
  ADRConn.Model.Factory,
  ADRConn.Model.Interfaces,

  Dataset.Serialize,

  System.Classes,
  System.JSON,
  System.StrUtils,
  System.SysUtils;

type
  TADRConnDAOUsuario = class(TADRConnDAOBase)
    private
    public
      function List(): TJSONArray;
      function Find(AID: Integer): TJSONObject;
      function Insert(AValue: string): TJSONObject;
      function Update(AID: Integer; AValue: string): TJSONObject;
      function Login(AValue: string): TJSONObject;
  end;

implementation

{ TADRConnDAOUsuario }

function TADRConnDAOUsuario.Find(AID: Integer): TJSONObject;
begin

end;

function TADRConnDAOUsuario.Insert(AValue: string): TJSONObject;
begin

end;

function TADRConnDAOUsuario.List: TJSONArray;
{$Region 'SELECT'}
const
  LSelect =
    'SELECT ID, USUARIO, SENHA, TIPOUSUARIO FROM USUARIOS ORDER BY ID';
{$EndRegion}
var
  LDataSet : TDataSet;
begin
  try
    try
      LDataset :=
        FQuery
          .SQL(LSelect)
          .OpenDataSet;

      Result := LDataset.ToJSONArray;
    except
      Result := TJSONArray.Create;
    end;
  finally
    LDataSet.Free;
  end;

end;

function TADRConnDAOUsuario.Login(AValue: string): TJSONObject;
begin

end;

function TADRConnDAOUsuario.Update(AID: Integer; AValue: string): TJSONObject;
begin

end;

end.
