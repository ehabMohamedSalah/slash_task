import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:slash_task/Domain/entity/best_selling_entity/ProductEntity.dart';
import '../../data_layer/model/BestSelling.dart';
import '../repository_contract/BestSelling_repo.dart';

@injectable
class BestSellingUsecase{
  BestSellingProductRepo productRepo;
  @factoryMethod
  BestSellingUsecase(this.productRepo);
  Future<Either<List<ProductEntity>, String>> call(){
    return productRepo.bestSelling();
  }
}