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
  uPilha in 'uPilha.pas' {FrmPilha},
  uDictionary in 'uDictionary.pas' {FrmDictionary},
  uInterfaceGenerica in 'uInterfaceGenerica.pas' {FrmInterfaceGenerica},
  uPonteiro in 'uPonteiro.pas' {FrmPonteiro},
  uSmartPoint in 'uSmartPoint.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TFrmCadInformacao, FrmCadInformacao);
  Application.CreateForm(TFrmLista, FrmLista);
  Application.CreateForm(TFrmQueue, FrmQueue);
  Application.CreateForm(TFrmPilha, FrmPilha);
  Application.CreateForm(TFrmDictionary, FrmDictionary);
  Application.CreateForm(TFrmInterfaceGenerica, FrmInterfaceGenerica);
  Application.CreateForm(TFrmPonteiro, FrmPonteiro);
  Application.Run;
end.
