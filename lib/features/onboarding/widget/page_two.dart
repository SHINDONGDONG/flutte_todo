import 'package:flutte_todo/common/utils/constants.dart';
import 'package:flutte_todo/common/widgets/custom_otn_btn.dart';
import 'package:flutte_todo/features/auth/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

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
          const Gap(50),
          CustomOtnlnBtn(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              width: AppConst.kWidth * .9,
              height: AppConst.kHieght * .06,
              color: AppConst.kLight,
              text: "전화번호로 로그인하기"),
        ],
      ),
    );
  }
}
