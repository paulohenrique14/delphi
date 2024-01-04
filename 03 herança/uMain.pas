unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uPessoa, uCliente;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  pessoa1: TPessoa;
  cliente1: TCliente;
begin
  Memo1.Lines.Clear;
  pessoa1 := TPessoa.Create;
  cliente1 := TCliente.Create;
  try
    pessoa1.Nome := 'Alessandro';
    pessoa1.DataNascimento := '18/08/2003';
    pessoa1.Email          := 'teste@teste';

    cliente1.Nome := 'Alessandro';
    cliente1.DataNascimento := '18/08/2003';
    cliente1.ValorCredito := 3.50;
    cliente1.Email := 'EmailCliente@gmail.com';


    Memo1.Lines.Add('Nome: ' + cliente1.Nome);
    Memo1.Lines.Add('Data de nascimento: '+ cliente1.Idade);
  finally
    pessoa1.Free;
    cliente1.Free;
  end;

end;

end.
