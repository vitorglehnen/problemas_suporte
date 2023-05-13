unit uControllerModulo;

interface

uses uDAOModulo, System.Generics.Collections, uModulo, Datasnap.DBClient,
  Data.DB, System.Classes, uDAOGridModulo;

type
  TControllerModulo = class
  private
    FDAOModulo: TDAOModulo;
    FDAOGridModulo: TDAOGridModulo;
  public
    function BuscaTabelaModulos: TDataSource;
    function BuscaModulos: TStringList;
    procedure DeleteModulo(aModulo : TModulo);
    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  Vcl.Dialogs;

{ TControllerModulo }

function TControllerModulo.BuscaModulos: TStringList;
begin
  var aModulos : TDataset := FDAOGridModulo.BuscaModulos.DataSet;
  var aListaModulos: TStringList := TStringList.Create;

  while not aModulos.Eof do
  begin
    aListaModulos.Add(aModulos.FieldByName('nome').Value);
    aModulos.Next;
  end;

  Result := aListaModulos;
end;

function TControllerModulo.BuscaTabelaModulos: TDataSource;
begin
  Result := FDAOModulo.BuscaTabelaModulos;
end;

constructor TControllerModulo.Create;
begin
  FDAOModulo := TDAOModulo.Create;
  FDAOGridModulo := TDAOGridModulo.Create;
end;

procedure TControllerModulo.DeleteModulo(aModulo: TModulo);
begin
  try
    FDAOModulo.DeleteModulo(aModulo);
  except
    MessageDlg('Não é possível excluir um módulo com problemas vinculados!', mtInformation, [mbOK], 0);
  end;
end;

destructor TControllerModulo.Destroy;
begin
  FDAOModulo.Free;
  FDAOGridModulo.Free;
  inherited;
end;

end.
