// import 'api_repository_impl.dart';

abstract class ApiRepository {
  // final apiRepositoryImpl = ApiRepositoryImpl();

  Future<dynamic> fetchList({
    required int pageKey,
    required int pageSize,
    controller,
  });
  // {
  //   return apiRepositoryImpl.fetchList(
  //     pageKey: pageKey,
  //     pageSize: pageSize,
  //     controller: controller,
  //   );
  // }
}

class NetworkError extends Error {}
