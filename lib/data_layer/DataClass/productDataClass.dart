 import 'package:injectable/injectable.dart';

import '../model/BestSelling.dart';
import '../model/NewArrival.dart';
import '../model/RecommendedForYou.dart';
@injectable
  class ProductDataClass{
  @factoryMethod
  static List<BestSelling> bestSellingProduct=[
    BestSelling(id:1, name: "Best Seller 1",image: "assets/images/dumy/bestselling1.png",price: 29.99),
    BestSelling(id:2, name: "Best Seller 2",image: "assets/images/dumy/bestselling2.png",price:49.99),
    BestSelling(id:3, name: "Best Seller 3",image: "assets/images/dumy/best_seller_3.png",price:19.99),
    BestSelling(id:4, name: "Best Seller 4",image: "assets/images/dumy/best_seller_4.png",price:39.99),
    BestSelling(id:5, name: "Best Seller 5",image: "assets/images/dumy/new_arrival_5.png",price:24.99),
  ];

  static List<NewArrival>newArrival=[
    NewArrival(id: 1, name: "New Arrival 1", price: 34.99, image: "assets/images/dumy/new_arrival_1.png"),
    NewArrival(id: 2, name: "New Arrival 2", price: 54.99, image: "assets/images/dumy/new_arrival_2.png"),
    NewArrival(id: 3, name: "New Arrival 3", price: 21.99, image: "assets/images/dumy/newArrival3.png"),
    NewArrival(id: 4, name: "New Arrival 4", price: 42.99, image: "assets/images/dumy/new_arrival_4.png"),
    NewArrival(id: 5, name: "New Arrival 5", price: 29.99, image: "assets/images/dumy/new_arrival_5.png"),
  ];

  static List<RecommendedForYou>recommendedForYou=[
    RecommendedForYou(id: 1,name: "Recpmmended 1",price: 27.99,image: "assets/images/dumy/recommended_1.png"),
    RecommendedForYou(id: 2,name: "Recpmmended 2",price: 47.99,image: "assets/images/dumy/recommended_2.png"),
    RecommendedForYou(id: 3,name: "Recpmmended 3",price: 18.99,image: "assets/images/dumy/recommended_3.png"),
    RecommendedForYou(id: 4,name: "Recpmmended 4",price: 36.99,image: "assets/images/dumy/recommended_4.png"),
    RecommendedForYou(id: 1,name: "Recpmmended 1",price: 25.99,image: "assets/images/dumy/recommended_5.png"),

  ];
}