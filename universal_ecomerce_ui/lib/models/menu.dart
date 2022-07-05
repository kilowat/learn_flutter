class MenuModel {
  final int id;
  final String image;
  final String title;
  final String subTitle;
  final double price;

  MenuModel({
    required this.id,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.price,
  });
}

final List<MenuModel> menuDemo = [
  MenuModel(
    id: 0,
    image: 'assets/demo/menu_1.jpg',
    title: "Green Noddle",
    subTitle: "Noodle Home",
    price: 15,
  ),
  MenuModel(
    id: 1,
    image: 'assets/demo/menu_2.jpg',
    title: "Herbal Pancake",
    subTitle: "Warung Herbal",
    price: 7,
  ),
  MenuModel(
    id: 2,
    image: 'assets/demo/menu_3.jpg',
    title: "Fruit Salad",
    subTitle: "Wijie Resto",
    price: 5,
  ),
  MenuModel(
    id: 3,
    image: 'assets/demo/menu_4.jpg',
    title: "Russian salad",
    subTitle: "Noodle Home",
    price: 15,
  ),
];
