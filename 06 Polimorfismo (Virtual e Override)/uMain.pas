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
  Memo1.Clear;
  pessoa1  := TPessoa.Create;
  cliente1 := TCliente.Create;
  try
    pessoa1.Nome           := 'Francisconvexo';
    pessoa1.DataNascimento := '18/08/2003';

    cliente1.Nome           := 'Cliente tapado';
    cliente1.DataNascimento := '12/11/1221';
    cliente1.CPF            := '123456';

    Memo1.Lines.Add( '--PESSOA--');
    Memo1.Lines.Add(pessoa1.RetornaDados);
    Memo1.Lines.Add( '--==================--');
    Memo1.Lines.Add( '--CLIENTE--');
    Memo1.Lines.Add(cliente1.RetornaDados);
  finally
    pessoa1.Free;

  end;
end;

end.
