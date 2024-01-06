import 'package:flutter/material.dart';
import 'package:frontend/constants/constants.dart';
import 'package:frontend/Models/allinonboardscreen.dart';
import 'package:frontend/widgets/Tabs.dart';

class OnboardScreen extends StatefulWidget {
  OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int currentIndex = 0;
  late PageController _pageController;

  List<AllinOnboardModel> allinonboardlist = [
    AllinOnboardModel(
      "assets/s_one.png",
      "Immerse yourself in a world of augmented reality shopping. Explore unique product experiences and make informed decisions with our cutting-edge AR technology.",
      "Expertly Crafted for Augmented Reality",
    ),
    AllinOnboardModel(
      "assets/s_two.png",
      "Visualize products in your space with our AR app. Revolutionize the way you shop online by experiencing real-time 3D models tailored to your environment.",
      "Virtual Products, Real Home Delivery",
    ),
    AllinOnboardModel(
      "assets/s_three.png",
      "Elevate your shopping journey with AR. Share the joy of interactive product exploration with friends and family.",
      "Immersive Shopping for Everyone",
    ),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   centerTitle: true,
        //   title: const Text(
        //     "WONDER",
        //     style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        //   ),
        //   backgroundColor: KFadeBlue,
        // ),
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              itemCount: allinonboardlist.length,
              itemBuilder: (context, index) {
                return PageBuilderWidget(
                  title: allinonboardlist[index].titlestr,
                  description: allinonboardlist[index].description,
                  imgurl: allinonboardlist[index].imgStr,
                );
              },
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.3,
              left: MediaQuery.of(context).size.width * 0.44,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  allinonboardlist.length,
                  (index) => buildDot(index: index),
                ),
              ),
            ),
            currentIndex < allinonboardlist.length - 1
                ? Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (currentIndex > 0) {
                              _pageController.previousPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kButtonDark,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                              ),
                            ),
                          ),
                          child: const Text(
                            "Previous",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (currentIndex < allinonboardlist.length - 1) {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kButtonDark,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                              ),
                            ),
                          ),
                          child: const Text(
                            "Next",
                            style: TextStyle(fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  )
                : Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.2,
                    left: MediaQuery.of(context).size.width * 0.33,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Tabs()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kButtonDark,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: const Text(
                        "Get Started",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
          ],
        ));
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentIndex == index ? 24 : 6,
      decoration: BoxDecoration(
        color: currentIndex == index ? Colors.black : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

class PageBuilderWidget extends StatelessWidget {
  final String title;
  final String description;
  final String imgurl;

  PageBuilderWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.imgurl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: MediaQuery.of(context).size.height * 0.4,
            child: Image.asset(imgurl),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            description,
            textAlign: TextAlign.justify,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
