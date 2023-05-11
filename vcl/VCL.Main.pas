unit VCL.Main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  VCL.Graphics,
  VCL.Controls,
  VCL.Forms,
  VCL.Dialogs,
  VCL.StdCtrls,
  Data.DB,
  VCL.Grids,
  VCL.DBGrids;

type
  TFMain = class(TForm)
    Button1: TButton;
    DBGrid1: TDBGrid;
    dtsUsuarios: TDataSource;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DoUsuarios;
  end;

var
  FMain: TFMain;

implementation

{$R *.dfm}


uses
  Service.Usuarios;

{ TFMain }

procedure TFMain.Button1Click(Sender: TObject);
begin
  DoUsuarios;
end;

procedure TFMain.DoUsuarios;
begin
  ServiceUsuarios.ListarUsuarios;
end;

end.
