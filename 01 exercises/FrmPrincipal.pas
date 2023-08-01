unit FrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    RadioButton1: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    textArea: TMemo;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    ClientAge: integer;
    ClientName: string;
    ValorTotal: integer;
    AnoAtual:string;
    procedure MostraMeuNome;


  public
    function CalculaValor: integer;
    function CalculaAno:integer;
    function Calculadora (Num1:integer;Num2:integer):integer;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  AnoFuturo: integer;
begin
     AnoAtual:= Edit1.Text;
     AnoFuturo:=CalculaAno;
     if AnoFuturo = 2024 then ShowMessage(CalculaAno.ToString) else ShowMessage('Digitaste o ano errado');




end;



procedure TForm1.Button2Click(Sender: TObject);
var
  Dalmatas: Integer;
begin
  textArea.Lines.Add('Aprendi. Legal');
  ValorTotal:=100;
  Dalmatas:=CalculaValor;
  textArea.Lines.Add(Dalmatas.ToString	)

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 MostraMeuNome;
 textArea.Lines.Add(Calculadora(4, 10).toString);
end;

function TForm1.CalculaAno: integer;
begin
  Result:= AnoAtual.ToInteger +1
end;

function TForm1.Calculadora(Num1, Num2: integer): integer;
begin
  Result:= Num1 + Num2;
end;

function TForm1.CalculaValor: integer;
begin
 Result:= ValorTotal +1
end;

procedure TForm1.MostraMeuNome;
begin
ShowMessage('Delphi | SQL | React.JS');
end;

end.
