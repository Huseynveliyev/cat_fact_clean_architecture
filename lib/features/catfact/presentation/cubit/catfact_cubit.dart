import 'package:bloc/bloc.dart';
import 'package:cat_fact_clean/core/baseusecase/usecase.dart';
import 'package:cat_fact_clean/core/exception/exception.dart';
import 'package:cat_fact_clean/features/catfact/data/datasources/get_cat_fact_data_source.dart';
import 'package:cat_fact_clean/features/catfact/data/models/getFactResponseModel.dart';
import 'package:cat_fact_clean/injection/injection.dart';
import 'package:equatable/equatable.dart';

import '../../domain/entities/cat_fact_entity.dart';
import '../../domain/usecases/get_fact_use_case.dart';

part 'catfact_state.dart';

class CatfactCubit extends Cubit<CatfactState> {
  CatfactCubit() : super(CatfactInitial());
  final GetFactUseCase _getCatFactUseCase = locator.get();

  getCatFact() async {
    emit(CatfactInitial());
    try {
      final CatFactEntity response = await _getCatFactUseCase.call(NoParams());
      emit(CatfactSuccess(response));
    } on HttpException catch (e) {
      emit(CatfactFailure(e));
    }
  }
}
