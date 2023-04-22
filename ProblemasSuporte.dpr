program ProblemasSuporte;
uses
  Vcl.Forms,
  frmMain in 'src\view\pages\frmMain.pas' {formPrincipal},
  uConexao in 'src\model\connection\uConexao.pas',
  uProblema in 'src\model\models\uProblema.pas',
  uModulo in 'src\model\models\uModulo.pas',
  uDAOModulo in 'src\model\DAO\uDAOModulo.pas',
  uDAOGridProblema in 'src\model\DAO\uDAOGridProblema.pas',
  uControllerProblema in 'src\controller\uControllerProblema.pas',
  uControllerModulo in 'src\controller\uControllerModulo.pas',
  uServiceModulo in 'src\services\uServiceModulo.pas',
  uServiceProblema in 'src\services\uServiceProblema.pas',
  uDAOProblema in 'src\model\DAO\uDAOProblema.pas';

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  ReportMemoryLeaksOnShutdown := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.Run;
end.
