/// id : 1
/// name : "Best Seller 1"
/// price : 29.99
/// image : "assets/images/best_seller_1.png"

class ProductEntity {
  ProductEntity({
      this.id, 
      this.name, 
      this.price, 
      this.image,});


  int? id;
  String? name;
  double? price;
  String? image;


}