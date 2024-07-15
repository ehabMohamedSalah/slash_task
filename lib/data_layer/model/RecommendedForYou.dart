import '../../Domain/entity/best_selling_entity/ProductEntity.dart';

/// id : 1
/// name : "Recommended 1"
/// price : 27.99
/// image : "assets/images/recommended_1.png"

class RecommendedForYou {
  RecommendedForYou({
      this.id, 
      this.name, 
      this.price, 
      this.image,});

  RecommendedForYou.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    image = json['image'];
  }
  int? id;
  String? name;
  double? price;
  String? image;
RecommendedForYou copyWith({  int? id,
  String? name,
  double? price,
  String? image,
}) => RecommendedForYou(  id: id ?? this.id,
  name: name ?? this.name,
  price: price ?? this.price,
  image: image ?? this.image,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['price'] = price;
    map['image'] = image;
    return map;
  }
  ProductEntity toRecommendedEntity(){
    return ProductEntity(image: image,name: name,price: price,id: id);
  }


}