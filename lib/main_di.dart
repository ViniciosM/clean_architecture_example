import 'package:clean_architecture_example/presentation/pages/home/home_di.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDependencyInjection() {
  setupHomeDependencies();
}
