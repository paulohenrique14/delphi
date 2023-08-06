program Estoque;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  uCadProduto in 'uCadProduto.pas' {FrmCadProduto},
  uCadMovimentacao in 'uCadMovimentacao.pas' {FrmCadMovimentacao},
  uConMovimentacao in 'uConMovimentacao.pas' {FrmConMovimentacao},
  uDm in 'uDm.pas' {FrmDm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmCadProduto, FrmCadProduto);
  Application.CreateForm(TFrmCadMovimentacao, FrmCadMovimentacao);
  Application.CreateForm(TFrmConMovimentacao, FrmConMovimentacao);
  Application.CreateForm(TFrmDm, FrmDm);
  Application.Run;
end.
