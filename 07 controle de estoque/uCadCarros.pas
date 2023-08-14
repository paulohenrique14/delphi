unit uCadCarros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Datasnap.Provider,
  Datasnap.DBClient, Data.SqlExpr, Vcl.ExtCtrls;

type
  TFrmConMovimentacao = class(TForm)
    SQLCadastro: TSQLDataSet;
    CDSCadastro: TClientDataSet;
    DSPCadastro: TDataSetProvider;
    DSCadastro: TDataSource;
    SQLCadastroCAR_COD: TWideMemoField;
    SQLCadastroCAR_MOD: TWideMemoField;
    SQLCadastroCAR_MAR: TWideMemoField;
    SQLCadastroCAR_ANO: TWideMemoField;
    SQLCadastroCAR_COR: TWideMemoField;
    SQLCadastroCAR_NVO: TWideMemoField;
    pnlHeader: TPanel;
    pnlContainer: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConMovimentacao: TFrmConMovimentacao;

implementation

{$R *.dfm}

uses uDm;

end.
