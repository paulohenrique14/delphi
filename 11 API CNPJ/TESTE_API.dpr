program TESTE_API;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  Lib.BRASILAPI in 'Lib.BRASILAPI.pas',
  Lib.RECEITAWS in 'Lib.RECEITAWS.pas',
  Pkg.Json.DTO in 'Pkg.Json.DTO.pas',
  uChamaAPI in 'uChamaAPI.pas',
  uInformacaoEmpresa in 'uInformacaoEmpresa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
