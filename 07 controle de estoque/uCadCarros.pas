unit uCadCarros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Datasnap.Provider,
  Datasnap.DBClient, Data.SqlExpr, Vcl.ExtCtrls, Vcl.Menus, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask;

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
    pnlContainer: TPanel;
    pnlFooter: TPanel;
    pnlHeader: TPanel;
    CDSCadastroCAR_COD: TWideMemoField;
    CDSCadastroCAR_MOD: TWideMemoField;
    CDSCadastroCAR_MAR: TWideMemoField;
    CDSCadastroCAR_ANO: TWideMemoField;
    CDSCadastroCAR_COR: TWideMemoField;
    pnlCampoCarros: TPanel;
    pnlGridCarros: TPanel;
    DBEAnoCarro: TDBEdit;
    DBECodigoCarro: TDBEdit;
    DBECorCarro: TDBEdit;
    DBEMarcaCarro: TDBEdit;
    DBEModeloCarro: TDBEdit;
    Label1: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SQLCadastroCAR_OBS: TWideMemoField;
    SQLCadastroCAR_KMS: TWideMemoField;
    CDSCadastroCAR_OBS: TWideMemoField;
    CDSCadastroCAR_KMS: TWideMemoField;
    DBEKmCarro: TDBEdit;
    Label2: TLabel;
    Label6: TLabel;
    DBMObsCarro: TDBMemo;
    Button1: TButton;
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
