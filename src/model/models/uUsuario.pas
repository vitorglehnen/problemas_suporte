unit uUsuario;

interface

uses
  System.Classes,
  Vcl.Dialogs,
  System.IniFiles,
  uDAOUsuario,
  FireDAC.Comp.Client,
  Data.DB,
  uInterfaceUsuario,
  uDAOConsultaPadrao;

type
  TUsuario = class(TInterfacedObject, IUsuario)
  private
    FCodigo: Integer;
    FNome: String;
    FConsultaGeral: Integer;
    FCor: String;
    FIndFiltroConsultaProblema: Integer;

    FDAOUsuario: TDAOUsuario;
    FDAOConsultaPadrao: TDAOConsPadrao;
    FIniConexao: TIniFile;

    procedure CriaUsuario;
  public
    function GetCodigo: Integer;
    function GetNome: String;
    function GetConsultaGeral: Integer;
    function GetCor: String;
    function GetIndFiltroConsultaProblema: Integer;

    procedure SetCodigo(const Value: Integer);
    procedure SetNome(const Value: String);
    procedure SetConsultaGeral(const Value: Integer);
    procedure SetCor(const Value: String);
    procedure SetIndFiltroConsultaProblema(const Value: Integer);

    property Codigo: Integer read GetCodigo write SetCodigo;
    property Nome: String read GetNome write SetNome;
    property ConsultaGeral: Integer read GetConsultaGeral write SetConsultaGeral;
    property Cor: String read GetCor write SetCor;
    property IndFiltroConsultaProblema: Integer read FIndFiltroConsultaProblema write FIndFiltroConsultaProblema;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  System.SysUtils;

{ TUsuario }
constructor TUsuario.Create;
begin
  { Método construtor da classe }

  var aUsuario : TDataSet;

  FDAOUsuario := TDAOUsuario.Create;
  FDAOConsultaPadrao := TDAOConsPadrao.Create;

  FIniConexao := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Connect.ini');

  FNome := FIniConexao.ReadString('Login', 'Usuario', '').ToUpper;
  CriaUsuario;

  aUsuario := FDAOUsuario.RetornaUsuario(FNome);

  FCodigo := aUsuario.FieldByName('cod_usu').AsInteger;
  FConsultaGeral := aUsuario.FieldByName('selecaogeral').AsInteger;
  FCor := aUsuario.FieldByName('cor').AsString;
  FIndFiltroConsultaProblema := FDAOConsultaPadrao.BuscaConsultaPadrao(FCodigo, 'CONSPROBLEMA');
end;

destructor TUsuario.Destroy;
begin
  { Método destrutor da classe }

  FIniConexao.Free;
  FDAOUsuario.Free;
  FDAOConsultaPadrao.Free;

  inherited;
end;

procedure TUsuario.CriaUsuario;
begin
  {   Cria o usuário no banco de dados caso não tenha nenhum com o mesmo nome
    criado ainda, caso estiver vazio a tag do usuário no connect.ini, encerra
    o programa }

  if FNome <> '' then
  begin
    if FDAOUsuario.RetornaUsuario(Self.Nome).IsEmpty then
    begin
      FDAOUsuario.InsertUsuario(Self.Nome);

      var aCodUsuario : Integer := FDAOUsuario.
                                  RetornaUsuario(Self.Nome).
                                    FieldByName('cod_usu').AsInteger;

      FDAOConsultaPadrao.InsertConsultaPadrao(aCodUsuario, 'CONSPROBLEMA');
    end;
  end
  else
  begin
    MessageDlg('Você precisa definir um usuário no connect.ini para acessar o programa!', mtWarning, [mbOk], 0);
    Halt;
  end;
end;

function TUsuario.GetCodigo: Integer;
begin
  Result := FCodigo;
end;

function TUsuario.GetConsultaGeral: Integer;
begin
  Result := FConsultaGeral;
end;

function TUsuario.GetCor: String;
begin
  Result := FCor;
end;

function TUsuario.GetIndFiltroConsultaProblema: Integer;
begin
  Result := FIndFiltroConsultaProblema;
end;

function TUsuario.GetNome: String;
begin
  Result := FNome;
end;

procedure TUsuario.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TUsuario.SetConsultaGeral(const Value: Integer);
begin
  FConsultaGeral := Value;
end;

procedure TUsuario.SetCor(const Value: String);
begin
  FCor := Value;
end;

procedure TUsuario.SetIndFiltroConsultaProblema(const Value: Integer);
begin
  FIndFiltroConsultaProblema := Value;

  FDAOConsultaPadrao.UpdateConsultaPadrao(FCodigo, FIndFiltroConsultaProblema, 'CONSPROBLEMA');
end;

procedure TUsuario.SetNome(const Value: String);
begin
  FNome := Value;
end;

end.
