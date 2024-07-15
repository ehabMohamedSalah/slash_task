import 'BestSelling.dart';
import 'NewArrival.dart';
import 'RecommendedForYou.dart';

/// bestSelling : [{"id":1,"name":"Best Seller 1","price":29.99,"image":"assets/images/best_seller_1.png"},{"id":2,"name":"Best Seller 2","price":49.99,"image":"assets/images/best_seller_2.png"},{"id":3,"name":"Best Seller 3","price":19.99,"image":"assets/images/best_seller_3.png"},{"id":4,"name":"Best Seller 4","price":39.99,"image":"assets/images/best_seller_4.png"},{"id":5,"name":"Best Seller 5","price":24.99,"image":"assets/images/best_seller_5.png"}]
/// newArrival : [{"id":1,"name":"New Arrival 1","price":34.99,"image":"assets/images/new_arrival_1.png"},{"id":2,"name":"New Arrival 2","price":54.99,"image":"assets/images/new_arrival_2.png"},{"id":3,"name":"New Arrival 3","price":21.99,"image":"assets/images/new_arrival_3.png"},{"id":4,"name":"New Arrival 4","price":42.99,"image":"assets/images/new_arrival_4.png"},{"id":5,"name":"New Arrival 5","price":29.49,"image":"assets/images/new_arrival_5.png"}]
/// recommendedForYou : [{"id":1,"name":"Recommended 1","price":27.99,"image":"assets/images/recommended_1.png"},{"id":2,"name":"Recommended 2","price":47.99,"image":"assets/images/recommended_2.png"},{"id":3,"name":"Recommended 3","price":18.99,"image":"assets/images/recommended_3.png"},{"id":4,"name":"Recommended 4","price":36.99,"image":"assets/images/recommended_4.png"},{"id":5,"name":"Recommended 5","price":25.99,"image":"assets/images/recommended_5.png"}]

class ProductResponseModel {
  ProductResponseModel({
      this.bestSelling, 
      this.newArrival, 
      this.recommendedForYou,});

  ProductResponseModel.fromJson(dynamic json) {
    if (json['bestSelling'] != null) {
      bestSelling = [];
      json['bestSelling'].forEach((v) {
        bestSelling?.add(BestSelling.fromJson(v));
      });
    }
    if (json['newArrival'] != null) {
      newArrival = [];
      json['newArrival'].forEach((v) {
        newArrival?.add(NewArrival.fromJson(v));
      });
    }
    if (json['recommendedForYou'] != null) {
      recommendedForYou = [];
      json['recommendedForYou'].forEach((v) {
        recommendedForYou?.add(RecommendedForYou.fromJson(v));
      });
    }
  }
  List<BestSelling>? bestSelling;
  List<NewArrival>? newArrival;
  List<RecommendedForYou>? recommendedForYou;
ProductResponseModel copyWith({  List<BestSelling>? bestSelling,
  List<NewArrival>? newArrival,
  List<RecommendedForYou>? recommendedForYou,
}) => ProductResponseModel(  bestSelling: bestSelling ?? this.bestSelling,
  newArrival: newArrival ?? this.newArrival,
  recommendedForYou: recommendedForYou ?? this.recommendedForYou,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (bestSelling != null) {
      map['bestSelling'] = bestSelling?.map((v) => v.toJson()).toList();
    }
    if (newArrival != null) {
      map['newArrival'] = newArrival?.map((v) => v.toJson()).toList();
    }
    if (recommendedForYou != null) {
      map['recommendedForYou'] = recommendedForYou?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}