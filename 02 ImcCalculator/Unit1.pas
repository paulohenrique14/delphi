unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Peso: TEdit;
    Altura: TEdit;
    Button1: TButton;
    Resposta: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    function Calculate(Number1:double; Number2:double):string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Resposta.Text:= Calculate(StrToFloat(Peso.Text), StrToFloat(Altura.Text));
end;

function TForm1.Calculate(Number1, Number2: double): string;
var
Res:double;
begin
Res:=Number1 / (Number2 * Number2);
Result:= Res.ToString;
end;

end.
