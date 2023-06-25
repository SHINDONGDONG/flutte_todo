import 'package:flutte_todo/common/utils/constants.dart';
import 'package:flutte_todo/common/widgets/appstyle.dart';
import 'package:flutte_todo/common/widgets/reusable.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ReuseableText(
              text: "Todo",
              style: appstyle(26, AppConst.kBlueLight, FontWeight.bold),
            ),
            const Gap(30),
            ReuseableText(
              text: "Todo",
              style: appstyle(26, AppConst.kBlueLight, FontWeight.bold),
            ),
            const Gap(20),
            ReuseableText(
              text: "Todo",
              style: appstyle(26, AppConst.kBlueLight, FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
