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
    function Receber(Value: Integer): String; overload;
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
  pessoa1 := TPessoa.Create;
  cliente1 := TCliente.Create;
  try
    pessoa1.Nome           := 'Paulo';
    pessoa1.DataNascimento := '15/10/2000';
    pessoa1.Email          := 'teste@teste';

    Memo1.Lines.Add(cliente1.Receber(1));
    Memo1.Lines.Add(cliente1.Receber(10.5, 10.5))
  finally
    pessoa1.Free;
    cliente1.Free;
  end;

end;

function TForm1.Receber(Value: Integer): String;
begin

end;

end.
