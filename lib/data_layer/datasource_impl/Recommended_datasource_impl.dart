import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:slash_task/data_layer/DataClass/productDataClass.dart';
import 'package:slash_task/data_layer/datasource_contract/recommended_datasource_contract.dart';
 import 'package:slash_task/data_layer/model/RecommendedForYou.dart';
 
@Injectable(as: RecommendedDataSourceContract)
class RecommendedDatasourceImpl extends RecommendedDataSourceContract{
  ProductDataClass productDataClass;
  @factoryMethod
  RecommendedDatasourceImpl(this.productDataClass);
  @override
  Future<Either<List<RecommendedForYou>, String>> Recommended()async {
    try{
      var response=await ProductDataClass.recommendedForYou;
      return left(response);
    }  catch(error){
      return right(error.toString());
    }
  }



}