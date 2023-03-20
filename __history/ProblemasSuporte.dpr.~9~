program ProblemasSuporte;
uses
  Vcl.Forms,
  Suporte.View.Pages.Form.Main in 'src\view\pages\Suporte.View.Pages.Form.Main.pas' {formPrincipal},
  Connection in 'src\connection\Connection.pas' {TdmConnection: TDataModule};

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  //ReportMemoryLeaksOnShutdown := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.Run;
end.
