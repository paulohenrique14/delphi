unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type

  TForm1 = class(TForm)
    BtnGeneric: TButton;
    BtnGenericTwo: TButton;
    BtnGenericTree: TButton;
    BtnLista: TButton;
    Memo1: TMemo;
    procedure BtnGenericClick(Sender: TObject);
    procedure BtnGenericTwoClick(Sender: TObject);
    procedure BtnGenericTreeClick(Sender: TObject);
    procedure BtnListaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uKeyValue, uPegaSerVivo, uHumano, uLista;

procedure TForm1.BtnGenericClick(Sender: TObject);
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

procedure TForm1.BtnGenericTreeClick(Sender: TObject);
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

procedure TForm1.BtnGenericTwoClick(Sender: TObject);
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

procedure TForm1.BtnListaClick(Sender: TObject);
var
  mArray: TLista<Integer>;
  I: Integer;
  m1 :
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

end.