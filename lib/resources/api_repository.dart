import 'api_provider.dart';

class ApiRepository {
  final _provider = ApiProvider();

  Future<dynamic> fetchList({
    pageKey,
    pageSize,
    controller,
  }) {
    return _provider.fetchList(
      pageKey: pageKey,
      pageSize: pageSize,
      controller: controller,
    );
  }
}

class NetworkError extends Error {}
