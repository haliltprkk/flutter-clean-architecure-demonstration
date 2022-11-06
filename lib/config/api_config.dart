abstract class ApiConfig {
  String get repoBaseUrl;

  String get issueBaseUrl;
}

class DevApiConfig extends ApiConfig {
  @override
  String get repoBaseUrl => 'https://api.github.com/';

  @override
  String get issueBaseUrl => 'https://api.github.com/';
}

class ProdApiConfig extends ApiConfig {
  @override
  String get repoBaseUrl => 'https://api.github.com/';

  @override
  String get issueBaseUrl => 'https://api.github.com/';
}
