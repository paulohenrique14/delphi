program ProjetoInterface;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {FrmMain},
  uPrimeiraInterface in 'uPrimeiraInterface.pas',
  uPessoa in 'uPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
