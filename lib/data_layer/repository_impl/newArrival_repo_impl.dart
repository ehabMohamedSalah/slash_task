import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:slash_task/Domain/entity/best_selling_entity/ProductEntity.dart';
 import 'package:slash_task/data_layer/datasource_contract/NewArrival_datasource_contract.dart';
  import 'package:slash_task/data_layer/model/BestSelling.dart';
import 'package:slash_task/data_layer/model/NewArrival.dart';
import '../../Domain/repository_contract/NewArrival_repo.dart';
import '../datasource_contract/BestSelling_datasource_contract.dart';
import '../model/NewArrival.dart';

@Injectable(as: NewArrivalProductRepo)
class NewArrivalRepoImpl extends NewArrivalProductRepo{
  NewArrivalDataSourceContract productDatasource;
  @factoryMethod
  NewArrivalRepoImpl(this.productDatasource);
  @override
  Future<Either<List<ProductEntity>, String>> newArrival() async {
    var response=await productDatasource.newArrival();
    return response.fold(
            (product) {
          List<NewArrival> response=product;
          List<ProductEntity> products=product.map((item) => item.toNewArrivalEntity()).toList();
          return left(products);
        },
            (error) {
          return right(error);
        });
  }

}