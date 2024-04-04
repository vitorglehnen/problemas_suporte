unit uControllerModulo;

interface

uses uDAOModulo, System.Generics.Collections, uModulo, Datasnap.DBClient,
  Data.DB, System.Classes, uDAOGridModulo, uUsuario;

type
  TControllerModulo = class
  private
    FDAOModulo: TDAOModulo;
    FDAOGridModulo: TDAOGridModulo;
  public
    function BuscaTabelaModulos(aNomeModulo: String): TDataSource;
    function BuscaModulos: TStringList;
    function BuscaNomeModulo(aCodigoModulo: Integer): String;
    function BuscaCodigoModulo(aNomeModulo: String): Integer;
    function BuscaQtdeTotalModulos: Integer;
    function BuscaQtdeTotalModulosPorUsuario(aUsuario: TUsuario): Integer;
    procedure DeleteModulo(aModulo: TModulo);
    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  Vcl.Dialogs;

{ TControllerModulo }

constructor TControllerModulo.Create;
begin
  { Método construtor da classe }

  FDAOModulo := TDAOModulo.Create;
  FDAOGridModulo := TDAOGridModulo.Create;
end;

destructor TControllerModulo.Destroy;
begin
  { Método destrutor da classe }

  FDAOModulo.Free;
  FDAOGridModulo.Free;
  inherited;
end;

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

function TControllerModulo.BuscaQtdeTotalModulos: Integer;
begin
  Result := FDAOModulo.BuscaQtdeTotalModulos.DataSet.Fields[0].AsInteger;
end;

function TControllerModulo.BuscaQtdeTotalModulosPorUsuario(
  aUsuario: TUsuario): Integer;
begin
  Result := FDAOModulo.BuscaQtdeTotalModulosPorUsuario(aUsuario).DataSet.Fields[0].AsInteger;
end;

function TControllerModulo.BuscaTabelaModulos(aNomeModulo: String): TDataSource;
begin
  Result := FDAOGridModulo.BuscaTabelaModulos(aNomeModulo);
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

end.
