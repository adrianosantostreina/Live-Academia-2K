unit Service.Geral;

interface

uses
  System.SysUtils,
  System.Classes,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TServiceGeral = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ResetToDefaults(const AMemTable: TFDMemTable);
  end;

var
  ServiceGeral: TServiceGeral;

implementation

uses
  DataSet.Serialize.Config;

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

{ TServiceGeral }

procedure TServiceGeral.DataModuleCreate(Sender: TObject);
begin
  TDataSetSerializeConfig.GetInstance.CaseNameDefinition := TCaseNameDefinition.cndNone;
end;

procedure TServiceGeral.ResetToDefaults(const AMemTable: TFDMemTable);
begin
  if not AMemTable.Active then
    AMemTable.Active := True;

  if not AMemTable.IsEmpty then
    AMemTable.EmptyDataSet;
end;

end.
