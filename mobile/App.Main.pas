unit App.Main;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, System.Rtti, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListView;

type
  TFMain = class(TForm)
    ListView1: TListView;
    Button1: TButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DoListUsuarios;
  end;

var
  FMain: TFMain;

implementation

uses
  Service.Usuarios,
  RESTRequest4D;

{$R *.fmx}

{ TFMain }

procedure TFMain.Button1Click(Sender: TObject);
begin
  DoListUsuarios;
end;

procedure TFMain.DoListUsuarios;
begin
  ServiceUsuarios.ListarUsuarios;
end;

end.
