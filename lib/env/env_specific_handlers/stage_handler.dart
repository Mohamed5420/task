import 'package:task/env/app_env_type.dart';
import 'package:task/env/config_handler.dart';
Future<void> main() async {
  await handleConfig(AppEnvType.stage);
}
