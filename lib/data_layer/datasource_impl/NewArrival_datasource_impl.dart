import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:slash_task/data_layer/DataClass/productDataClass.dart';
 import 'package:slash_task/data_layer/model/NewArrival.dart';
 import '../datasource_contract/NewArrival_datasource_contract.dart';

@Injectable(as: NewArrivalDataSourceContract)
class NewArrivalDatasourceImpl extends NewArrivalDataSourceContract{
  ProductDataClass productDataClass;
  @factoryMethod
  NewArrivalDatasourceImpl(this.productDataClass);
  @override
  Future<Either<List<NewArrival>, String>> newArrival()async {
    try{
      var response=await ProductDataClass.newArrival;
      return left(response);
    }  catch(error){
      return right(error.toString());
    }
  }

}