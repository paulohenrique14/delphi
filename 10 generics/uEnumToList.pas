unit uEnumToList;

interface

uses
  System.Classes;

type
  TEnumUtils<T> = class
    class procedure EnumeraInfo(Value: TStrings);
  end;

implementation

{ TEnumUtils<T> }

uses uEnumeradosGeral, System.TypInfo;

class procedure TEnumUtils<T>.EnumeraInfo(Value: TStrings);
var
  I, mPosicao: Integer;
  mDescricao: String;
begin
  Value.Clear;

  I := 0;

  repeat
    mDescricao := GetEnumName(TypeInfo(T), I);
    
    mPosicao   := GetEnumValue(TypeInfo(T), mDescricao);

    if mPosicao <> -1 then
      Value.Add(mDescricao);

    Inc(I);

  until (mPosicao < 0);
end;

end.
