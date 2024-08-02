unit uDictionary;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Generics.Collections,
  Vcl.StdCtrls;

type
   TMembro = record
      Nome: String;
      CPF: String;
      ID: Integer;
   end;

type
   TFrmDictionary = class(TForm)
    Memo1: TMemo;
    EdtCPF: TEdit;
    EdtNome: TEdit;
    EdtCodigo: TEdit;
    Add: TButton;
    BtnTryGetValue: TButton;
    BtnRemove: TButton;
    BtnTrim: TButton;
    BtnContainsKey: TButton;
    BtnContainsValue: TButton;
    BtnAddOrSetValue: TButton;
    BtnListaKey: TButton;
    BtnOnValueNotify: TButton;
    BtnOnKeyNotify: TButton;
    BtnClear: TButton;
    BtnListaValues: TButton;
    procedure FormCreate(Sender: TObject);
    procedure AddClick(Sender: TObject);
    procedure BtnTryGetValueClick(Sender: TObject);
    procedure BtnRemoveClick(Sender: TObject);
    procedure BtnTrimClick(Sender: TObject);
    procedure BtnContainsKeyClick(Sender: TObject);
    procedure BtnContainsValueClick(Sender: TObject);
    procedure BtnAddOrSetValueClick(Sender: TObject);
    procedure BtnListaKeyClick(Sender: TObject);
    procedure BtnListaValuesClick(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
    procedure BtnOnKeyNotifyClick(Sender: TObject);
    procedure BtnOnValueNotifyClick(Sender: TObject);
   private
      Lista: TDictionary<Integer, TMembro>;
   public
      procedure NotificaKey(Sender: TObject; const Item: Integer; Action: TCollectionNotification);
      procedure NotificaValue(Sender: TObject; const Item: TMembro; Action: TCollectionNotification);
   end;

var
  FrmDictionary: TFrmDictionary;

implementation

{$R *.dfm}

procedure TFrmDictionary.AddClick(Sender: TObject);
var
   Membro: TMembro;
begin
   Membro.ID   := StrToInt(EdtCodigo.Text);
   Membro.Nome := EdtNome.Text;
   Membro.CPF  := EdtCPF.Text;

   Lista.Add(Membro.ID, Membro);

   Memo1.Lines.Add(Membro.ID.ToString + ' - ' + Membro.Nome + ' - ' + Membro.Nome)
end;

procedure TFrmDictionary.BtnAddOrSetValueClick(Sender: TObject);
var
   Membro: TMembro;
begin
   Membro.ID   := 2;
   Membro.Nome := 'José';
   Membro.CPF  := '212';

   Lista.AddOrSetValue(Membro.ID, Membro);
end;

procedure TFrmDictionary.BtnClearClick(Sender: TObject);
begin
   Lista.Clear;
end;

procedure TFrmDictionary.BtnContainsKeyClick(Sender: TObject);
begin
   if Lista.ContainsKey(StrToInt(EdtCodigo.Text)) then
      Memo1.Lines.Add('Achamos o usuário com esse código')
   else
      Memo1.Lines.Add('Não encontramos nada com esse nome');
end;

procedure TFrmDictionary.BtnContainsValueClick(Sender: TObject);
var
   Membro: TMembro;
begin
   Membro.ID   := 1;
   Membro.Nome := 'Paulo';
   Membro.CPF  := '106';

   if Lista.ContainsValue(Membro) then
      Memo1.Lines.Add('existe sim um usuário com essas informações')
   else
      Memo1.Lines.Add('Não existe');
end;

procedure TFrmDictionary.BtnListaKeyClick(Sender: TObject);
var
   Key: Integer;
begin
   for Key in Lista.Keys do
      Memo1.Lines.Add(Key.ToString)
end;

procedure TFrmDictionary.BtnListaValuesClick(Sender: TObject);
var
   Value: TMembro;
begin
   for Value in Lista.Values do
      Memo1.Lines.Add(Value.Nome)
end;

procedure TFrmDictionary.BtnOnKeyNotifyClick(Sender: TObject);
begin
   Lista.OnKeyNotify := NotificaKey;
end;

procedure TFrmDictionary.BtnOnValueNotifyClick(Sender: TObject);
begin
   Lista.OnValueNotify := NotificaValue;
end;

procedure TFrmDictionary.BtnRemoveClick(Sender: TObject);
begin
   Lista.Remove(StrToInt(EdtCodigo.Text));
end;

procedure TFrmDictionary.BtnTrimClick(Sender: TObject);
begin
   Lista.TrimExcess;
end;

procedure TFrmDictionary.BtnTryGetValueClick(Sender: TObject);
var
   Membro: TMembro;
begin
   if Lista.TryGetValue(StrToInt(EdtCodigo.Text), Membro) then
      Memo1.Lines.Add('Encontramos o ' + Membro.Nome)
   else
      Memo1.Lines.Add('Nada encontrado');
end;

procedure TFrmDictionary.FormCreate(Sender: TObject);
begin
   Lista := TDictionary<Integer, TMembro>.Create;
end;

procedure TFrmDictionary.NotificaKey(Sender: TObject; const Item: Integer;
  Action: TCollectionNotification);
begin
   case Action of
      cnAdded     : Memo1.Lines.Add('O Value ' + IntToStr(Item) + ' foi adicionado ');
      cnRemoved   : Memo1.Lines.Add('O Value ' + IntToStr(Item) + ' foi removido ');
      cnExtracted : Memo1.Lines.Add('O Value ' + IntToStr(Item) + ' foi extracted? ');
   end;
end;

procedure TFrmDictionary.NotificaValue(Sender: TObject; const Item: TMembro;
  Action: TCollectionNotification);
begin
   case action of
      cnAdded     : Memo1.Lines.Add('O Value ' + Item.Nome + ' foi adicionado ');
      cnRemoved   : Memo1.Lines.Add('O Value ' + Item.Nome + ' foi removido ');
      cnExtracted : Memo1.Lines.Add('O Value ' + Item.Nome + ' foi extracted? ');
   end;
end;

end.
