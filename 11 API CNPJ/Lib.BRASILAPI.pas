unit Lib.BRASILAPI;

interface

uses
  Pkg.Json.DTO, System.Generics.Collections, REST.Json.Types;

{$M+}

type
  TQsa = class
  private
    [JSONName('cnpj_cpf_do_socio')]
    FCnpjCpfDoSocio: string;
    [JSONName('codigo_qualificacao_representante_legal')]
    FCodigoQualificacaoRepresentanteLegal: string;
    [JSONName('codigo_qualificacao_socio')]
    FCodigoQualificacaoSocio: Integer;
    [JSONName('cpf_representante_legal')]
    FCpfRepresentanteLegal: string;
    [SuppressZero, JSONName('data_entrada_sociedade')]
    FDataEntradaSociedade: TDateTime;
    [JSONName('identificador_de_socio')]
    FIdentificadorDeSocio: Integer;
    [JSONName('nome_representante_legal')]
    FNomeRepresentanteLegal: string;
    [JSONName('nome_socio')]
    FNomeSocio: string;
    [JSONName('percentual_capital_social')]
    FPercentualCapitalSocial: Integer;
  published
    property CnpjCpfDoSocio: string read FCnpjCpfDoSocio write FCnpjCpfDoSocio;
    property CodigoQualificacaoRepresentanteLegal: string read FCodigoQualificacaoRepresentanteLegal write FCodigoQualificacaoRepresentanteLegal;
    property CodigoQualificacaoSocio: Integer read FCodigoQualificacaoSocio write FCodigoQualificacaoSocio;
    property CpfRepresentanteLegal: string read FCpfRepresentanteLegal write FCpfRepresentanteLegal;
    property DataEntradaSociedade: TDateTime read FDataEntradaSociedade write FDataEntradaSociedade;
    property IdentificadorDeSocio: Integer read FIdentificadorDeSocio write FIdentificadorDeSocio;
    property NomeRepresentanteLegal: string read FNomeRepresentanteLegal write FNomeRepresentanteLegal;
    property NomeSocio: string read FNomeSocio write FNomeSocio;
    property PercentualCapitalSocial: Integer read FPercentualCapitalSocial write FPercentualCapitalSocial;
  end;

  TCnaesSecundarios = class
  private
    FCodigo: Integer;
    FDescricao: string;
  published
    property Codigo: Integer read FCodigo write FCodigo;
    property Descricao: string read FDescricao write FDescricao;
  end;

  TBRASILAPI = class(TJsonDTO)
  private
    FBairro: string;
    [JSONName('capital_social')]
    FCapitalSocial: Integer;
    FCep: Integer;
    [JSONName('cnae_fiscal')]
    FCnaeFiscal: Integer;
    [JSONName('cnae_fiscal_descricao')]
    FCnaeFiscalDescricao: string;
    [JSONName('cnaes_secundarios'), JSONMarshalled(False)]
    FCnaesSecundariosArray: TArray<TCnaesSecundarios>;
    [GenericListReflect]
    FCnaesSecundarios: TObjectList<TCnaesSecundarios>;
    FCnpj: string;
    [JSONName('codigo_municipio')]
    FCodigoMunicipio: Integer;
    [JSONName('codigo_natureza_juridica')]
    FCodigoNaturezaJuridica: Integer;
    FComplemento: string;
    [JSONName('data_exclusao_do_simples')]
    FDataExclusaoDoSimples: string;
    [SuppressZero, JSONName('data_inicio_atividade')]
    FDataInicioAtividade: TDateTime;
    [JSONName('data_opcao_pelo_simples')]
    FDataOpcaoPeloSimples: string;
    [SuppressZero, JSONName('data_situacao_cadastral')]
    FDataSituacaoCadastral: TDateTime;
    [JSONName('data_situacao_especial')]
    FDataSituacaoEspecial: string;
    [JSONName('ddd_fax')]
    FDddFax: string;
    [JSONName('ddd_telefone_1')]
    FDddTelefone1: string;
    [JSONName('ddd_telefone_2')]
    FDddTelefone2: string;
    [JSONName('descricao_matriz_filial')]
    FDescricaoMatrizFilial: string;
    [JSONName('descricao_porte')]
    FDescricaoPorte: string;
    [JSONName('descricao_situacao_cadastral')]
    FDescricaoSituacaoCadastral: string;
    [JSONName('descricao_tipo_de_logradouro')]
    FDescricaoTipoDeLogradouro: string;
    [JSONName('identificador_matriz_filial')]
    FIdentificadorMatrizFilial: Integer;
    FLogradouro: string;
    [JSONName('motivo_situacao_cadastral')]
    FMotivoSituacaoCadastral: Integer;
    FMunicipio: string;
    [JSONName('nome_cidade_exterior')]
    FNomeCidadeExterior: string;
    [JSONName('nome_fantasia')]
    FNomeFantasia: string;
    FNumero: string;
    [JSONName('opcao_pelo_mei')]
    FOpcaoPeloMei: Boolean;
    [JSONName('opcao_pelo_simples')]
    FOpcaoPeloSimples: Boolean;
    FPorte: Integer;
    [JSONName('qsa'), JSONMarshalled(False)]
    FQsaArray: TArray<TQsa>;
    [GenericListReflect]
    FQsa: TObjectList<TQsa>;
    [JSONName('qualificacao_do_responsavel')]
    FQualificacaoDoResponsavel: Integer;
    [JSONName('razao_social')]
    FRazaoSocial: string;
    [JSONName('situacao_cadastral')]
    FSituacaoCadastral: Integer;
    [JSONName('situacao_especial')]
    FSituacaoEspecial: string;
    FUf: string;
    function GetCnaesSecundarios: TObjectList<TCnaesSecundarios>;
    function GetQsa: TObjectList<TQsa>;
  protected
    function GetAsJson: string; override;
  published
    property Bairro: string read FBairro write FBairro;
    property CapitalSocial: Integer read FCapitalSocial write FCapitalSocial;
    property Cep: Integer read FCep write FCep;
    property CnaeFiscal: Integer read FCnaeFiscal write FCnaeFiscal;
    property CnaeFiscalDescricao: string read FCnaeFiscalDescricao write FCnaeFiscalDescricao;
    property CnaesSecundarios: TObjectList<TCnaesSecundarios> read GetCnaesSecundarios;
    property Cnpj: string read FCnpj write FCnpj;
    property CodigoMunicipio: Integer read FCodigoMunicipio write FCodigoMunicipio;
    property CodigoNaturezaJuridica: Integer read FCodigoNaturezaJuridica write FCodigoNaturezaJuridica;
    property Complemento: string read FComplemento write FComplemento;
    property DataExclusaoDoSimples: string read FDataExclusaoDoSimples write FDataExclusaoDoSimples;
    property DataInicioAtividade: TDateTime read FDataInicioAtividade write FDataInicioAtividade;
    property DataOpcaoPeloSimples: string read FDataOpcaoPeloSimples write FDataOpcaoPeloSimples;
    property DataSituacaoCadastral: TDateTime read FDataSituacaoCadastral write FDataSituacaoCadastral;
    property DataSituacaoEspecial: string read FDataSituacaoEspecial write FDataSituacaoEspecial;
    property DddFax: string read FDddFax write FDddFax;
    property DddTelefone1: string read FDddTelefone1 write FDddTelefone1;
    property DddTelefone2: string read FDddTelefone2 write FDddTelefone2;
    property DescricaoMatrizFilial: string read FDescricaoMatrizFilial write FDescricaoMatrizFilial;
    property DescricaoPorte: string read FDescricaoPorte write FDescricaoPorte;
    property DescricaoSituacaoCadastral: string read FDescricaoSituacaoCadastral write FDescricaoSituacaoCadastral;
    property DescricaoTipoDeLogradouro: string read FDescricaoTipoDeLogradouro write FDescricaoTipoDeLogradouro;
    property IdentificadorMatrizFilial: Integer read FIdentificadorMatrizFilial write FIdentificadorMatrizFilial;
    property Logradouro: string read FLogradouro write FLogradouro;
    property MotivoSituacaoCadastral: Integer read FMotivoSituacaoCadastral write FMotivoSituacaoCadastral;
    property Municipio: string read FMunicipio write FMunicipio;
    property NomeCidadeExterior: string read FNomeCidadeExterior write FNomeCidadeExterior;
    property NomeFantasia: string read FNomeFantasia write FNomeFantasia;
    property Numero: string read FNumero write FNumero;
    property OpcaoPeloMei: Boolean read FOpcaoPeloMei write FOpcaoPeloMei;
    property OpcaoPeloSimples: Boolean read FOpcaoPeloSimples write FOpcaoPeloSimples;
    property Porte: Integer read FPorte write FPorte;
    property Qsa: TObjectList<TQsa> read GetQsa;
    property QualificacaoDoResponsavel: Integer read FQualificacaoDoResponsavel write FQualificacaoDoResponsavel;
    property RazaoSocial: string read FRazaoSocial write FRazaoSocial;
    property SituacaoCadastral: Integer read FSituacaoCadastral write FSituacaoCadastral;
    property SituacaoEspecial: string read FSituacaoEspecial write FSituacaoEspecial;
    property Uf: string read FUf write FUf;
  public
    destructor Destroy; override;
  end;

implementation

{ TRoot }

destructor TBRASILAPI.Destroy;
begin
  GetCnaesSecundarios.Free;
  GetQsa.Free;
  inherited;
end;

function TBRASILAPI.GetCnaesSecundarios: TObjectList<TCnaesSecundarios>;
begin
  Result := ObjectList<TCnaesSecundarios>(FCnaesSecundarios, FCnaesSecundariosArray);
end;

function TBRASILAPI.GetQsa: TObjectList<TQsa>;
begin
  Result := ObjectList<TQsa>(FQsa, FQsaArray);
end;

function TBRASILAPI.GetAsJson: string;
begin
  RefreshArray<TCnaesSecundarios>(FCnaesSecundarios, FCnaesSecundariosArray);
  RefreshArray<TQsa>(FQsa, FQsaArray);
  Result := inherited;
end;

end.
