
import '../../Domain/entity/best_selling_entity/ProductEntity.dart';

/// id : 1
/// name : "New Arrival 1"
/// price : 34.99
/// image : "assets/images/new_arrival_1.png"

class NewArrival {
  NewArrival({
      this.id, 
      this.name, 
      this.price, 
      this.image,});

  NewArrival.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    image = json['image'];
  }
  int? id;
  String? name;
  double? price;
  String? image;
NewArrival copyWith({  int? id,
  String? name,
  double? price,
  String? image,
}) => NewArrival(  id: id ?? this.id,
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
  ProductEntity toNewArrivalEntity(){
    return ProductEntity(image: image,name: name,price: price,id: id);
  }

}