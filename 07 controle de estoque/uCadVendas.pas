unit uCadVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TFrmCadMovimentacao = class(TForm)
    pnlContainer: TPanel;
    pnlHeader: TPanel;
    Panel1: TPanel;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadMovimentacao: TFrmCadMovimentacao;

implementation

{$R *.dfm}

end.
