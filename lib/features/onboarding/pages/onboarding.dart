import 'package:flutte_todo/common/utils/constants.dart';
import 'package:flutte_todo/common/widgets/appstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../widget/page_one.dart';
import '../widget/page_two.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController pageController = PageController();
  double currentPage = 0;
  final pageList = [const PageOne(), const PageTwo()];
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            physics: const AlwaysScrollableScrollPhysics(),
            children: pageList,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          currentPage = pageController.page!.toDouble();
                          if (pageList.length == currentPage + 1) {
                            pageController.animateToPage(0,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease);
                          } else {
                            pageController.nextPage(
                              duration: const Duration(milliseconds: 600),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                        child: const Icon(
                          Ionicons.chevron_forward_circle,
                          size: 30,
                          color: AppConst.kLight,
                        ),
                      ),
                      const Gap(5),
                      Text(
                        "Skip",
                        style: appstyle(16, AppConst.kLight, FontWeight.w500),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 600),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: SmoothPageIndicator(
                      controller: pageController,
                      count: 2,
                      effect: const WormEffect(
                        dotWidth: 20,
                        dotHeight: 12,
                        spacing: 10,
                        dotColor: AppConst.kYellow,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
