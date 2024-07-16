part of 'best_selling_view_model_cubit.dart';

@immutable
sealed class BestSellingViewModelState {}

final class BestSellingViewModelInitial extends BestSellingViewModelState {}

class bestSellingLoading extends BestSellingViewModelState{}
class bestSellingError extends BestSellingViewModelState{
  String errorMessage;
  bestSellingError(this.errorMessage);
}
class bestSellingSuccess extends BestSellingViewModelState{
  List<ProductEntity> bestselling;
  bestSellingSuccess(this.bestselling);
}
