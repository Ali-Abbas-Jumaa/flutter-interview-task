import 'package:al_jad_test/resources/api_repository.dart';
import 'package:al_jad_test/resources/api_repository_impl.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.instance;

Future<void> initDI() async {
  di.registerLazySingleton<ApiRepository>(
    () => ApiRepositoryImpl(),
  );
}
