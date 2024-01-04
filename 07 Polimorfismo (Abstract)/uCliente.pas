unit uCliente;

interface

uses
  uPessoa;

type
  TCliente = class(TPessoa)
  private
  public
    ValorCredito: Currency;
    function Contrato: String; override;
  end;


implementation

{ TCliente }

function TCliente.Contrato: String;
begin
  Result := 'TESTE';
end;

end.
