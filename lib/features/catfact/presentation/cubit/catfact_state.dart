part of 'catfact_cubit.dart';

abstract class CatfactState extends Equatable {
  const CatfactState();

  @override
  List<Object> get props => [];
}

class CatfactInitial extends CatfactState {}

class CatfactInProgress extends CatfactState {}

class CatfactSuccess extends CatfactState {
  final CatFactEntity response;

  const CatfactSuccess(this.response);
}

class CatfactFailure extends CatfactState {
  final HttpException exception;

  const CatfactFailure(this.exception);
}
