class BannerModel {
  final int id;
  final String title;
  final String image;

  BannerModel({
    required this.id,
    required this.title,
    required this.image,
  });
}

final List<BannerModel> bannersDemo = [
  BannerModel(
      id: 1,
      title: "Special Deal  For \nOctober",
      image: 'assets/demo/banner.png'),
  BannerModel(
      id: 2,
      title: "Special Deal  For \nOctober",
      image: 'assets/demo/banner.png'),
  BannerModel(
      id: 3,
      title: "Special Deal  For \nOctober",
      image: 'assets/demo/banner.png'),
];
