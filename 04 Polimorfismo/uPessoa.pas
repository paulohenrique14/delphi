unit uPessoa;

interface

uses
  System.SysUtils;

type
  TPessoa = class
    private
      FNome: String;
      FDataNascimento: String;
      FEmail: String;
    public
    function Idade: String;
    property Nome: String read FNome write FNome;
    property DataNascimento: String read FDataNascimento write FDataNascimento;
    property Email: String read FEmail write FEmail;
  end;

implementation

{ TPessoa }

function TPessoa.Idade: String;
begin
  Result := (now - StrToDate(DataNascimento)).ToString
end;

end.
