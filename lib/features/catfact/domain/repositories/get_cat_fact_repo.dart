import 'package:cat_fact_clean/features/catfact/domain/entities/cat_fact_entity.dart';

abstract class GetCatFactRepository {
  // ignore: non_constant_identifier_names
  Future<CatFactEntity> GetCatFactData();
}
