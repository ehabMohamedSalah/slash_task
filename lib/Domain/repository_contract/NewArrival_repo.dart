 import 'package:dartz/dartz.dart';

import '../entity/best_selling_entity/ProductEntity.dart';


abstract class NewArrivalProductRepo{
  Future<Either<List<ProductEntity>,String>> newArrival();
}