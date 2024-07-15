import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:slash_task/Domain/entity/best_selling_entity/ProductEntity.dart';
import 'package:slash_task/Domain/repository_contract/Recommended_repo.dart';
 import 'package:slash_task/data_layer/datasource_contract/recommended_datasource_contract.dart';
import '../model/RecommendedForYou.dart';

@Injectable(as: RecommendedRepo)
class RecommendedRepoImpl extends RecommendedRepo{
  RecommendedDataSourceContract productDatasource;
  @factoryMethod
  RecommendedRepoImpl(this.productDatasource);
  @override
  Future<Either<List<ProductEntity>, String>> Recommended() async {
    var response=await productDatasource.Recommended();
    return response.fold(
            (product) {
          List<RecommendedForYou> response=product;
          List<ProductEntity> products=product.map((item) => item.toRecommendedEntity()).toList();
          return left(products);
        },
            (error) {
          return right(error);
        });
  }

}