import 'package:flutter/material.dart';
import 'package:tech_media/res/color.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  final Color color, textColor;
  const RoundButton(
      {super.key,
      required this.title,
      required this.onPress,
      this.color = AppColors.primaryColor,
      this.textColor = AppColors.whiteColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(40)),
      child: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16),
        ),
      ),
    );
  }
}
