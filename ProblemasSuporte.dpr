program ProblemasSuporte;
uses
  Vcl.Forms,
  frmMain in 'src\view\pages\frmMain.pas' {formPrincipal},
  uConexao in 'src\model\connection\uConexao.pas',
  uProblema in 'src\model\models\uProblema.pas',
  uModulo in 'src\model\models\uModulo.pas',
  DAOModulo in 'src\model\DAO\DAOModulo.pas',
  DAOProblema in 'src\model\DAO\DAOProblema.pas',
  uControllerProblema in 'src\controller\uControllerProblema.pas',
  uControllerModulo in 'src\controller\uControllerModulo.pas';

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  ReportMemoryLeaksOnShutdown := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.Run;
end.