program Generics;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {FrmMain},
  uKeyValue in 'uKeyValue.pas',
  uPegaSerVivo in 'uPegaSerVivo.pas',
  uHumano in 'uHumano.pas',
  uLista in 'uLista.pas',
  uComboBox in 'uComboBox.pas' {FrmCadInformacao},
  uEnumToList in 'uEnumToList.pas',
  uEnumeradosGeral in 'uEnumeradosGeral.pas',
  uUtilsPersonalizado in 'uUtilsPersonalizado.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TFrmCadInformacao, FrmCadInformacao);
  Application.Run;
end.
