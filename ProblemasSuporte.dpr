program ProblemasSuporte;
uses
  Vcl.Forms,
  Suporte.View.Pages.Form.Main in 'src\view\pages\Suporte.View.Pages.Form.Main.pas' {formPrincipal},
  uConexao in 'src\model\connection\uConexao.pas',
  uProblema in 'src\model\uProblema.pas',
  uModulo in 'src\model\uModulo.pas',
  DAOModulo in 'src\model\DAO\DAOModulo.pas',
  DAOProblema in 'src\model\DAO\DAOProblema.pas';

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  ReportMemoryLeaksOnShutdown := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.Run;
end.
