import 'package:cat_fact_clean/core/exception/exception.dart';
import 'package:cat_fact_clean/features/catfact/domain/entities/cat_fact_entity.dart';
import 'package:cat_fact_clean/injection/injection.dart';
import 'package:dio/dio.dart';

import '../models/getFactResponseModel.dart';

abstract class GetCatFactDataSources {
  Future<CatFactResponseModel> getFactData();
}

class GetCatFatDataSourceImpl implements GetCatFactDataSources {
  final Dio _dio = locator.get();
  @override
  Future<CatFactResponseModel> getFactData() async {
    try {
      var response = await _dio.get('https://catfact.ninja/fact');
      return CatFactResponseModel.fromJson(response.data);
    } on DioError catch (e) {
      throw (e.message);
    }
  }
}
