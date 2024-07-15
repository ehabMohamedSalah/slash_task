import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:slash_task/Domain/entity/best_selling_entity/ProductEntity.dart';
import 'package:slash_task/Domain/repository_contract/BestSelling_repo.dart';
import 'package:slash_task/data_layer/DataClass/productDataClass.dart';
import 'package:slash_task/data_layer/model/BestSelling.dart';
import '../datasource_contract/BestSelling_datasource_contract.dart';

@Injectable(as: BestSellingProductRepo)
class BestSellingRepoImpl extends BestSellingProductRepo{
  BestSellingDataSourceContract productDatasource;
  @factoryMethod
  BestSellingRepoImpl(this.productDatasource);
  @override
  Future<Either<List<ProductEntity>, String>> bestSelling() async {
     var response=await productDatasource.bestSelling();
     return response.fold(
             (product) {
                List<BestSelling> response=product;
                List<ProductEntity> products=product.map((item) => item.toBestSellingEntity()).toList();
                return left(products);
             },
             (error) {
               return right(error);
     });
  }

}