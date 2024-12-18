unit uChamaAPI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Forms,  uInformacaoEmpresa, Data.DB, Datasnap.DBClient, Vcl.Controls, IdSSLOpenSSL,
   Data.SqlExpr, Vcl.Dialogs, IdHTTP;

type
  TChamaAPI = class
    public
       class function RetornaValorAPIBrasil(Inscricao: String): TInformacaoEmpresa;
       class function RetornaValorAPIWS(Inscricao: String): TInformacaoEmpresa;
    private
  end;

implementation

uses Lib.BRASILAPI, Lib.RECEITAWS;

const
  C_URL_BRASILAPI = 'https://brasilapi.com.br/api/cnpj/v1/';
  C_URL_RECEITAWS = 'https://receitaws.com.br/v1/cnpj/';

{ TChamaAPI }


class function TChamaAPI.RetornaValorAPIBrasil(Inscricao: String): TInformacaoEmpresa;
var
   HTTP : TIdHTTP;
   lResponse: TStringStream;
   mURL: String;
   BRASILAPI: TBRASILAPI;
   RECEITAWS: TRECEITAWS;
begin
   result    := TInformacaoEmpresa.Create;
   BRASILAPI := TBRASILAPI.Create;
//   RECEITAWS := TRECEITAWS.Create;


   HTTP      := TIdHTTP.Create(NIL);
   lResponse := TStringStream.Create('', TEncoding.UTF8);

   try
      try
         HTTP.Request.CustomHeaders.Clear;
         HTTP.Request.CustomHeaders.Add('User-Agent: MyUserAgent');
         HTTP.Request.CustomHeaders.Add('Content-Type: application/json');
         HTTP.Request.CustomHeaders.Add('Accept: application/json');

         HTTP.IOHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
         TIdSSLIOHandlerSocketOpenSSL(HTTP.IOHandler).SSLOptions.Method := sslvTLSv1_2;

         HTTP.Get(C_URL_BRASILAPI + Inscricao, lResponse);
      except on E: Exception do
         begin

            Exit;
           // raise Exception.Create('Error Message');
         end;

      end;

      BRASILAPI.AsJson := '';
      if HTTP.ResponseCode = 200 then
         BRASILAPI.AsJson := lResponse.DataString;

      Result.Razao := BRASILAPI.RazaoSocial;

   finally
      HTTP.Free;
      lResponse.Free;
//      RetornaValorAPIWS(Inscricao);

      Result := RetornaValorAPIWS(Inscricao);
   end;
end;

class function TChamaAPI.RetornaValorAPIWS(Inscricao: String): TInformacaoEmpresa;
var
   HTTP : TIdHTTP;
   lResponse: TStringStream;
   mURL: String;
   RECEITAWS: TRECEITAWS;
begin
   result    := TInformacaoEmpresa.Create;
   RECEITAWS := TRECEITAWS.Create;

   HTTP      := TIdHTTP.Create(NIL);
   lResponse := TStringStream.Create('', TEncoding.UTF8);

   try
      try
         HTTP.Request.CustomHeaders.Clear;
         HTTP.Request.CustomHeaders.Add('User-Agent: MyUserAgent');
         HTTP.Request.CustomHeaders.Add('Content-Type: application/json');
         HTTP.Request.CustomHeaders.Add('Accept: application/json');

         HTTP.IOHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
         TIdSSLIOHandlerSocketOpenSSL(HTTP.IOHandler).SSLOptions.Method := sslvTLSv1_2;

         HTTP.Get(C_URL_RECEITAWS + Inscricao, lResponse);
      except on E: Exception do
         begin
            //RetornaValorAPIWS(Inscricao);
            raise Exception.Create('Error Message');
         end;

      end;

      RECEITAWS.AsJson := '';
      if HTTP.ResponseCode = 200 then
         RECEITAWS.AsJson := lResponse.DataString;

      Result.Razao             := RECEITAWS.Nome;
      Result.EnderecoCep       := RECEITAWS.Cep;
      Result.Situacao          := RECEITAWS.Situacao;
      Result.Email             := RECEITAWS.Email;
      Result.EnderecoMunicipio := RECEITAWS.Logradouro;
      Result.EnderecoEstado    := RECEITAWS.Uf;

   finally
      HTTP.Free;
      lResponse.Free;
   end;
end;

end.
