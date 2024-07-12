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
  uUtilsPersonalizado in 'uUtilsPersonalizado.pas',
  uConstructorConstraint in 'uConstructorConstraint.pas',
  uListaFormulario in 'uListaFormulario.pas' {FrmLista},
  uQueue in 'uQueue.pas' {FrmQueue},
  uPilha in 'uPilha.pas' {FrmPilha};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TFrmCadInformacao, FrmCadInformacao);
  Application.CreateForm(TFrmLista, FrmLista);
  Application.CreateForm(TFrmQueue, FrmQueue);
  Application.CreateForm(TFrmPilha, FrmPilha);
  Application.Run;
end.
