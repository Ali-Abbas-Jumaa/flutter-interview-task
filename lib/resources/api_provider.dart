import 'package:al_jad_test/constants.dart';
import 'package:al_jad_test/models/response_model.dart';
import 'package:dio/dio.dart';

class ApiProvider {
  int _count = 0;

  Future<dynamic> fetchList({pageKey, pageSize, controller}) async {
    try {
      var response = await Dio()
          .get('$url?realestate?skip=${pageKey * pageSize}&take=$pageSize');
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
      // ignore: avoid_print
      print(e);
      return {};
    }
  }
}
