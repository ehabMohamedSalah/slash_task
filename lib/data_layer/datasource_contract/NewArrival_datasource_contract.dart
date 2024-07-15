import 'package:slash_task/data_layer/model/BestSelling.dart';
import 'package:dartz/dartz.dart';
import 'package:slash_task/data_layer/model/NewArrival.dart';

abstract class NewArrivalDataSourceContract{
  Future<Either<List<NewArrival>,String>> newArrival();
}