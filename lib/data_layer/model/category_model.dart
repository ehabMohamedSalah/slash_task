class CategoryModel{
  String title;
  String imagePath;

  CategoryModel({required this.title, required this.imagePath});

  static List<CategoryModel> getCategories()=>[
    CategoryModel(title: "Fashion", imagePath: "assets/images/Category1.svg"),
    CategoryModel(title: "Games", imagePath: "assets/images/Category2.svg"),
    CategoryModel(title: "Accessories", imagePath: "assets/images/Category3.svg"),
    CategoryModel(title: "Books", imagePath: "assets/images/Category4.svg"),
    CategoryModel(title: "Artifacts", imagePath: "assets/images/Category5.svg"),
  ];
}