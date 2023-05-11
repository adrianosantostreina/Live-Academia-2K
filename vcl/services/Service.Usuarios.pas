unit Service.Usuarios;

interface

uses
  System.SysUtils,
  System.Classes,
  Service.Geral,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,

  System.Json;

type
  TServiceUsuarios = class(TServiceGeral)
    MemUsuarios: TFDMemTable;
    MemUsuariosid: TIntegerField;
    MemUsuariosusuario: TStringField;
    MemUsuariossenha: TStringField;
    MemUsuariostipousuario: TIntegerField;
    MemUsuariosusu_perfil: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ListarUsuarios;
  end;

var
  ServiceUsuarios: TServiceUsuarios;

implementation

uses
  RESTRequest4D,
  DataSet.Serialize,
  VCL.Constantes;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TServiceUsuarios }

procedure TServiceUsuarios.ListarUsuarios;
var
  LResponse: IResponse;
begin
  try
    ResetToDefaults(MemUsuarios);
    LResponse :=
      TRequest.New.BaseURL(Format('%s:%s', [C_HOST, C_PORT.ToString]))
      .Resource('/usuarios')
      .ContentType('application/json')
      .Get;

    if (LResponse.StatusCode = 200) and not(LResponse.Content.Equals(EmptyStr)) then
    begin
      MemUsuarios.LoadFromJSON(LResponse.Content);
    end;

    try

    except
      on E: Exception do
      begin
        // Seu tratamento de erro
      end;
    end;
  finally

  end;
end;

end.
