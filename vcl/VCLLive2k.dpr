program VCLLive2k;

uses
  Vcl.Forms,
  VCL.Main in 'VCL.Main.pas' {FMain},
  Service.Geral in 'services\Service.Geral.pas' {ServiceGeral: TDataModule},
  Service.Usuarios in 'services\Service.Usuarios.pas' {ServiceUsuarios: TDataModule},
  VCL.Constantes in 'infra\VCL.Constantes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TServiceGeral, ServiceGeral);
  Application.CreateForm(TServiceUsuarios, ServiceUsuarios);
  Application.CreateForm(TFMain, FMain);
  Application.Run;
end.
