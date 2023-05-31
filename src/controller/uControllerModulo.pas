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
    function BuscaNomeModulo(aCodigoModulo: Integer): String;
    function BuscaCodigoModulo(aNomeModulo: String): Integer;
    procedure DeleteModulo(aModulo: TModulo);
    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  Vcl.Dialogs;

{ TControllerModulo }
function TControllerModulo.BuscaCodigoModulo(aNomeModulo: String): Integer;
begin
  var aCodigoModulo : Integer := FDAOModulo.BuscaCodigoModulo(aNomeModulo)
        .DataSet.FieldByName('cod_mod').AsInteger;

  Result := aCodigoModulo;
end;

function TControllerModulo.BuscaModulos: TStringList;
begin
  var
    aModulos: TDataset := FDAOModulo.BuscaModulos.DataSet;
  var
    aListaModulos: TStringList := TStringList.Create;

  while not aModulos.Eof do
  begin
    aListaModulos.Add(aModulos.FieldByName('nome').Value);
    aModulos.Next;
  end;

  Result := aListaModulos;
end;

function TControllerModulo.BuscaNomeModulo(aCodigoModulo: Integer): String;
begin
  Result := FDAOModulo.BuscaNomeModulo(aCodigoModulo).DataSet.FieldByName('nome').Value;
end;

function TControllerModulo.BuscaTabelaModulos: TDataSource;
begin
  Result := FDAOGridModulo.BuscaTabelaModulos;
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
    MessageDlg('Não é possível excluir um módulo com problemas vinculados!',
      mtInformation, [mbOK], 0);
  end;
end;

destructor TControllerModulo.Destroy;
begin
  FDAOModulo.Free;
  FDAOGridModulo.Free;
  inherited;
end;

end.
