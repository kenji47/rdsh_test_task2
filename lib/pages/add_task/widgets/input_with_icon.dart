import 'package:rdsh_test_task2/pages/add_task/widgets/long_button.dart';
import 'package:rdsh_test_task2/pages/add_task/widgets/text_with_asterisk.dart';
import 'package:rdsh_test_task2/pages/size_calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InputWithIcon extends StatelessWidget {
  const InputWithIcon({
    Key? key,
    required this.label,
    required this.iconPath,
    this.text,
  }) : super(key: key);
  final String label;
  final String? text;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    final sizeCalc = SizeCalculator(context);

    return Container(
      height: 82 * sizeCalc.heightScale,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWithAsterisk(text: label),
          SizedBox(
            height: 11 * sizeCalc.heightScale,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text ?? '',
                style: Theme.of(context).primaryTextTheme.bodyText2!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 8.0 * sizeCalc.widthScale),
                child: SvgPicture.asset(iconPath,
                  height: 20 * sizeCalc.heightScale,
                  width: 20 * sizeCalc.widthScale, fit: BoxFit.scaleDown,),
              ),
            ],
          ),
          SizedBox(
            height: 9 * sizeCalc.heightScale,
          ),
          Divider(thickness: 1,),
          //Container(color: Color(0xFFF1F3F9),height: 2 * dSize.heightScale,),
        ],
      ),
    );
  }
}
