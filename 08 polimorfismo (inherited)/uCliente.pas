unit uCliente;

interface

uses
  uPessoa;

type
  TCliente = class(TPessoa)
    private
    FCPF: String;
    public
      property CPF: String read FCPF write FCPF;
      function RetornaDados: String; override;

  end;

implementation

{ TCliente }

function TCliente.RetornaDados: String;
begin
  Result := 'Você é um ' + Dados;
end;

end.
