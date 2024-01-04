unit uCliente;

interface

uses
  uPessoa, System.SysUtils;

type
  TCliente = class(TPessoa)
  private
    FValorCredito: Currency;
  public
    property ValorCredito: Currency read FValorCredito;
    function Receber(Value: Integer): String; overload;
    function Receber(Value, Value2: Currency): String; overload;
  end;


implementation

{ TCliente }

function TCliente.Receber(Value: Integer): String;
begin
  Result := Value.ToString;
end;

function TCliente.Receber(Value, Value2: Currency): String;
begin
  Result := CurrToStr(Value + Value2)
end;

end.
