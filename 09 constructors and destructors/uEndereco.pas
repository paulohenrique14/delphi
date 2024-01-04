unit uEndereco;

interface

type
  TEndereco = class
    private
    FLogradouro: String;
    FNumero: String;
    public
      property Logradouro: String read FLogradouro write FLogradouro;
      property Numero: String read FNumero write FNumero;
  end;

implementation

end.
