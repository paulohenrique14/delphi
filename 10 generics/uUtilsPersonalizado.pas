unit uUtilsPersonalizado;

interface

type
  TUtils = class
    class function IIF<T>(Condicao: Boolean; Res1, Res2: T): T;
  end;

implementation

{ TUtils }

class function TUtils.IIF<T>(Condicao: Boolean; Res1, Res2: T): T;
begin
  if Condicao then
    Result := Res1
  else
    Result := Res2;
end;

end.
