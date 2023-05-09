unit uDAOImagemProblema;

interface

uses
  FireDAC.Comp.Client, uConexao, Data.DB, uImagemProblema, Vcl.Dialogs;

type
  TDAOImagemProblema = class
  private
    FConn: TConexao;
    FQuery: TFDQuery;
    FDataSource: TDataSource;
  public
    procedure InsertImagem(aImagemProblema: TImagemProblema);
    function BuscaImagens(aCodigoProblema: Integer): TDataSource;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TDAOImagemProblema }

function TDAOImagemProblema.BuscaImagens(aCodigoProblema: Integer): TDataSource;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'SELECT * FROM probimg WHERE cod_prob = :cod_prob ORDER BY seq_img';
  FQuery.ParamByName('cod_prob').AsInteger := aCodigoProblema;
  FQuery.Open;

  FDataSource.DataSet := FQuery;
  Result := FDataSource;
end;

constructor TDAOImagemProblema.Create;
begin
  FConn := TConexao.Create;
end;

destructor TDAOImagemProblema.Destroy;
begin
  FConn.Free;
  inherited;
end;

procedure TDAOImagemProblema.InsertImagem(aImagemProblema: TImagemProblema);
begin
  FQuery := FConn.CriarQuery;

  FQuery.SQL.Text :=
    'INSERT INTO probimg (seq_img, cod_prob, imagem, datacr, horacr)' +
    'VALUES (:seq_img, (SELECT GEN_ID(GEN_PROBLEMAS_ID, 0) FROM RDB$DATABASE), '
    + ':imagem, :datacr, :horacr)';
  FQuery.ParamByName('seq_img').AsInteger := aImagemProblema.Sequencia;
  FQuery.ParamByName('imagem').AsString := aImagemProblema.Imagem;
  FQuery.ParamByName('datacr').AsDate := aImagemProblema.Data;
  FQuery.ParamByName('horacr').AsTime := aImagemProblema.Hora;

  FQuery.ExecSQL;
end;

end.
