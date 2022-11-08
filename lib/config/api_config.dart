abstract class ApiConfig {
  String get baseUrl;
}

class DevApiConfig extends ApiConfig {
  @override
  String get baseUrl => 'https://rickandmortyapi.com/api/';
}

class ProdApiConfig extends ApiConfig {
  @override
  String get baseUrl => 'https://rickandmortyapi.com/api/';
}
