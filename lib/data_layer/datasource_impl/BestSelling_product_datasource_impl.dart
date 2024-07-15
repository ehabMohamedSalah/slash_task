import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:slash_task/data_layer/DataClass/productDataClass.dart';
import 'package:slash_task/data_layer/model/BestSelling.dart';
import '../datasource_contract/BestSelling_datasource_contract.dart';

@Injectable(as: BestSellingDataSourceContract)
class BestSellingDatasourceImpl extends BestSellingDataSourceContract{
  ProductDataClass productDataClass;
  @factoryMethod
  BestSellingDatasourceImpl(this.productDataClass);
  @override
  Future<Either<List<BestSelling>, String>> bestSelling()async {
    try{
      var response=await ProductDataClass.bestSellingProduct;
        return left(response);
    }  catch(error){
      return right(error.toString());
    }
  }

}