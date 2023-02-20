program ProblemasSuporte;
uses
  Vcl.Forms,
  Suporte.View.Pages.Form.Main in 'src\view\pages\Suporte.View.Pages.Form.Main.pas' {formPrincipal},
  Suporte.Connection.Connection in 'src\connection\Suporte.Connection.Connection.pas' {dmConnection: TDataModule};

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.CreateForm(TdmConnection, dmConnection);
  Application.Run;
end.
