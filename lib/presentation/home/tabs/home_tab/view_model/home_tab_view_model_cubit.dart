import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:slash_task/Domain/entity/best_selling_entity/ProductEntity.dart';
import 'package:slash_task/Domain/usecase/Recommended_usecase.dart';
 import 'package:slash_task/Domain/usecase/new_arrival_usecase.dart';

import '../../../../../Domain/usecase/best_selling_usecase.dart';
import '../../../../../data_layer/model/BestSelling.dart';

part 'home_tab_view_model_state.dart';
@injectable
class HomeTabViewModel extends Cubit<HomeTabViewModelState> {
  static HomeTabViewModel get(context){
    return BlocProvider.of(context);
  }
  BestSellingUsecase BestSellingtUseCase;
  NewArrivalUsecase newArrivalUsecase;
  RecommendedUsecase recommendedUsecase;
  @factoryMethod
  HomeTabViewModel(this.BestSellingtUseCase,this.newArrivalUsecase,this.recommendedUsecase) : super(HomeTabViewModelInitial());

  bestSelling()async{
    emit(HomeTabViewModelLoading());
    var response=await BestSellingtUseCase.call();
    response.fold(
            (bestSellingProduct) => emit(HomeTabViewModelSuccess(bestSellingProduct)),
            (error) => emit(HomeTabViewModelError(error)));
  }
  newArrival()async{
    emit(HomeTabNewArrivalLoading());
    var response=await newArrivalUsecase.call();
    response.fold(
            (newArrivalProduct) => emit(HomeTabNewArrivalSuccess(newArrivalProduct)),
            (error) => emit(HomeTabViewModelError(error)));
  }

  recommendedProduct()async{
    emit(HomeTabRecommendedLoading());
    var response=await recommendedUsecase.call();
    response.fold(
            (recommendedProduct) => emit(HomeTabRecommendedSuccess(recommendedProduct)),
            (error) => emit(HomeTabRecommendedError(error)));
  }
}
