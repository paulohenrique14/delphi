unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Somar: TButton;
    Dividir: TButton;
    Multiplicar: TButton;
    Numero1: TEdit;
    Numero2: TEdit;
    Resposta: TEdit;
    Label1: TLabel;
    Diminuir: TButton;
    procedure SomarClick(Sender: TObject);
    procedure MultiplicarClick(Sender: TObject);
    procedure DividirClick(Sender: TObject);
    procedure DiminuirClick(Sender: TObject);


  private
    { Private declarations }
  public
  function Sum(Number1:double; Number2:double):string;
  function Subtraction(Number3:double; Number4:double):string;
  function Multiply(Number5:double; Number6:double):string;
  function Divisor(Number7:double; Number8:double):string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }




procedure TForm1.DiminuirClick(Sender: TObject);
begin
Resposta.Clear;
Resposta.Text:= Subtraction(StrToFloat(Numero1.Text), StrToFloat(Numero2.Text));
end;

procedure TForm1.DividirClick(Sender: TObject);
begin
Resposta.Clear;
Resposta.Text := Divisor(StrToFloat(Numero1.Text), StrToFloat(Numero2.Text));
end;


function TForm1.Divisor(Number7, Number8: double): string;
var
  Res4:double;
begin
Res4:=Number7 / Number8;
Result:= Res4.ToString;

end;

procedure TForm1.MultiplicarClick(Sender: TObject);
begin
Resposta.Clear;
Resposta.Text:= Multiply(StrToFloat(Numero1.Text), StrToFloat(Numero2.Text));

end;

function TForm1.Multiply(Number5, Number6: double): string;
var
Res3:double;
begin
 Res3:= Number5 * Number6;
 Result:= Res3.toString;
end;

procedure TForm1.SomarClick(Sender: TObject);
begin
Resposta.Text:= Sum(StrToFloat(Numero1.Text), StrToFloat(Numero2.Text));

end;

function TForm1.Subtraction(Number3, Number4: double): string;
var
Res2:double;
begin
Res2:=Number3 - Number4;
Result:=Res2.ToString;
end;

function TForm1.Sum(Number1, Number2: double): string;
var
Res1:double;
begin
 Res1:= Number1 + Number2;
 Result:=Res1.ToString;

end;

end.
