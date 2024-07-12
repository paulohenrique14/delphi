unit uPilha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Generics.Collections, Vcl.StdCtrls;

type
  TFrmPilha = class(TForm)
    Memo1: TMemo;
    BtnPush: TButton;
    EdtValor: TEdit;
    BtnPop: TButton;
    BtnExtract: TButton;
    BtnPeek: TButton;
    BtnCapacity: TButton;
    BtnCount: TButton;
    BtnExcess: TButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnPushClick(Sender: TObject);
    procedure BtnPopClick(Sender: TObject);
    procedure BtnPeekClick(Sender: TObject);
    procedure BtnCountClick(Sender: TObject);
    procedure BtnExcessClick(Sender: TObject);
    procedure BtnCapacityClick(Sender: TObject);
    procedure BtnExtractClick(Sender: TObject);
  private
   Pilha : TStack<String>;
  public
    { Public declarations }
  end;

var
  FrmPilha: TFrmPilha;

implementation

{$R *.dfm}

procedure TFrmPilha.BtnCapacityClick(Sender: TObject);
begin
   Memo1.Lines.Add(Pilha.Capacity.ToString)
end;

procedure TFrmPilha.BtnCountClick(Sender: TObject);
begin
   Memo1.Lines.Add(Pilha.Count.ToString)
end;

procedure TFrmPilha.BtnExcessClick(Sender: TObject);
begin
   Pilha.TrimExcess;
end;

procedure TFrmPilha.BtnExtractClick(Sender: TObject);
var
  mTeste: string;
begin
   mTeste := Pilha.Extract;

   Memo1.Lines.Add('mTeste := ' + mTeste)
end;

procedure TFrmPilha.BtnPeekClick(Sender: TObject);
begin
   Memo1.Lines.Add(Pilha.Peek)
end;

procedure TFrmPilha.BtnPopClick(Sender: TObject);
begin
   Memo1.Lines.Add(Pilha.Pop);
end;

procedure TFrmPilha.BtnPushClick(Sender: TObject);
begin
   Pilha.Push(EdtValor.Text)
end;

procedure TFrmPilha.FormCreate(Sender: TObject);
begin
   Pilha := TStack<String>.Create;
end;

end.
