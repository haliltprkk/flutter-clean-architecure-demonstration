abstract class ApiConfig {
  String get repoBaseUrl;

  String get issueBaseUrl;
}

class DevApiConfig extends ApiConfig {
  @override
  String get repoBaseUrl => 'https://rickandmortyapi.com/api/';

  @override
  String get issueBaseUrl => 'https://rickandmortyapi.com/api/';
}

class ProdApiConfig extends ApiConfig {
  @override
  String get repoBaseUrl => 'https://rickandmortyapi.com/api/';

  @override
  String get issueBaseUrl => 'https://rickandmortyapi.com/api/';
}
