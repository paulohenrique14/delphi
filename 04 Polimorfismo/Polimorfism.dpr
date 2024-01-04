program Polimorfism;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form1},
  uCliente in 'uCliente.pas',
  uPessoa in 'uPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
