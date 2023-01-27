import 'package:cat_fact_clean/features/catfact/data/datasources/get_cat_fact_data_source.dart';
import 'package:cat_fact_clean/features/catfact/domain/entities/cat_fact_entity.dart';
import 'package:cat_fact_clean/features/catfact/domain/repositories/get_cat_fact_repo.dart';
import 'package:cat_fact_clean/injection/injection.dart';

class GetCatFactImpl implements GetCatFactRepository {
  final GetCatFactDataSources _getCatFactDataSources = locator.get();
  @override
  Future<CatFactEntity> GetCatFactData() {
    return _getCatFactDataSources.getFactData();
  }
}
