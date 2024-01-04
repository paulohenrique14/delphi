unit uSecond;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uPessoa, uUtils;

type
  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  pessoa: TPessoa;
  utils: TUtils;
begin
  pessoa := TPessoa.Create;
  utils := TUtils.Create;
  try
    pessoa.Nome           := 'Academico da academia do código';
    pessoa.DataNascimento := '18/08/2003';
    pessoa.Idade          := utils.CalculaIdade(pessoa.DataNascimento);


    ShowMessage(pessoa.Idade.ToString);
  finally
    pessoa.Free;
    utils.Free;
  end;

end;

end.
