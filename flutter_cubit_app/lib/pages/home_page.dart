import 'package:flutter/material.dart';
import 'package:flutter_cubit_app/misc/colors.dart';
import 'package:flutter_cubit_app/widgets/app_large_text.dart';
import 'package:flutter_cubit_app/widgets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    Map<String, String> images = {
      "balloning.png": "balloning",
      "hiking.png": "hiking",
      "kayaking.png": "kayaking",
      "snorkling.png": "snorkling",
    };
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  children: [
                    const Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                    const Spacer(),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.4)),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: AppLargeText(text: "Походы"),
              ),
              const SizedBox(height: 20),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    indicator: CircleTabBarIndicator(
                        color: AppColors.mainColor, radius: 4),
                    labelPadding: const EdgeInsets.only(left: 20, right: 20),
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    controller: tabController,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: const [
                      Tab(text: "Места"),
                      Tab(text: "Вдохновение"),
                      Tab(text: "Эмоции"),
                    ],
                  ),
                ),
              ),
              Container(
                height: 250,
                padding: const EdgeInsets.only(left: 20),
                width: double.maxFinite,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, item) => Container(
                        margin: const EdgeInsets.only(right: 15, top: 10),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: const DecorationImage(
                            image: AssetImage("img/mountain.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const Text("Два"),
                    const Text("Три"),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppLargeText(
                      text: "Узнайте больше",
                      size: 22,
                    ),
                    AppText(
                      text: "Смотреть всё",
                      color: AppColors.textColor1,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                height: 100,
                width: double.infinity,
                margin: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage(
                                  "img/${images.keys.elementAt(index)}"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        AppText(
                          text: images.values.elementAt(index),
                          color: AppColors.textColor2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircleTabBarIndicator extends Decoration {
  const CircleTabBarIndicator({required this.color, required this.radius});

  final Color color;
  final double radius;
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  const _CirclePainter({required this.color, required this.radius});
  final Color color;
  final double radius;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint paint = Paint();
    paint.color = color;
    paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, paint);
  }
}
