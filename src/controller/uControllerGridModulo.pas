unit uControllerGridModulo;

interface

uses uDAOModulo, System.Generics.Collections, uModulo, Datasnap.DBClient,
  Data.DB;

type
  TControllerGridModulo = class
  private
    FDAOModulo: TDAOModulo;
  public
    function BuscaTabelaModulos: TDataSource;
    procedure DeleteModulo(aModulo : TModulo);
    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  Vcl.Dialogs;

{ TControllerModulo }

function TControllerGridModulo.BuscaTabelaModulos: TDataSource;
begin
  Result := FDAOModulo.BuscaTabelaModulos;
end;

constructor TControllerGridModulo.Create;
begin
  FDAOModulo := TDAOModulo.Create;
end;

procedure TControllerGridModulo.DeleteModulo(aModulo : TModulo);
begin
  try
    FDAOModulo.DeleteModulo(aModulo);
  except
    MessageDlg('Não é possível excluir um módulo com problemas vinculados!', mtInformation, [mbOK], 0);
  end;
end;

destructor TControllerGridModulo.Destroy;
begin
  FDAOModulo.Free;
  inherited;
end;

end.
