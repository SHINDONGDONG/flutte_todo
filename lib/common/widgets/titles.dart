import 'package:flutte_todo/common/utils/constants.dart';
import 'package:flutte_todo/common/widgets/appstyle.dart';
import 'package:flutte_todo/common/widgets/reusable.dart';
import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BottomTitles extends StatelessWidget {
  const BottomTitles({Key? key, required this.text, required this.text2, this.clr}) : super(key: key);
  final String text;
  final String text2;
  final Color? clr;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppConst.kWidth,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Consumer(
              builder: (context, ref, child) {
                return Container(
                  height: 80,
                  width: 5,
                  decoration: BoxDecoration(
                    ///TODO Dynamic Color
                    color: clr,
                    borderRadius: BorderRadius.all(
                      Radius.circular(AppConst.kRadius),
                    ),
                  ),
                );
              },
            ),
            const Gap(15),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReuseableText(text: text, style: appstyle(24, AppConst.kLight, FontWeight.bold),),
                  const Gap(10),
                  ReuseableText(text: text2, style: appstyle(12, AppConst.kLight, FontWeight.normal),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
