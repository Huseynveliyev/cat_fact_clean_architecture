import 'package:cat_fact_clean/core/baseusecase/usecase.dart';
import 'package:cat_fact_clean/features/catfact/domain/entities/cat_fact_entity.dart';
import 'package:cat_fact_clean/features/catfact/domain/repositories/get_cat_fact_repo.dart';
import 'package:cat_fact_clean/injection/injection.dart';
import 'package:get_it/get_it.dart';

class GetFactUseCase extends UseCase<NoParams, CatFactEntity> {
  final GetCatFactRepository _getCatFactRepository = locator.get();
  @override
  Future<CatFactEntity> call(NoParams params) {
    return _getCatFactRepository.GetCatFactData();
  }
}
