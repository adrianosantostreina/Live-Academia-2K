program srvLive2k;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  Horse,
  Horse.Jhonson,
  Horse.Compression,
  System.SysUtils,
  controller.usuarios in 'controllers\controller.usuarios.pas',
  dao.usuarios in 'dao\dao.usuarios.pas';

begin
  THorse
    .Use(Compression())
    .Use(Jhonson);

  THorse
    .Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse)
    begin
      Res.Send('pong');
    end
    );

  THorse
    .Listen(3010);
end.
