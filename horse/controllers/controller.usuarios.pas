unit controller.usuarios;

interface

uses
  Horse,
  System.JSON,
  System.Classes,
  System.SysUtils,
  System.StrUtils,

  ADRConn.Model.Factory,
  ADRConn.Model.Interfaces,

  DAO.Usuarios
  ;

procedure Registry;

implementation

procedure DoList(Req: THorseRequest; Res: THorseResponse);
var
  LDAO    : TADRConnDAOUsuario;
  LConn   : IADRConnection;
  LResult : TJSONArray;
begin
  LConn := TADRConnModelFactory.GetConnectionIniFile();
  LConn.Connect;
  LDAO := TADRConnDAOUsuario.Create(LConn);
  try
    LResult := LDAO.List;
    if LResult.Count > 0 then
      Res
        .Send<TJSONArray>(LResult)
        .Status(THTTPStatus.OK)
    else
      Res
        .Send<TJSONArray>(LResult)
        .Status(THTTPStatus.NotFound) //404
  finally
    LDao.Free;
  end;
end;

procedure Registry;
begin
  THorse
    .Get('/usuarios', DoList);
end;

initialization
  Registry;

end.
