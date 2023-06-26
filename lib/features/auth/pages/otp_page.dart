import 'package:flutte_todo/common/utils/constants.dart';
import 'package:flutte_todo/common/widgets/appstyle.dart';
import 'package:flutte_todo/common/widgets/reusable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pinput/pinput.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap(AppConst.kHieght * .12),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Image.asset(
                  "assets/images/todo.png",
                  width: AppConst.kWidth * .5,
                ),
              ),
              const Gap(26),
              ReuseableText(
                text: "OTP를 입력해주세요.",
                style: appstyle(18, AppConst.kLight, FontWeight.bold),
              ),
              const Gap(26),
              Pinput(
                length: 6,
                showCursor: true,
                onCompleted: (value){
                  if(value.length == 6) {

                  }
                },
                onSubmitted: (value){
                  if(value.length == 6) {

                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
