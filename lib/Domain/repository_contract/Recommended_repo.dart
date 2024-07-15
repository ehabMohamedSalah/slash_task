import 'package:dartz/dartz.dart';

import '../entity/best_selling_entity/ProductEntity.dart';


abstract class RecommendedRepo{
  Future<Either<List<ProductEntity>,String>> Recommended();
}