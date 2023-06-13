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
  ShellApi,
  System.IniFiles,

  uImagemProblema,
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
    btnSelecionarImagem: TSpeedButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure btnAntImagemClick(Sender: TObject);
    procedure InverteCrudImagem;
    procedure btnProxImagemClick(Sender: TObject);
    procedure btnAddImagemClick(Sender: TObject);
    procedure btnRemoverImagemClick(Sender: TObject);
    procedure imgProblemaDblClick(Sender: TObject);
    procedure btnSelecionarImagemClick(Sender: TObject);
    procedure btnCancelarImagemClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarImagemClick(Sender: TObject);
  private
    { Private declarations }
    FCodProblema: Integer;
    FPosicaoListaImagem: Integer;
    FListaImagens: TStringList;
    FCaminhoImagem: String;
    FNomeImagem: String;

    FControllerProblema: TControllerProblema;

    procedure ConfigParamsImagem;
    procedure InserirImagem;
  public
    { Public declarations }

    procedure AtualizaPosicaoImagens;

    constructor Create(AOwner: TComponent; aCodProblema: String);
  end;

var
  formImagensProblema: TformImagensProblema;

implementation

{$R *.dfm}

uses frmMain;

constructor TformImagensProblema.Create(AOwner: TComponent;
  aCodProblema: String);
begin
  inherited Create(AOwner);

  FCodProblema := StrToInt(aCodProblema);
  FPosicaoListaImagem := 0;
  FControllerProblema := TControllerProblema.Create;

  ConfigParamsImagem;

  try
    FListaImagens := FControllerProblema.BuscaImagens(FCodProblema);
  finally
    FControllerProblema.Free;
  end;
end;

procedure TformImagensProblema.AtualizaPosicaoImagens;
begin
  if FListaImagens.Count > 0 then
    lblNmroImagem.Caption := IntToStr(FPosicaoListaImagem + 1) + '/' + IntToStr(FListaImagens.Count)
  else
    lblNmroImagem.Caption := '0' + '/' + '0';

  if FPosicaoListaImagem = 0 then
    btnAntImagem.Enabled := False
  else
    btnAntImagem.Enabled := True;

  if ((FPosicaoListaImagem + 1) = FListaImagens.Count) or (FListaImagens.Count = 0) then
    btnProxImagem.Enabled := False
  else
    btnProxImagem.Enabled := True;

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

procedure TformImagensProblema.ConfigParamsImagem;
begin
  var aArqINI : TIniFile := TIniFIle.Create('C:\Problemas Suporte\Connect.ini');

  try
    FCaminhoImagem := aArqINI.ReadString('Imagens', 'CaminhoDaPasta', 'C:\Problemas Suporte\Imagens\');
  finally
    aArqINI.Free;
  end;
end;

procedure TformImagensProblema.FormShow(Sender: TObject);
begin
  AtualizaPosicaoImagens;
end;

procedure TformImagensProblema.btnProxImagemClick(Sender: TObject);
begin
  btnAntImagem.Enabled := True;
  FPosicaoListaImagem := FPosicaoListaImagem + 1;
  AtualizaPosicaoImagens;
end;

procedure TformImagensProblema.btnRemoverImagemClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir esta imagem?', 'Excluir imagem',
    +MB_ICONQUESTION + MB_YESNO) = MrYes then
  begin
    var aImagem: TImagemProblema := TImagemProblema.Create;

    FControllerProblema := TControllerProblema.Create;
    try
      aImagem.Imagem := FListaImagens[FPosicaoListaImagem];
      aImagem.CodigoProblema := FCodProblema;

      DeleteFile(FCaminhoImagem + FListaImagens[FPosicaoListaImagem]);
      FControllerProblema.DeleteImagem(aImagem);
      FListaImagens.Delete(FPosicaoListaImagem);

      dec(FPosicaoListaImagem);
    finally
      aImagem.Free;
      FControllerProblema.Free;
    end;
  end;

  AtualizaPosicaoImagens;
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
  var aImagem: String := FCaminhoImagem + FListaImagens[FPosicaoListaImagem];

  ShellExecute(Handle, 'open', PWideChar(aImagem), nil, nil, SW_SHOWNORMAL);
end;

procedure TformImagensProblema.InserirImagem;
begin
  var aImagemPNG: TPngImage := TPngImage.Create;
  var aImagemProblema: TImagemProblema := TImagemProblema.Create;

  FControllerProblema := TControllerProblema.Create;

  FNomeImagem := FControllerProblema.BuscaProximoCodigoImagem +
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
  FPosicaoListaImagem := FListaImagens.Count - 1;
  AtualizaPosicaoImagens;
  pnlPrincipal.Caption := 'Clique em adicionar';
end;

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
  AtualizaPosicaoImagens;
end;

procedure TformImagensProblema.btnCancelarImagemClick(Sender: TObject);
begin
  InverteCrudImagem;
  AtualizaPosicaoImagens;
end;

procedure TformImagensProblema.btnSalvarImagemClick(Sender: TObject);
begin
  InserirImagem;
end;

procedure TformImagensProblema.FormDestroy(Sender: TObject);
begin
  FListaImagens.Free;
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
