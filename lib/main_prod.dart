import 'config/api_config.dart';
import 'main.dart';

Future<void> main() async {
  final apiConfig = ProdApiConfig();
  await runMain(apiConfig);
}
