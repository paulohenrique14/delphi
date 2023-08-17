program Estoque;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  uCadVendedores in 'uCadVendedores.pas' {FrmCadProduto},
  uCadVendas in 'uCadVendas.pas' {FrmCadMovimentacao},
  uCadCarros in 'uCadCarros.pas' {FrmConMovimentacao},
  uDm in 'uDm.pas' {FrmDm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmDm, FrmDm);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmCadProduto, FrmCadProduto);
  Application.CreateForm(TFrmCadMovimentacao, FrmCadMovimentacao);
  Application.CreateForm(TFrmConMovimentacao, FrmConMovimentacao);
  Application.Run;
end.
