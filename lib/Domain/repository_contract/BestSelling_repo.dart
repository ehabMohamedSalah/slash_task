import 'package:slash_task/Domain/entity/best_selling_entity/ProductEntity.dart';
 import 'package:dartz/dartz.dart';

abstract class BestSellingProductRepo{
  Future<Either<List<ProductEntity>,String>> bestSelling();
}