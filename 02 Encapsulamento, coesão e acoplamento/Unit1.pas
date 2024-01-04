unit Unit1;

interface

uses
  System.SysUtils;

type
  TFuncoesData = class
    function CalculaIdade(Value: String): Integer;
  end;

implementation

{ TFuncoesData }

function TFuncoesData.CalculaIdade(Value: String): Integer;
begin
  Result := Trunc(Now - StrToDate(Value));
end;

end.
