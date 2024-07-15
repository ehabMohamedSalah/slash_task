part of 'home_tab_view_model_cubit.dart';

@immutable
sealed class HomeTabViewModelState {}

final class HomeTabViewModelInitial extends HomeTabViewModelState {}
class HomeTabViewModelLoading extends HomeTabViewModelState{}
class HomeTabViewModelError extends HomeTabViewModelState{
  String errorMessage;
  HomeTabViewModelError(this.errorMessage);
}
class HomeTabViewModelSuccess extends HomeTabViewModelState{
  List<ProductEntity> bestselling;
  HomeTabViewModelSuccess(this.bestselling);
}

class HomeTabNewArrivalLoading extends HomeTabViewModelState{}
class HomeTabNewArrivalError extends HomeTabViewModelState{
  String errorMessage;
  HomeTabNewArrivalError(this.errorMessage);
}
class HomeTabNewArrivalSuccess extends HomeTabViewModelState{
  List<ProductEntity> newArrivalEntity;
  HomeTabNewArrivalSuccess(this.newArrivalEntity);
}

class HomeTabRecommendedLoading extends HomeTabViewModelState{}
class HomeTabRecommendedError extends HomeTabViewModelState{
  String errorMessage;
  HomeTabRecommendedError(this.errorMessage);
}
class HomeTabRecommendedSuccess extends HomeTabViewModelState{
  List<ProductEntity> recommendedEntity;
  HomeTabRecommendedSuccess(this.recommendedEntity);
}

