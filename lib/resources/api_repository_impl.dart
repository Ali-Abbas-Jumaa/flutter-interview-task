import 'package:al_jad_test/constants.dart';
import 'package:al_jad_test/models/response_model.dart';
import 'package:al_jad_test/resources/api_repository.dart';
import 'package:dio/dio.dart';

class ApiRepositoryImpl implements ApiRepository {
  int _count = 0;

  @override
  Future<dynamic> fetchList(
      {required int pageKey, required int pageSize, controller}) async {
    try {
      var response = await Dio()
          .get('$url/realestate?skip=${pageKey * pageSize}&take=$pageSize');
      _count = response.data['count'];
      var data = ResponseModel.fromJson(response.data);
      var newEstates = data.results;

      final isLastPage = pageKey * pageSize >= _count;

      if (isLastPage) {
        controller.appendLastPage(newEstates);
      } else {
        final nextPageKey = pageKey + 1;
        controller.appendPage(newEstates, nextPageKey);
      }
      return data;
    } catch (e) {
      return {};
    }
  }
}
