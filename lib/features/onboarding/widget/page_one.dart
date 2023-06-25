import 'package:flutte_todo/common/utils/constants.dart';
import 'package:flutte_todo/common/widgets/appstyle.dart';
import 'package:flutte_todo/common/widgets/reusable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConst.kHieght,
      width: AppConst.kWidth,
      color: AppConst.kBkDark,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Image.asset("assets/images/todo.png"),
          ),
          const Gap(100),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ReuseableText(
                text: "리버팟과 함께 하는 Todo ",
                style: appstyle(30, AppConst.kLight, FontWeight.w600),
              ),
              const Gap(10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Text(
                  "어서오세요 동동동님 Todo를 사용하여 테스크관리가 편리해집니다.",
                  textAlign: TextAlign.center,
                  style: appstyle(16, AppConst.kGreyLight, FontWeight.normal),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
