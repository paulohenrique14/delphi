program Project2;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form1},
  uContaBancaria in 'uContaBancaria.pas',
  uSecond in 'uSecond.pas' {Form2},
  Unit1 in 'Unit1.pas',
  uUtils in 'uUtils.pas',
  uPessoa in 'uPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
//  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
