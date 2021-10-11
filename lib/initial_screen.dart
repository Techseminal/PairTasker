import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 70, 20, 50),
              child: Text(
                "Pair Tasker",
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromRGBO(0, 127, 255, 1),
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Expanded(
              child: PageView(
                controller: pageController,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/network.svg",
                        width: 350,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text("Build network of customers and workers"),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/selecting_person.svg",
                        height: 200,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text("Hire the Taskers according to their profile")
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/self_employment.svg",
                        height: 200,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text("Be your own boss and work for yourself")
                    ],
                  ),
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.only(bottom: 50),
                child: Center(
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: 3,
                    effect: const SlideEffect(
                        spacing: 8.0,
                        radius: 4.0,
                        dotWidth: 24.0,
                        dotHeight: 8.0,
                        paintStyle: PaintingStyle.stroke,
                        strokeWidth: 0.5,
                        dotColor: Colors.lightBlue,
                        activeDotColor: Color.fromRGBO(0, 127, 255, 1)),
                    onDotClicked: (index) => pageController.animateToPage(index,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.bounceOut),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(0, 127, 255, 1),
                      fixedSize: const Size.fromWidth(250),
                      elevation: 5,
                    ),
                    child: const Text(
                      'Get started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already a user?"),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        style: TextButton.styleFrom(
                          primary: const Color.fromRGBO(0, 127, 255, 1),
                          splashFactory: NoSplash.splashFactory,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
