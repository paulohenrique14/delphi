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
    BtnCriaPessoaJuridica: TButton;
    procedure BtnCriaPessoaClick(Sender: TObject);
    procedure BtnCriaPessoaJuridicaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

uses {uPessoa, uPessoaFisica, uPessoaJuridica,} uFactoryPessoa;

procedure TFrmMain.BtnCriaPessoaClick(Sender: TObject);
var
   Informacao : String;
begin
//   Informacao := TPessoaFisica.New.Nome(EdtNome.Text).Sobrenome(EdtSobrenome.Text).NomeCompleto;
  Informacao := TFactoryPessoa.New.PessoaFisica.Nome(EdtNome.Text).Sobrenome(EdtSobrenome.Text).NomeCompleto;

   MemoTexto.Lines.Add(Informacao);
end;

procedure TFrmMain.BtnCriaPessoaJuridicaClick(Sender: TObject);
var
  Informacao : String;
begin
//  Informacao := TPessoaJuridica.New.Nome(EdtNome.Text).Sobrenome(EdtSobrenome.Text).NomeCompleto;
  Informacao := TFactoryPessoa.New.PessoaJuridica.Nome(EdtNome.Text).Sobrenome(EdtSobrenome.Text).NomeCompleto;

   MemoTexto.Lines.Add(Informacao);
end;

end.
