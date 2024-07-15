 import 'package:dartz/dartz.dart';
import 'package:slash_task/data_layer/model/NewArrival.dart';

import '../model/RecommendedForYou.dart';

abstract class RecommendedDataSourceContract{
  Future<Either<List<RecommendedForYou>,String>> Recommended();
}