unit DAOModulo;

interface

uses uConexao, uModulo, FireDAC.Comp.Client, Vcl.Dialogs;

type
  TDAOModulo = Class
  private
    FConn: TConexao;
    FQuery: TFDQuery;
    FModulo: TModulo;
  public
    procedure BuscaModulos;
    constructor Create;
    destructor Destroy; override;
  End;

implementation

{ TDAOModulo }

procedure TDAOModulo.BuscaModulos;
begin
  FQuery:= FConn.CriarQuery;

  FQuery.SQL.Text:= 'SELECT * FROM modulos ORDER BY nome';
  FQuery.Open;

  FModulo.Nome := FQuery.FieldByName('nome').AsString;
  ShowMessage(FModulo.Nome);
end;

constructor TDAOModulo.Create;
begin
  FConn:= TConexao.Create;
  FModulo:= TModulo.Create;

  BuscaModulos;
end;

destructor TDAOModulo.Destroy;
begin
  FConn.Free;
  FModulo.Free;
  inherited;
end;

end.
