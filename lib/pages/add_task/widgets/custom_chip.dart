import 'package:rdsh_test_task2/pages/add_task/widgets/long_button.dart';
import 'package:rdsh_test_task2/pages/size_calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomChip extends StatelessWidget {
  const CustomChip(
      {Key? key, required this.text, this.iconPath, this.bigIcon = false})
      : super(key: key);

  final String text;
  final String? iconPath;
  final bool bigIcon;

  @override
  Widget build(BuildContext context) {
    final sizeCalc = SizeCalculator(context);
    final ThemeData theme = Theme.of(context);

    return Container(
      height: 30 * sizeCalc.heightScale,
      padding: (EdgeInsets.only(left: 11, right: 11)),
      decoration: BoxDecoration(
        color: Color(0xFF717988).withOpacity(0.5),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            if (iconPath != null)
              Padding(
                padding: EdgeInsets.only(
                  right: 6 * sizeCalc.heightScale,
                ),
                child: SvgPicture.asset(
                  iconPath!,
                  height: bigIcon
                      ? 20 * sizeCalc.heightScale
                      : 11 * sizeCalc.heightScale,
                  width: bigIcon
                      ? 15 * sizeCalc.widthScale
                      : 1 * sizeCalc.widthScale,
                ),
              ),
            Text(
              text,
              style: theme.primaryTextTheme.overline!.copyWith(
                  fontSize: 12 * sizeCalc.heightScale
              ),
            ),
          ],
        ),
      ),
    );
  }
}
