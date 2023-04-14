unit DAOModulo;

interface

uses uConexao, uModulo, FireDAC.Comp.Client, Vcl.Dialogs, System.Generics.Collections,
  Vcl.DBCtrls;

type
  TDAOModulo = Class
  private
    FConn: TConexao;
    FQuery: TFDQuery;
    FModulo: TModulo;
  public
    function BuscaTabelaModulos : TList<TModulo>;
    constructor Create;
    destructor Destroy; override;
  End;

implementation

{ TDAOModulo }

function TDAOModulo.BuscaTabelaModulos : TList<TModulo>;
begin
  var aListModulo: TList<TModulo>:= TList<TModulo>.Create;
  FQuery:= FConn.CriarQuery;

  try
    FQuery.Open('SELECT nome FROM modulos ORDER BY nome');

    while not FQuery.Eof do
    begin
      FModulo.Nome:= FQuery.FieldByName('nome').AsString;
      aListModulo.Add(FModulo);
      FQuery.Next;
    end;

    Result := aListModulo;
  finally
    aListModulo.Free;
  end;
end;

constructor TDAOModulo.Create;
begin
  FConn:= TConexao.Create;
  FModulo:= TModulo.Create;
end;

destructor TDAOModulo.Destroy;
begin
  FConn.Free;
  FModulo.Free;
  FQuery.Free;
  inherited;
end;

end.
