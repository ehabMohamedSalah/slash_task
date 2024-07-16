 import 'package:injectable/injectable.dart';

import '../../core/utilis/assets_manager.dart';
import '../../core/utilis/strings_manager.dart';
 import '../model/BestSelling.dart';
import '../model/NewArrival.dart';
import '../model/RecommendedForYou.dart';
@injectable
  class ProductDataClass{
  @factoryMethod
  static List<BestSelling> bestSellingProduct=[
    BestSelling(id:1, name: "Best Sell1",image: "assets/images/dumy/bestselling1.png",price: 29.99),
    BestSelling(id:2, name: "Best Sell 2",image: "assets/images/dumy/bestselling2.png",price:49.99),
    BestSelling(id:3, name: "Best Sell3",image: "assets/images/dumy/best_seller_3.png",price:19.99),
    BestSelling(id:4, name: "Best Sell4",image: "assets/images/dumy/best_seller_4.png",price:39.99),
    BestSelling(id:5, name: "Best Sell5",image: "assets/images/dumy/new_arrival_5.png",price:24.99),
  ];

  static List<NewArrival>newArrival=[
    NewArrival(id: 1, name: "New Arr1", price: 34.99, image: "assets/images/dumy/new_arrival_1.png"),
    NewArrival(id: 2, name: "New Arr2", price: 54.99, image: "assets/images/dumy/new_arrival_2.png"),
    NewArrival(id: 3, name: "New Arr3", price: 21.99, image: "assets/images/dumy/recommended_3.png"),
    NewArrival(id: 4, name: "New Arr4", price: 42.99, image: "assets/images/dumy/new_arrival_4.png"),
    NewArrival(id: 5, name: "New Arr5", price: 29.99, image: "assets/images/dumy/new_arrival_5.png"),
  ];

  static List<RecommendedForYou>recommendedForYou=[
    RecommendedForYou(id: 1,name: "Reco 1",price: 27.99,image: "assets/images/dumy/recommended_1.png"),
    RecommendedForYou(id: 2,name: "Reco 2",price: 47.99,image: "assets/images/dumy/recommended_2.png"),
    RecommendedForYou(id: 3,name: "Reco 3",price: 18.99,image: "assets/images/dumy/recommended_3.png"),
    RecommendedForYou(id: 4,name: "Reco 4",price: 36.99,image: "assets/images/dumy/recommended_4.png"),
    RecommendedForYou(id: 1,name: "Reco 1",price: 25.99,image: "assets/images/dumy/recommended_5.png"),

  ];

}