import 'package:slash_task/data_layer/model/BestSelling.dart';
import 'package:dartz/dartz.dart';

abstract class BestSellingDataSourceContract{
  Future<Either<List<BestSelling>,String>> bestSelling();
}