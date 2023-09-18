program ProblemasSuporte;
uses
  Vcl.Forms,
  frmMain in 'src\view\pages\frmMain.pas' {formPrincipal},
  uConexao in 'src\model\connection\uConexao.pas',
  uProblema in 'src\model\models\uProblema.pas',
  uModulo in 'src\model\models\uModulo.pas',
  uDAOGridProblema in 'src\model\DAO\uDAOGridProblema.pas',
  uControllerProblema in 'src\controller\uControllerProblema.pas',
  uDAOProblema in 'src\model\DAO\uDAOProblema.pas',
  frmImagensProblema in 'src\view\pages\frmImagensProblema.pas' {formImagensProblema},
  uImagemProblema in 'src\model\models\uImagemProblema.pas',
  uDAOImagemProblema in 'src\model\dao\uDAOImagemProblema.pas',
  uControllerModulo in 'src\controller\uControllerModulo.pas',
  uDAOGridModulo in 'src\model\DAO\uDAOGridModulo.pas',
  frmRichEditTelaCheia in 'src\view\pages\frmRichEditTelaCheia.pas' {formRichEditTelaCheia},
  uDAOUsuario in 'src\model\DAO\uDAOUsuario.pas',
  uUsuario in 'src\model\models\uUsuario.pas',
  uDAOConsultaPadrao in 'src\model\DAO\uDAOConsultaPadrao.pas',
  frmPreferencias in 'src\view\pages\frmPreferencias.pas' {FormPreferencias},
  uInterfaceUsuario in 'src\model\interfaces\uInterfaceUsuario.pas',
  uDAOModulo in 'src\model\DAO\uDAOModulo.pas';

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  ReportMemoryLeaksOnShutdown := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.Run;
end.
