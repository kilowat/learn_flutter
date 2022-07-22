class RestaurantModel {
  RestaurantModel(
      {required this.id,
      required this.name,
      required this.image,
      required this.distance,
      this.detailText,
      this.photos = const [],
      this.rating});

  final int id;
  final String name;
  final String image;
  final String distance;
  final String? detailText;
  final List<String> photos;
  final double? rating;
}

final List<RestaurantModel> restaurantDemo = [
  RestaurantModel(
    id: 1,
    name: "Vegan Resto long name",
    image: "assets/demo/rest_1.png",
    distance: "12 min",
    rating: 4.8,
    detailText:
        "Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .",
    photos: [
      "assets/demo/rest_photo_1.jpg",
    ],
  ),
  RestaurantModel(
    id: 2,
    name: "Healthy Food",
    image: "assets/demo/rest_2.png",
    distance: "8 Mins",
    rating: 4.8,
    detailText:
        "Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .",
    photos: [
      "assets/demo/rest_photo_1.jpg",
    ],
  ),
  RestaurantModel(
    id: 3,
    name: "Good Food",
    image: "assets/demo/rest_3.png",
    distance: "12 Mins",
    rating: 4.8,
    detailText:
        "Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .",
    photos: [
      "assets/demo/rest_photo_1.jpg",
    ],
  ),
  RestaurantModel(
    id: 4,
    name: "Smart Resto",
    image: "assets/demo/rest_4.png",
    distance: "8 Mins",
    rating: 4.8,
    detailText:
        "Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .",
    photos: [
      "assets/demo/rest_photo_1.jpg",
    ],
  ),
  RestaurantModel(
    id: 5,
    name: "Super food",
    image: "assets/demo/rest_4.png",
    distance: "18 Mins",
    rating: 4.8,
    detailText:
        "Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .",
    photos: [
      "assets/demo/rest_photo_1.jpg",
    ],
  ),
];
