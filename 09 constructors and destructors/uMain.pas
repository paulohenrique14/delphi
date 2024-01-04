unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
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
  uCliente, uPessoa;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  mCliente1: TCliente;

begin
  mCliente1 := TCliente.Create;

  try
    mCliente1.Nome := 'Paulo';
    mCliente1.Endereco.Logradouro := 'Ruas das carmélias';


    Memo1.Lines.Add('Cliente1 =' + mCliente1.Nome);
    Memo1.Lines.Add('Cliente1 =' + mCliente1.Endereco.Logradouro);
    Memo1.Lines.Add('Cliente1 =' + mCliente1.Endereco.Numero);

  finally
    mCliente1.Free;

  end;
end;

end.
