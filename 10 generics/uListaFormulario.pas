unit uListaFormulario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Generics.Collections;

type
  TFrmLista = class(TForm)
    EdtValor: TEdit;
    Memo1: TMemo;
    BtnAdicionar: TButton;
    BtnListar: TButton;
    BtnRemover: TButton;
    BtnCapacidade: TButton;
    BtnContar: TButton;
    BtnNotifica: TButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnAdicionarClick(Sender: TObject);
    procedure BtnListarClick(Sender: TObject);
    procedure BtnRemoverClick(Sender: TObject);
    procedure BtnCapacidadeClick(Sender: TObject);
    procedure BtnContarClick(Sender: TObject);
    procedure BtnNotificaClick(Sender: TObject);
  private
    ListaNum : TList<Integer>;
    procedure AtualizaLista;
    procedure Notificacao (Sender: TObject; const Item: Integer; Action: TCollectionNotification);

  public
    { Public declarations }
  end;

var
  FrmLista: TFrmLista;

implementation

{$R *.dfm}

procedure TFrmLista.AtualizaLista;
var
  I: Integer;
begin
  Memo1.Clear;

  ListaNum.OnNotify := Notificacao;

  for I := 0 to Pred(ListaNum.Count) do
    Memo1.Lines.Add(ListaNum[I].ToString)
end;

procedure TFrmLista.BtnAdicionarClick(Sender: TObject);
begin
  ListaNum.Add(StrToInt(EdtValor.Text));
  AtualizaLista;
end;

procedure TFrmLista.BtnCapacidadeClick(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add(ListaNum.Capacity.ToString);
end;

procedure TFrmLista.BtnContarClick(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add(ListaNum.Count.ToString)
end;

procedure TFrmLista.BtnListarClick(Sender: TObject);
begin
  AtualizaLista;
end;

procedure TFrmLista.BtnNotificaClick(Sender: TObject);
begin
  ListaNum.OnNotify := Notificacao;
end;

procedure TFrmLista.BtnRemoverClick(Sender: TObject);
begin
  ListaNum.Delete(Pred(ListaNum.Count));
  AtualizaLista;
end;

procedure TFrmLista.FormCreate(Sender: TObject);
begin
  ListaNum := TList<Integer>.Create;
end;

procedure TFrmLista.Notificacao(Sender: TObject; const Item: Integer;
  Action: TCollectionNotification);
begin
  case Action of
    cnAdded     : Memo1.Lines.Add('O '+ Item.ToString +' foi adicionado');
    cnRemoved   : Memo1.Lines.Add('O '+ Item.ToString +' foi removido');
    cnExtracted : Memo1.Lines.Add('O '+ Item.ToString +' foi extraído');
  end;
end;

end.
