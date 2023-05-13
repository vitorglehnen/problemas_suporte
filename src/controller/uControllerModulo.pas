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
  var aModulos : TDataset :=
end;

function TControllerModulo.BuscaTabelaModulos: TDataSource;
begin
  Result := FDAOModulo.BuscaTabelaModulos;
end;

constructor TControllerModulo.Create;
begin
  FDAOModulo := TDAOModulo.Create;
end;

procedure TControllerModulo.DeleteModulo(aModulo: TModulo);
begin
  try
    FDAOModulo.DeleteModulo(aModulo);
  except
    MessageDlg('N�o � poss�vel excluir um m�dulo com problemas vinculados!', mtInformation, [mbOK], 0);
  end;
end;

destructor TControllerModulo.Destroy;
begin
  FDAOModulo.Free;
  inherited;
end;

end.
