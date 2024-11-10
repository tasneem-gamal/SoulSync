import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:soulsync/core/widgets/custom_button.dart';
import 'package:soulsync/features/on_boarding/widgets/on_boarding_page_one.dart';
import 'package:soulsync/features/on_boarding/widgets/on_boarding_page_three.dart';
import 'package:soulsync/features/on_boarding/widgets/on_boarding_page_two.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  final pageController = PageController();
  int currentPage = 0;
  
  @override
  void initState() {
    super.initState();
    autoNavigatePages();
  }

  void autoNavigatePages() {
    Timer.periodic(const Duration(seconds: 2), (timer) {
      if (currentPage == 0) {
        pageController.animateToPage(1,
            duration: const Duration(milliseconds: 800), curve: Curves.easeInOut);
        setState(() {
          currentPage = 1;
        });
      } else if (currentPage == 1) {
        pageController.animateToPage(2,
            duration: const Duration(milliseconds: 800), curve: Curves.easeInOut);
        setState(() {
          currentPage = 2;
        });
      } else {
        timer.cancel();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
      child: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              onPageChanged: (index){
                setState(() {
                  currentPage = index;
                });
              },
              children: const [
                OnBoardingPageOne(),
                OnBoardingPageTwo(),
                OnBoardingPageThree()
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: pageController, 
            count: 3,
            axisDirection: Axis.horizontal,
            effect: const SlideEffect(
              activeDotColor: Colors.blue,
              dotColor: Color.fromARGB(137, 163, 161, 161),
              dotHeight: 13,
              dotWidth: 13
            ),
          ),
          SizedBox(height: 47.h,),
          CustomButton(
            text: 'Get Started',
            onPressed: (){},
          )
        ],
      ),
    );
  }
}