import 'package:flutte_todo/common/utils/constants.dart';
import 'package:flutte_todo/common/widgets/titles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class XpansionTile extends StatelessWidget {
  const XpansionTile(
      {Key? key,
      required this.text,
      required this.text2,
      this.onExpansionChanged,
      this.trailing,
      required this.children})
      : super(key: key);

  final String text;
  final String text2;
  final void Function(bool)? onExpansionChanged;
  final Widget? trailing;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppConst.kBkLight,
        borderRadius: BorderRadius.all(
          Radius.circular(AppConst.kRadius),
        ),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
        ),
        child: ExpansionTile(
          title: BottomTitles(text: text, text2: text2, clr: AppConst.kGreen,),
          tilePadding: EdgeInsets.zero,
          childrenPadding: EdgeInsets.zero,
          onExpansionChanged: onExpansionChanged,
          controlAffinity: ListTileControlAffinity.trailing,
          trailing: trailing,
          children: children,
        ),
      ),
    );
  }
}
