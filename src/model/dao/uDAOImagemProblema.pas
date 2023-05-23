unit uDAOImagemProblema;

interface

uses
  FireDAC.Comp.Client, uConexao, Data.DB, uImagemProblema;

type
  TDAOImagemProblema = class
  private
    FConn: TConexao;
    FQuery: TFDQuery;
    FDataSource: TDataSource;
  public
    procedure InsertImagem(aImagemProblema: TImagemProblema);
    function BuscaImagens(aCodigoProblema: Integer): TDataSource;
    function BuscaProxCodigo: String;
    procedure DeleteImagem(aImagemProblema: TImagemProblema);
    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  Vcl.Dialogs;

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

function TDAOImagemProblema.BuscaProxCodigo: String;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'SELECT NEXT VALUE FOR GEN_PROBIMG_ID FROM RDB$DATABASE';
  FQuery.Open;

  FDataSource.DataSet := FQuery;
  Result := FDataSource.DataSet.Fields[0].Value;
end;

constructor TDAOImagemProblema.Create;
begin
  FConn := TConexao.Create;
end;

procedure TDAOImagemProblema.DeleteImagem(aImagemProblema: TImagemProblema);
begin
  FQuery := FConn.CriarQuery;

  FQuery.SQL.Text := 'DELETE FROM probimg WHERE imagem = :imagem and cod_prob = :cod_prob';

  FQuery.ParamByName('cod_prob').AsInteger := aImagemProblema.CodigoProblema;
  FQuery.ParamByName('imagem').AsString := aImagemProblema.Imagem;

  FQuery.ExecSQL;
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
    'INSERT INTO probimg (seq_img, cod_prob, imagem)' +
    'VALUES (:seq_img, :cod_prob, :imagem)';
  FQuery.ParamByName('seq_img').AsInteger := aImagemProblema.Sequencia;
  FQuery.ParamByName('cod_prob').AsInteger := aImagemProblema.CodigoProblema;
  FQuery.ParamByName('imagem').AsString := aImagemProblema.Imagem;

  FQuery.ExecSQL;
end;

end.
