import 'package:slash_task/Domain/entity/best_selling_entity/ProductEntity.dart';

/// id : 1
/// name : "Best Seller 1"
/// price : 29.99
/// image : "assets/images/best_seller_1.png"

class BestSelling {
  BestSelling({
      this.id, 
      this.name, 
      this.price, 
      this.image,});

  BestSelling.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    image = json['image'];
  }
  int? id;
  String? name;
  double? price;
  String? image;
BestSelling copyWith({  int? id,
  String? name,
  double? price,
  String? image,
}) => BestSelling(  id: id ?? this.id,
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
  ProductEntity toBestSellingEntity(){
    return ProductEntity(image: image,name: name,price: price,id: id);
  }

}