unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmMain = class(TForm)
    EdtNome: TEdit;
    EdtSobrenome: TEdit;
    BtnCriaPessoa: TButton;
    MemoTexto: TMemo;
    procedure BtnCriaPessoaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

uses uPessoa;

procedure TFrmMain.BtnCriaPessoaClick(Sender: TObject);
var
   Informacao : String;
begin
   Informacao := TPessoa.New.Nome(EdtNome.Text).Sobrenome(EdtSobrenome.Text).NomeCompleto;

   MemoTexto.Lines.Add(Informacao);
end;

end.
