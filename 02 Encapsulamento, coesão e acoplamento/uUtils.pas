unit uUtils;

interface

uses
  SysUtils, DateUtils;

type
  TUtils = class
    function CalculaIdade(Value: String): Integer;
  end;

implementation

{ TUtils }

function TUtils.CalculaIdade(Value: String): Integer;
var
  DataNascimento: TDateTime;
begin
  DataNascimento := StrToDate(Value);
  Result := YearsBetween(Now, DataNascimento);
end;

end.

