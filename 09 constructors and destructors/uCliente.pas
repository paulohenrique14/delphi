unit uCliente;

interface

uses
  uPessoa, uEndereco;

type
  TCliente = class(TPessoa)
    private
    FCPF: String;
    FEndereco: TEndereco;
    public
      constructor Create; overload;
      destructor Destroy; reintroduce;
      property CPF: String read FCPF write FCPF;
      property Endereco: TEndereco read FEndereco write FEndereco;
      function RetornaDados: String; override;

  end;

implementation

{ TCliente }

constructor TCliente.Create;
begin
  FEndereco := TEndereco.Create;
  FEndereco.Logradouro := 'Sem endereço cadastrado';
  FEndereco.Numero     := 'Sem número cadastrado';
end;

destructor TCliente.Destroy;
begin
  FEndereco.Free;
end;

function TCliente.RetornaDados: String;
begin
  Result := 'Você é um ' + Dados;
end;

end.
