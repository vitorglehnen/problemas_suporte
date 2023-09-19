unit uDAOConsultaPadrao;

interface

uses
  FireDAC.Comp.Client, 
  uConexao, 
  Data.DB, 
  uProblema, 
  Vcl.Dialogs,
  uInterfaceUsuario;

type
  TDAOConsPadrao = class
  private
    FConn: TConexao;
    FQuery: TFDQuery;
    FDataSource: TDataSource;
  public
    procedure InsertConsultaPadrao(aUsuario: Integer; aDescricao: String);
    procedure UpdateConsultaPadrao(aUsuario: Integer; aIndice: Integer; aDescricao: String);
    function BuscaConsultaPadrao(aUsuario: Integer; aDescricao: String): Integer;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TDAOProblema }

constructor TDAOConsPadrao.Create;
begin
  { Método construtor da classe }

  FConn := TConexao.Create;
end;

destructor TDAOConsPadrao.Destroy;
begin
  { Método destrutor da classe }

  FConn.Free;

  inherited;
end;

function TDAOConsPadrao.BuscaConsultaPadrao(aUsuario: Integer; aDescricao: String): Integer;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'SELECT * FROM conspadrao c WHERE c.cod_usu = :cod_usu AND c.descricao = :descricao';
  FQuery.ParamByName('cod_usu').AsInteger := aUsuario;
  FQuery.ParamByName('descricao').AsString := aDescricao;
  FQuery.Open;

  FDataSource.DataSet := FQuery;

  FConn.GetConn.Commit;

  Result := FDataSource.DataSet.FieldByName('indice').AsInteger;
end;

procedure TDAOConsPadrao.InsertConsultaPadrao(aUsuario: Integer; aDescricao: String);
begin
  FQuery := FConn.CriarQuery;

  FQuery.SQL.Text := 'INSERT INTO conspadrao (descricao, cod_usu, indice) VALUES (:descricao, :cod_usu, :indice)';
  FQuery.ParamByName('descricao').AsString := aDescricao;
  FQuery.ParamByName('cod_usu').AsInteger := aUsuario;
  FQuery.ParamByName('indice').AsInteger := 0;
  FQuery.ExecSQL;

  FConn.GetConn.Commit;
end;

procedure TDAOConsPadrao.UpdateConsultaPadrao(aUsuario: Integer; aIndice: Integer; aDescricao: String);
begin
  FQuery := FConn.CriarQuery;

  FQuery.SQL.Text := 'UPDATE conspadrao c SET c.indice = :indice WHERE c.descricao = :descricao and c.cod_usu = :cod_usu';
  FQuery.ParamByName('descricao').AsString := aDescricao;
  FQuery.ParamByName('indice').AsInteger := aIndice;
  FQuery.ParamByName('cod_usu').AsInteger := aUsuario;
  FQuery.ExecSQL;

  FConn.GetConn.Commit;
end;

end.
