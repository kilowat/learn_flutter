class RestaurantModel {
  final int id;
  final String name;
  final String image;
  final String distance;
  final List<String> photos;
  RestaurantModel({
    required this.id,
    required this.name,
    required this.image,
    required this.distance,
    this.photos = const [],
  });
}

final List<RestaurantModel> restaurantDemo = [
  RestaurantModel(
    id: 1,
    name: "Vegan Resto long name",
    image: "assets/demo/rest_1.png",
    distance: "12 min",
    photos: [
      "assets/demo/rest_photo_1.jpg",
    ],
  ),
  RestaurantModel(
    id: 2,
    name: "Healthy Food",
    image: "assets/demo/rest_2.png",
    distance: "8 Mins",
    photos: [
      "assets/demo/rest_photo_1.jpg",
    ],
  ),
  RestaurantModel(
    id: 3,
    name: "Good Food",
    image: "assets/demo/rest_3.png",
    distance: "12 Mins",
    photos: [
      "assets/demo/rest_photo_1.jpg",
    ],
  ),
  RestaurantModel(
    id: 4,
    name: "Smart Resto",
    image: "assets/demo/rest_4.png",
    distance: "8 Mins",
    photos: [
      "assets/demo/rest_photo_1.jpg",
    ],
  ),
  RestaurantModel(
    id: 5,
    name: "Super food",
    image: "assets/demo/rest_4.png",
    distance: "18 Mins",
    photos: [
      "assets/demo/rest_photo_1.jpg",
    ],
  ),
];
