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
      Email: String;
      function Idade: String;
          procedure AfterConstruction; override;
  end;

implementation

{ TPessoa }

function TPessoa.Idade: String;
begin
  Result := (now - StrToDate(DataNascimento)).ToString
end;

end.
