
import 'package:flutter/material.dart';
import 'package:rdsh_test_task2/pages/add_task/widgets/long_button.dart';
import 'package:rdsh_test_task2/pages/size_calculator.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key, required this.onTap}) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final sizeCalc = SizeCalculator(context);
    final ThemeData theme = Theme.of(context);

    return Container(
      height: 88 * sizeCalc.heightScale,
      padding: EdgeInsets.only(
        left: 12 * sizeCalc.widthScale,
        right: 11 * sizeCalc.widthScale,
        top: 10 * sizeCalc.heightScale,
        bottom: 28 * sizeCalc.heightScale,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 4,
              blurRadius: 32,
              offset: Offset(0, 0))
        ],
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(15), topLeft: Radius.circular(15)),
      ),
      child: LongButton(
        text: 'Продолжить',
        backgroundColor: theme.colorScheme.primary,
        textStyle: theme.primaryTextTheme.headline3!.copyWith(
          color: Colors.white,
        ),
        onTap: onTap,
      ),
    );
  }
}
