unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type

  TProduto = class
  private
    FDescricao: String;
    procedure SetDescricao(const Value: String);
  published
    property Descricao: String read FDescricao write SetDescricao;
    constructor create;
  end;

  TFrmMain = class(TForm)
    BtnGeneric: TButton;
    BtnGenericTwo: TButton;
    BtnGenericTree: TButton;
    BtnLista: TButton;
    Memo1: TMemo;
    BtnEnum: TButton;
    EdtNome: TEdit;
    BtnVerificaNome: TButton;
    LblNome: TLabel;
    BtnTernario: TButton;
    procedure BtnGenericClick(Sender: TObject);
    procedure BtnGenericTwoClick(Sender: TObject);
    procedure BtnGenericTreeClick(Sender: TObject);
    procedure BtnListaClick(Sender: TObject);
    procedure BtnEnumClick(Sender: TObject);
    procedure BtnVerificaNomeClick(Sender: TObject);
    procedure BtnTernarioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

uses uKeyValue, uPegaSerVivo, uHumano, uLista, uComboBox, uUtilsPersonalizado;

procedure TFrmMain.BtnEnumClick(Sender: TObject);
begin
  FrmCadInformacao := TFrmCadInformacao.Create(Self);
  try
    FrmCadInformacao.ShowModal;
  finally
    FrmCadInformacao.Free;
  end;
end;

procedure TFrmMain.BtnGenericClick(Sender: TObject);
var
  Valor: TKeyValue<TForm>;
begin
  Valor := TKeyValue<TForm>.Create;

  try
    Valor.Key   := '1';
    Valor.Value := Self;

    ShowMessage(Valor.Key + ' = ' + Valor.Value.Name);
  finally
    Valor.Free;
  end;
end;

procedure TFrmMain.BtnGenericTreeClick(Sender: TObject);
var
  mTipoSerVivo: TPegaSerVivo<TSerHumano>;
  mHumano: TSerHumano;
begin
  mHumano := TSerHumano.Create(True);

  mTipoSerVivo := TPegaServivo<TSerHumano>.Create;

  try
    mTipoSerVivo.Classe := mHumano;

    mTipoSerVivo.Tipo := 'Humano';

    mHumano.Nome := 'Paulo';

    mTipoSerVivo.Classe.Nome:= 'Jos�';

    if mHumano.Armado then
      mTipoSerVivo.Perigo := 'Sim';

    ShowMessage(mTipoSerVivo.Classe.Nome);
  finally
    mTipoSerVivo.Free;
    mHumano.Free
  end;
end;

procedure TFrmMain.BtnGenericTwoClick(Sender: TObject);
var
  mValor: TKeyValue<TForm>;
begin
  mValor := TKeyValue<TForm>.Create;

  try
    mValor.Key   := 'Formul�rio';
    mValor.Value := Self;

    ShowMessage(mValor.Key + ' =|= ' + mValor.Value.Name);
  finally
    mValor.Free;
  end;
end;

procedure TFrmMain.BtnListaClick(Sender: TObject);
var
  mArray: TLista<Integer>;
  I: Integer;
begin
  mArray := TLista<Integer>.Create();

  try
    Memo1.Clear;

    for I := 1 to 10 do
    begin
      mArray.AddItem(I);
      Memo1.Lines.Add(mArray.GetItem(I -1).ToString)
    end;
    ShowMessage(mArray.GetTamanho.ToString);


  finally
    mArray.Free;

  end;

end;

procedure TFrmMain.BtnTernarioClick(Sender: TObject);
var
  P1, P2, P3: TProduto;
begin
  P1 := TProduto.create;

  try
    P1.Descricao := 'Folha de Louro';

    p3 := TUtils.IIF<TProduto>(not Assigned(P2), P2, TProduto.create);

    ShowMessage(p3.Descricao);
  finally
    p1.Free;
  end;
end;

procedure TFrmMain.BtnVerificaNomeClick(Sender: TObject);
begin
  LblNome.Caption := TUtils.IIF<String>(EdtNome.Text = 'PAULO', 'Bem vindo!', 'Voc� n�o � o Paulo');

end;

{ TProduto }

constructor TProduto.create;
begin
  FDescricao := 'Manga';
end;

procedure TProduto.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

end.
