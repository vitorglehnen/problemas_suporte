unit frmImagensProblema;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.ImageList,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Clipbrd,
  Vcl.Buttons,
  Vcl.StdCtrls,
  Vcl.ImgList,
  pngimage,
  jpeg,
  uImagemProblema,
  uControllerProblema,
  ShellApi,
  System.IniFiles;

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
    btnSelecionarImagem: TSpeedButton;
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
    procedure imgProblemaDblClick(Sender: TObject);
    procedure btnSelecionarImagemClick(Sender: TObject);
    procedure btnCancelarImagemClick(Sender: TObject);
  private
    { Private declarations }
    FPosicaoListaImagem: Integer;
    FControllerProblema: TControllerProblema;

    procedure ConfigImagem;
  public
    { Public declarations }
    FListaImagens: TStringList;
    FCaminhoImagem: String;
    FNomeImagem: String;
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
  pnlPrincipal.Caption := 'Cole aqui sua imagem ou clique em procurar';
end;

procedure TformImagensProblema.btnAntImagemClick(Sender: TObject);
begin
  btnProxImagem.Enabled := True;
  FPosicaoListaImagem := FPosicaoListaImagem - 1;
  imgProblema.Picture.LoadFromFile(FCaminhoImagem + FListaImagens[FPosicaoListaImagem]);

  if FPosicaoListaImagem = 0 then
    btnAntImagem.Enabled := False;
  lblNmroImagem.Caption := IntToStr(FPosicaoListaImagem + 1) + '/' +
    IntToStr(FListaImagens.Count)
end;

procedure TformImagensProblema.btnCancelarImagemClick(Sender: TObject);
begin
  InverteCrudImagem;

  if FListaImagens.Count > 0 then
    imgProblema.Picture.LoadFromFile(FCaminhoImagem + FListaImagens[FPosicaoListaImagem])
  else
    imgProblema.Picture := nil;
end;

procedure TformImagensProblema.btnSelecionarImagemClick(Sender: TObject);
begin
  var aSaveDialog := TSaveDialog.Create(nil);
  var aBitMap := TBitMap.Create;
  var aPng: TPngImage;
  var aJpeg: TJPEGImage;
        aSaveDialog.Filter := 'Arquivos PNG (*.png)|*.png|' +
          'Arquivos JPEG (*.jpg, *.jpeg)|*.jpg; *.jpg';

  try
    if aSaveDialog.Execute then
    begin
      if aSaveDialog.FilterIndex = 1 then
      begin
        aPng := TPngImage.Create;

        try
          aPng.LoadFromFile(aSaveDialog.FileName);
          aBitMap.Assign(aPng);
        finally
          aPng.Free;
        end;
      end
      else if aSaveDialog.FilterIndex = 2 then
      begin
        aJpeg := TJPEGImage.Create;

        try
          aJpeg.LoadFromFile(aSaveDialog.FileName);
          aBitMap.Assign(aJpeg);
        finally
          aJpeg.Free;
        end;
      end;
      imgProblema.Picture.Assign(aBitMap);
    end;
  finally
    aSaveDialog.Free;
    aBitMap.Free;
  end;
end;

procedure TformImagensProblema.ConfigImagem;
begin
  var aArqINI : TIniFile := TIniFIle.Create('C:\Problemas Suporte\Connect.ini');

  try
    FCaminhoImagem := aArqINI.ReadString('Imagens', 'CaminhoDaPasta', 'C:\Problemas Suporte\Imagens\');
  finally
    aArqINI.Free;
  end;
end;

procedure TformImagensProblema.btnProxImagemClick(Sender: TObject);
begin
  btnAntImagem.Enabled := True;
  FPosicaoListaImagem := FPosicaoListaImagem + 1;
  imgProblema.Picture.LoadFromFile(FCaminhoImagem + FListaImagens[FPosicaoListaImagem]);

  if FPosicaoListaImagem = FListaImagens.Count - 1 then
    btnProxImagem.Enabled := False;

  lblNmroImagem.Caption := IntToStr(FPosicaoListaImagem + 1) + '/' +
    IntToStr(FListaImagens.Count)
end;

procedure TformImagensProblema.btnRemoverImagemClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir esta imagem?', 'Excluir imagem',
    +MB_ICONQUESTION + MB_YESNO) = MrYes then
  begin
    var
      aImagem: TImagemProblema := TImagemProblema.Create;
    FControllerProblema := TControllerProblema.Create;
    try
      aImagem.Imagem := FListaImagens[FPosicaoListaImagem];
      aImagem.CodigoProblema :=
        StrToInt(frmMain.formPrincipal.edtCodProblema.Text);
      DeleteFile(FCaminhoImagem + FListaImagens[FPosicaoListaImagem]);
      FControllerProblema.DeleteImagem(aImagem);
      FListaImagens.Delete(FPosicaoListaImagem);
    finally
      aImagem.Free;
      FControllerProblema.Free;
    end;

    if (FPosicaoListaImagem = FListaImagens.Count) and (FListaImagens.Count <> 0)
    then
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
      lblNmroImagem.Caption := IntToStr(FPosicaoListaImagem + 1) + '/' +
        IntToStr(FListaImagens.Count);
      imgProblema.Picture.LoadFromFile(FCaminhoImagem + FListaImagens[FPosicaoListaImagem]);
    end
    else
    begin
      lblNmroImagem.Caption := IntToStr(FPosicaoListaImagem) + '/' +
        IntToStr(FListaImagens.Count);
      imgProblema.Picture := nil;
    end;
  end;
