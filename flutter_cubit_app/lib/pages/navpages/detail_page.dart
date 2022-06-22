import 'package:flutter/material.dart';
import 'package:flutter_cubit_app/misc/colors.dart';
import 'package:flutter_cubit_app/widgets/app_button.dart';
import 'package:flutter_cubit_app/widgets/app_large_text.dart';
import 'package:flutter_cubit_app/widgets/app_text.dart';
import 'package:flutter_cubit_app/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int start = 4;
  int selectedIndex = -1;
  double contentHeight = 500;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height - contentHeight,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('img/mountain.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SafeArea(
                child: Positioned(
                  top: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height - contentHeight - 30,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  height: contentHeight + 30,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(
                            text: "Название",
                            color: Colors.black.withOpacity(0.8),
                          ),
                          AppLargeText(
                            text: "2000 Р",
                            color: AppColors.mainColor,
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: AppColors.mainColor),
                          const SizedBox(width: 5),
                          AppText(
                              text: "США, Калифорния",
                              color: AppColors.textColor1),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Wrap(
                            children: [
                              ...List.generate(
                                5,
                                (index) => Icon(Icons.star,
                                    color: index < start
                                        ? AppColors.starColor
                                        : AppColors.textColor2),
                              ),
                            ],
                          ),
                          const SizedBox(width: 4),
                          AppText(text: '(4.0)', color: AppColors.textColor2),
                        ],
                      ),
                      const SizedBox(height: 30),
                      AppLargeText(
                        text: 'Людей',
                        color: Colors.black.withOpacity(0.8),
                        size: 20,
                      ),
                      const SizedBox(height: 5),
                      AppText(
                        text: "Кол-во человек в группе",
                        color: AppColors.mainTextColor,
                      ),
                      const SizedBox(height: 10),
                      Wrap(
                        children: List.generate(
                          5,
                          (index) => InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              margin:
                                  EdgeInsets.only(right: index < 5 ? 10 : 0),
                              child: AppButton(
                                text: (index + 1).toString(),
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.black,
                                backgroundColor: selectedIndex == index
                                    ? Colors.black
                                    : Colors.black.withOpacity(0.1),
                                borderColor: selectedIndex == index
                                    ? Colors.black
                                    : AppColors.buttonBackground,
                                size: 50,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      AppLargeText(
                        text: "Описание",
                        color: Colors.black.withOpacity(0.8),
                        size: 20,
                      ),
                      const SizedBox(height: 10),
                      AppText(
                          text:
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    AppButton(
                      color: AppColors.textColor1,
                      backgroundColor: Colors.white,
                      borderColor: AppColors.textColor1,
                      size: 60,
                      isIcon: true,
                      icon: Icons.favorite_outline,
                    ),
                    const SizedBox(width: 20),
                    ResponsiveButton(
                      isResponsive: true,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
