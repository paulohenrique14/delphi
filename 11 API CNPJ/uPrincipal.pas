unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList;

type
  TFrmPrincipal = class(TForm)
    EdtInscricao: TEdit;
    EdtRazao: TEdit;
    Label2: TLabel;
    EdtCEP: TEdit;
    Label00: TLabel;
    EdtSituacao: TEdit;
    Label3: TLabel;
    EdtEmail: TEdit;
    Label4: TLabel;
    EdtMunicipio: TEdit;
    Label5: TLabel;
    EdtEstado: TEdit;
    Label6: TLabel;
    Label1: TLabel;
    ImageList1: TImageList;
    BtnPesquisa: TButton;
    procedure FormShow(Sender: TObject);
    procedure BtnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses uChamaAPI, uInformacaoEmpresa;


procedure TFrmPrincipal.BtnPesquisaClick(Sender: TObject);
var
   InformacaoEmpresa: TInformacaoEmpresa;
begin
   InformacaoEmpresa := TInformacaoEmpresa.Create;

   InformacaoEmpresa := TChamaAPI.RetornaValorAPIWS(EdtInscricao.Text);

   EdtRazao.Text             := InformacaoEmpresa.Razao;
   EdtSituacao.Text          := InformacaoEmpresa.Situacao;
   EdtEmail.Text             := InformacaoEmpresa.Email;
   EdtMunicipio.Text         := InformacaoEmpresa.EnderecoMunicipio;
   EdtEstado.Text            := InformacaoEmpresa.EnderecoEstado;
   EdtCEP.Text               := InformacaoEmpresa.EnderecoCep;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  EdtInscricao.Text := '34422909000150';
end;

end.
