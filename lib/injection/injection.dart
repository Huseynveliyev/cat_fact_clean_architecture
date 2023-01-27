import 'package:cat_fact_clean/features/catfact/data/datasources/get_cat_fact_data_source.dart';
import 'package:cat_fact_clean/features/catfact/data/repositories/get_cat_fact_impl.dart';
import 'package:cat_fact_clean/features/catfact/domain/repositories/get_cat_fact_repo.dart';
import 'package:cat_fact_clean/features/catfact/domain/usecases/get_fact_use_case.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

Future<void> register() async {
  //data source

  locator.registerSingleton(Dio());
  locator.registerFactory<GetCatFactRepository>(() => GetCatFactImpl());
  locator.registerFactory<GetCatFactDataSources>(() => GetCatFatDataSourceImpl());
  locator.registerSingleton(GetFactUseCase());
}
