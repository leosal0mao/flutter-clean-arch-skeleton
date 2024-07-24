class Endpoints {
  Endpoints._();

  // base url
  static const String baseUrl = "https://api.parana.sportapp.com.br/v1/mobile";

  //API urls
  // ---EVENTOS---
  static const String eventosUrl = "/eventos";
  static const String delegacoesUrl = "/delegacoes";
  static const String notasOficiaisUrl = "/notas-oficiais";
  static const String locaisCompeticaoUrl = "/locais-competicao";
  static const String locaisApoioUrl = "/locais-apoio";
  static const String regulamentosUrl = "/regulamentos";
  static const String anexosEventoUrl = "/anexos";
  static const String artigosUrl = "/artigos";
  static const String notificacoesUrl = "/notificacoes";
  // ---CAMPEONATO---
  static const String campeonatosUrl = "/campeonatos";
  static const String gruposUrl = "/grupos";
  static const String timesUrl = "/times";
  static const String jogosUrl = "/jogos";
  static const String artilheirosUrl = "/artilheiros";
  static const String defesaUrl = "/defesa";
  static const String classificacaoGrupoUrl = "/classificacao-grupo";
  static const String classificacaoGeralColetivaUrl =
      "/classificacao-geral-coletiva";
  static const String cartoesUrl = "/cartoes";
  // ---REFEITORIO---
  static const String refeitoriosUrl = "/refeitorios";
  static const String refeitorioProgramacaoUrl = "/refeitorio-programacao";
  // ---MODALIDADES---
  static const String modalidadesUrl = "/modalidades";
  static const String categoriasUrl = "/categorias";
  static const String classificacaoGeralIndividualUrl =
      "/classificacao-geral-individual";
  static const String anexosModalidadeUrl = "/anexos";

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 30000;
}
