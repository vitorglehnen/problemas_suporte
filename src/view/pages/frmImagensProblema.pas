unit frmImagensProblema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Clipbrd, Vcl.Buttons,
  Vcl.StdCtrls, System.ImageList, Vcl.ImgList, pngimage, jpeg, uImagemProblema,
  uControllerProblema;

type
  TformImagensProblema = class(TForm)
    pnlPrincipal: TPanel;
    imgProblema: TImage;
    btnProxImagem: TSpeedButton;
    btnAntImagem: TSpeedButton;
    pnlTopImagem: TPanel;
    btnRemoverImagem: TSpeedButton;
    btnAddImagem: TSpeedButton;
    btnSalvarImagem: TSpeedButton;
    btnCancelarImagem: TSpeedButton;
    Panel1: TPanel;
    lblNmroImagem: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnAntImagemClick(Sender: TObject);
    procedure InverteCrudImagem;
    procedure btnSalvarImagemMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnProxImagemClick(Sender: TObject);
    procedure btnAddImagemClick(Sender: TObject);
    procedure btnRemoverImagemClick(Sender: TObject);
  private
    { Private declarations }
    FPosicaoListaImagem: Integer;
    FControllerProblema: TControllerProblema;
  public
    { Public declarations }
    FListaImagens: TStringList;
  end;

var
  formImagensProblema: TformImagensProblema;

implementation

{$R *.dfm}

uses frmMain;

procedure TformImagensProblema.btnAddImagemClick(Sender: TObject);
begin
  InverteCrudImagem;

  imgProblema.Picture := nil;
end;

procedure TformImagensProblema.btnAntImagemClick(Sender: TObject);
begin
  btnProxImagem.Enabled := True;

  FPosicaoListaImagem := FPosicaoListaImagem - 1;
  imgProblema.Picture.LoadFromFile(FListaImagens[FPosicaoListaImagem]);

  if FPosicaoListaImagem = 0 then
    btnAntImagem.Enabled := False;

  lblNmroImagem.Caption := IntToStr(FPosicaoListaImagem + 1) + '/' + IntToStr(FListaImagens.Count)
end;

procedure TformImagensProblema.btnProxImagemClick(Sender: TObject);
begin
  btnAntImagem.Enabled := True;

  FPosicaoListaImagem := FPosicaoListaImagem + 1;
  imgProblema.Picture.LoadFromFile(FListaImagens[FPosicaoListaImagem]);

  if FPosicaoListaImagem = FListaImagens.Count - 1 then
    btnProxImagem.Enabled := False;

  lblNmroImagem.Caption := IntToStr(FPosicaoListaImagem + 1) + '/' + IntToStr(FListaImagens.Count)
end;

procedure TformImagensProblema.btnRemoverImagemClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir esta imagem?',
      'Excluir imagem', +MB_ICONQUESTION + MB_YESNO) = MrYes then
  begin
    var aImagem : TImagemProblema := TImagemProblema.Create;

    FControllerProblema := TControllerProblema.Create;

    try
      aImagem.Imagem := FListaImagens[FPosicaoListaImagem];
      aImagem.CodigoProblema := StrToInt(frmMain.formPrincipal.edtCodProblema.Text);

      DeleteFile(FListaImagens[FPosicaoListaImagem]);
      FControllerProblema.DeleteImagem(aImagem);
      FListaImagens.Delete(FPosicaoListaImagem);
    finally
      aImagem.Free;
      FControllerProblema.Free;
    end;

    if (FPosicaoListaImagem = FListaImagens.Count) and (FListaImagens.Count <> 0) then
      FPosicaoListaImagem := FPosicaoListaImagem - 1;

    if FListaImagens.Count <= 1 then
    begin
      btnAntImagem.Enabled := False;
      btnProxImagem.Enabled := False;
    end;

    if FPosicaoListaImagem = FListaImagens.Count - 1 then
      btnProxImagem.Enabled := False;

    if FListaImagens.Count > 0 then
    begin
      lblNmroImagem.Caption := IntToStr(FPosicaoListaImagem + 1) + '/' + IntToStr(FListaImagens.Count);
      imgProblema.Picture.LoadFromFile(FListaImagens[FPosicaoListaImagem]);
    end
    else
    begin
      lblNmroImagem.Caption := IntToStr(FPosicaoListaImagem) + '/' + IntToStr(FListaImagens.Count);
      imgProblema.Picture := nil;
    end;
  end;
end;

procedure TformImagensProblema.btnSalvarImagemMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  var aImagemPNG : TPngImage := TPngImage.Create;
  var aImagemProblema : TImagemProblema := TImagemProblema.Create;
  var aNomeImagem : String;
  var aCaminhoImagem : String;

  aCaminhoImagem := 'C:\Problemas Suporte\Imagens\';
  aNomeImagem := aCaminhoImagem + FormatDateTime('dd-mm-yyyy.hh-nn-ss', Now) + '.png';

  FControllerProblema := TControllerProblema.Create;

  try
    aImagemPNG.Assign(imgProblema.Picture.Bitmap);
    aImagemPNG.SaveToFile(aNomeImagem);
    FListaImagens.Add(aNomeImagem);

    aImagemProblema.Imagem := aNomeImagem;
    aImagemProblema.CodigoProblema := StrToInt(frmMain.formPrincipal.edtCodProblema.Text);

    FControllerProblema.InsertImagem(aImagemProblema);
  finally
    aImagemPNG.Free;
    aImagemProblema.Free;
    FControllerProblema.Free;
  end;

  InverteCrudImagem;

  if FListaImagens.Count > 1 then
    btnProxImagem.Enabled := True;

  imgProblema.Picture.LoadFromFile(FListaImagens[FPosicaoListaImagem]);
  lblNmroImagem.Caption := (IntToStr(FPosicaoListaImagem + 1)) + '/' + IntToStr(FListaImagens.Count);
end;

procedure TformImagensProblema.FormCreate(Sender: TObject);
begin
  FControllerProblema := TControllerProblema.Create;

  try
    FListaImagens := FControllerProblema.BuscaImagens(StrToInt(frmMain.formPrincipal.edtCodProblema.Text));
  finally
    FControllerProblema.Free;
  end;

  if FListaImagens.Count > 0 then
  begin
    lblNmroImagem.Caption := IntToStr(FPosicaoListaImagem + 1) + '/' + IntToStr(FListaImagens.Count);
    FPosicaoListaImagem := 0;
    imgProblema.Picture.LoadFromFile(FListaImagens[FPosicaoListaImagem]);
  end
  else
  begin
    lblNmroImagem.Caption := '0/0';
    btnProxImagem.Enabled := False;
    btnAntImagem.Enabled := False;
  end;
end;

procedure TformImagensProblema.FormDestroy(Sender: TObject);
begin
  FListaImagens.Free;
end;

procedure TformImagensProblema.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ^V then
    if imgProblema.Enabled then
      if Clipboard.HasFormat(cf_bitmap) then
        imgProblema.Picture.Assign(Clipboard);
end;

procedure TformImagensProblema.InverteCrudImagem;
begin
  btnAddImagem.Enabled := not btnAddImagem.Enabled;
  btnSalvarImagem.Enabled := not btnSalvarImagem.Enabled;
  btnCancelarImagem.Enabled := not btnCancelarImagem.Enabled;
  btnRemoverImagem.Enabled := not btnRemoverImagem.Enabled;

  imgProblema.Enabled := not imgProblema.Enabled;
end;

end.
