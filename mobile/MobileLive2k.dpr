program MobileLive2k;

uses
  System.StartUpCopy,
  FMX.Forms,
  App.Main in 'App.Main.pas' {FMain},
  Service.Geral in 'services\Service.Geral.pas' {ServiceGeral: TDataModule},
  Service.Usuarios in 'services\Service.Usuarios.pas' {ServiceUsuarios: TDataModule},
  App.Constantes in 'infra\App.Constantes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TServiceGeral, ServiceGeral);
  Application.CreateForm(TServiceUsuarios, ServiceUsuarios);
  Application.CreateForm(TFMain, FMain);
  Application.Run;
end.
