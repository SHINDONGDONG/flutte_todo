import 'package:flutte_todo/common/utils/constants.dart';
import 'package:flutte_todo/common/widgets/appstyle.dart';
import 'package:flutte_todo/common/widgets/reusable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:gap/gap.dart';

class TodoTitle extends StatelessWidget {
  const TodoTitle({Key? key,
    this.color,
    this.title,
    this.description,
    this.start,
    this.end, this.editWidget, this.delete, this.switcher})
      : super(key: key);
  final Color? color;
  final String? title;
  final String? description;
  final String? start;
  final String? end;
  final Widget? editWidget;
  final Widget? switcher;
  final void Function()? delete;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(8.h),
            width: AppConst.kWidth,
            decoration: BoxDecoration(
              color: AppConst.kGreyLight,
              borderRadius: BorderRadius.all(
                Radius.circular(AppConst.kRadius),),
            ),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 80,
                      width: 5,
                      decoration: BoxDecoration(
                        color: color?? AppConst.kRed,
                      ),
                    ),
                    const Gap(10),
                    Padding(
                      padding: EdgeInsets.all(8.h),
                      child: SizedBox(
                        width: AppConst.kWidth*.6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReuseableText(
                              text: title ?? "Title",
                              style: appstyle(
                                  18, AppConst.kLight, FontWeight.bold),
                            ),
                            const Gap(3),
                            ReuseableText(
                              text: description ?? "Description of Todo",
                              style: appstyle(
                                  12, AppConst.kLight, FontWeight.bold),
                            ),
                            const Gap(10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 0.3,
                                      color: AppConst.kGreDk,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(AppConst.kRadius),),
                                    color: AppConst.kBkDark,
                                  ),
                                  child: Center(
                                    child: ReuseableText(text: "$start | $end", style: appstyle(12, AppConst.kLight, FontWeight.bold),),
                                  ),
                                  padding: EdgeInsets.all(6.w),
                                ),
                                const Gap(20),
                                Row(
                                  children: [
                                    SizedBox(
                                      child: editWidget,
                                    ),
                                    const Gap(20),
                                    GestureDetector(
                                      onTap: delete,
                                      child: const Icon(MaterialCommunityIcons.delete_circle),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                    ),)
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 0.h),
                  child: switcher,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