end;

procedure TformImagensProblema.btnSalvarImagemMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  var aImagemPNG: TPngImage := TPngImage.Create;
  var aImagemProblema: TImagemProblema := TImagemProblema.Create;

  FControllerProblema := TControllerProblema.Create;

  FNomeImagem := FControllerProblema.BuscaProxCodigoImagem +
    ' ' + FormatDateTime('dd-mm-yyyy', Now) + '.png';

  try
    aImagemPNG.Assign(imgProblema.Picture.Bitmap);
    aImagemPNG.SaveToFile(FCaminhoImagem + FNomeImagem);
    FListaImagens.Add(FNomeImagem);

    aImagemProblema.Imagem := FNomeImagem;

    aImagemProblema.CodigoProblema :=
      StrToInt(frmMain.formPrincipal.edtCodProblema.Text);

    FControllerProblema.InsertImagem(aImagemProblema);
  finally
    aImagemPNG.Free;
    aImagemProblema.Free;
    FControllerProblema.Free;
  end;

  InverteCrudImagem;

  if FListaImagens.Count > 1 then
    btnProxImagem.Enabled := True;

  imgProblema.Picture.LoadFromFile(FCaminhoImagem + FListaImagens[FPosicaoListaImagem]);

  lblNmroImagem.Caption := (IntToStr(FPosicaoListaImagem + 1)) + '/' +
    IntToStr(FListaImagens.Count);

  pnlPrincipal.Caption := 'Clique em adicionar';
end;

procedure TformImagensProblema.FormCreate(Sender: TObject);
begin
  FControllerProblema := TControllerProblema.Create;

  ConfigImagem;

  try
    FListaImagens := FControllerProblema.BuscaImagens
      (StrToInt(frmMain.formPrincipal.edtCodProblema.Text));
  finally
    FControllerProblema.Free;
  end;

  if FListaImagens.Count > 0 then
  begin
    lblNmroImagem.Caption := IntToStr(FPosicaoListaImagem + 1) + '/' +
      IntToStr(FListaImagens.Count);
    FPosicaoListaImagem := 0;
    imgProblema.Picture.LoadFromFile(FCaminhoImagem + FListaImagens[FPosicaoListaImagem]);
  end
  else
  begin
    lblNmroImagem.Caption := '0/0';
    btnProxImagem.Enabled := False;
    btnAntImagem.Enabled := False;
  end;

  if FListaImagens.Count = 1 then
  begin
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
    if btnSalvarImagem.Enabled then
      if Clipboard.HasFormat(cf_bitmap) then
        imgProblema.Picture.Assign(Clipboard);
end;

procedure TformImagensProblema.imgProblemaDblClick(Sender: TObject);
begin
  var
    aImagem: String := FCaminhoImagem + FListaImagens[FPosicaoListaImagem];

  ShellExecute(Handle, 'open', PWideChar(aImagem), nil, nil, SW_SHOWNORMAL);
end;

procedure TformImagensProblema.InverteCrudImagem;
begin
  btnAddImagem.Enabled := not btnAddImagem.Enabled;
  btnSalvarImagem.Enabled := not btnSalvarImagem.Enabled;
  btnCancelarImagem.Enabled := not btnCancelarImagem.Enabled;
  btnRemoverImagem.Enabled := not btnRemoverImagem.Enabled;
  btnSelecionarImagem.Enabled := not btnSelecionarImagem.Enabled;
end;
end.
