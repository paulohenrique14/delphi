program Heranca;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form1},
  uPessoa in 'uPessoa.pas',
  uCliente in 'uCliente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
