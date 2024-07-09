unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    BtnPesquisa: TButton;
    EdtInscricao: TEdit;
    procedure BtnPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses uChamaAPI;

procedure TFrmPrincipal.BtnPesquisaClick(Sender: TObject);
begin
  TChamaAPI.RetornaValorAPIBrasil(EdtInscricao.Text);
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  EdtInscricao.Text := '34422909000150';
end;

end.
