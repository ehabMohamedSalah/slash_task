import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:slash_task/Domain/entity/best_selling_entity/ProductEntity.dart';
import 'package:slash_task/Domain/repository_contract/NewArrival_repo.dart';
import 'package:slash_task/Domain/repository_contract/Recommended_repo.dart';
import '../../data_layer/model/BestSelling.dart';
import '../repository_contract/BestSelling_repo.dart';

@injectable
class RecommendedUsecase{
  RecommendedRepo productRepo;
  @factoryMethod
  RecommendedUsecase(this.productRepo);
  Future<Either<List<ProductEntity>, String>> call(){
    return productRepo.Recommended();
  }
}