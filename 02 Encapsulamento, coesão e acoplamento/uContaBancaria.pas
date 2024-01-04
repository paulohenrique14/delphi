unit uContaBancaria;

interface

type
  TContaBancaria = class
  private
    FNome: String;
    FSaldo: Double;
    function GetSaldo: Double;

  public
    property Nome: String read FNome write FNome;
    property Saldo: Double read GetSaldo;
    procedure Deposito(Value: Double);
  end;

implementation

{ TContaBancaria }

procedure TContaBancaria.Deposito(Value: Double);
begin
  FSaldo := FSaldo + Value;
end;

function TContaBancaria.GetSaldo: Double;
begin
  Result := FSaldo;
end;

end.
