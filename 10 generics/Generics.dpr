program Generics;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form1},
  uKeyValue in 'uKeyValue.pas',
  uPegaSerVivo in 'uPegaSerVivo.pas',
  uHumano in 'uHumano.pas',
  uLista in 'uLista.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
