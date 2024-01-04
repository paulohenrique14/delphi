unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uContaBancaria;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
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

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  ContaBancaria, ContaPaulo : TContaBancaria;
begin
  ContaBancaria := TContaBancaria.Create;
  ContaPaulo    := TContaBancaria.Create;
  try
    ContaBancaria.Nome := 'Josuéles';
    ContaBancaria.Deposito(50);

    ContaPaulo.Nome := 'Paulo';
    ContaPaulo.Deposito(150);

    Memo1.Lines.Add(ContaBancaria.Saldo.ToString + ' - ' + ContaBancaria.Nome);


  finally
    ContaBancaria.Free;
  end;
end;

end.
