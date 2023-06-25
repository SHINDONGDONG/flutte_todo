import 'package:country_picker/country_picker.dart';
import 'package:flutte_todo/common/utils/constants.dart';
import 'package:flutte_todo/common/widgets/appstyle.dart';
import 'package:flutte_todo/common/widgets/custom_otn_btn.dart';
import 'package:flutte_todo/common/widgets/custom_text.dart';
import 'package:flutte_todo/common/widgets/reusable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final TextEditingController phone = TextEditingController();
  Country country = Country(
    phoneCode: "82",
    countryCode: "KR",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: "Korea",
    example: "Korea",
    displayName: "South Korea",
    displayNameNoCountryCode: "KR",
    e164Key: "",
  );

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Image.asset(
                  "assets/images/todo.png",
                  width: 330,
                ),
              ),
              const Gap(20),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 16.w),
                child: ReuseableText(
                  text: "전화번호를 입력해주세요.",
                  style: appstyle(17, AppConst.kLight, FontWeight.w500),
                ),
              ),
              const Gap(20),
              Center(
                child: CustomTextField(
                  controller: phone,
                  prefixIcon: Container(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {
                        showCountryPicker(
                            context: context,
                            countryListTheme: CountryListThemeData(
                              backgroundColor: AppConst.kLight,
                              bottomSheetHeight: AppConst.kHieght * .6,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(AppConst.kRadius),
                                topRight: Radius.circular(AppConst.kRadius),
                              ),
                            ),
                            onSelect: (code) {
                              setState(() {});
                            });
                      },
                      child: ReuseableText(
                        text: "${country.flagEmoji} + ${country.phoneCode}",
                        style: appstyle(18, AppConst.kBkDark, FontWeight.bold),
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  hintText: "전화번호를 입력해주세요.",
                  hintStyle: appstyle(16, AppConst.kBkDark, FontWeight.w600),
                ),
              ),
              const Gap(20),
              CustomOtnlnBtn(
                  width: AppConst.kWidth * .85,
                  height: AppConst.kHieght * .07,
                  color: AppConst.kBkDark,
                  color2: AppConst.kLight,
                  text: "코드 보내기"),
            ],
          ),
        ),
      ),
    );
  }
}
