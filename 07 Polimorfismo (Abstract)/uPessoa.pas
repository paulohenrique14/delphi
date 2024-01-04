unit uPessoa;

interface

uses
  System.SysUtils;

type
  TPessoa = class
    private
    public
      Nome: String;
      DataNascimento: String;
      function Idade: Integer;
      function Contrato: String; virtual;abstract;
  end;

implementation

{ TPessoa }

function TPessoa.Idade: Integer;
begin
  Result := Trunc((now - StrToDate(DataNascimento)))
end;

end.
