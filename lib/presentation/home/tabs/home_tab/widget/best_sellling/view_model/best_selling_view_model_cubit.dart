import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../../../../Domain/entity/best_selling_entity/ProductEntity.dart';
import '../../../../../../../Domain/usecase/best_selling_usecase.dart';

part 'best_selling_view_model_state.dart';
@injectable
class BestSellingViewModel extends Cubit<BestSellingViewModelState> {
  BestSellingUsecase BestSellingtUseCase;
@factoryMethod
  BestSellingViewModel(this.BestSellingtUseCase) : super(BestSellingViewModelInitial());
  bestSelling()async{
    emit(bestSellingLoading());
    var response=await BestSellingtUseCase.call();
    response.fold(
            (bestSellingProduct) => emit(bestSellingSuccess(bestSellingProduct)),
            (error) => emit(bestSellingError(error)));
  }
}
