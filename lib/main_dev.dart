import 'config/api_config.dart';
import 'main.dart';

Future<void> main() async {
  final apiConfig = DevApiConfig();
  await runMain(apiConfig);
}
