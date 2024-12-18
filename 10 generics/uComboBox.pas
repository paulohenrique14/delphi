unit uComboBox;

interface

uses  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmCadInformacao = class(TForm)
    BtnMes: TButton;
    CBInformacao: TComboBox;
    BtnDia: TButton;
    procedure BtnDiaClick(Sender: TObject);
    procedure BtnMesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadInformacao: TFrmCadInformacao;

implementation

{$R *.dfm}

uses uEnumeradosGeral, uEnumToList;

procedure TFrmCadInformacao.BtnDiaClick(Sender: TObject);
begin
  CBInformacao.Clear;
  TEnumUtils<TDias>.EnumeraInfo(CBInformacao.Items);
end;

procedure TFrmCadInformacao.BtnMesClick(Sender: TObject);
begin
  CBInformacao.Clear;
  TEnumUtils<TMes>.EnumeraInfo(CBInformacao.Items);
end;

end.
