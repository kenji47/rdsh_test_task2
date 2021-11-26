import 'package:rdsh_test_task2/pages/add_task/widgets/long_button.dart';
import 'package:rdsh_test_task2/pages/size_calculator.dart';
import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  const LongButton({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.backgroundColor,
    this.showShadow = true,
    this.onTap,
  }) : super(key: key);

  final String text;
  final Color backgroundColor;
  final TextStyle textStyle;
  final VoidCallback? onTap;
  final showShadow;

  @override
  Widget build(BuildContext context) {
    final sizeCalc = SizeCalculator(context);
    final ThemeData theme = Theme.of(context);

    return Container(
      height: 50 * sizeCalc.heightScale,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withOpacity(showShadow ? 0.2 : 0.0),
            blurRadius: 20,
            offset: Offset(0, 10),
          ),
        ],
        color: backgroundColor,
        border: Border.all(
          color: theme.colorScheme.primary,
        ),
        borderRadius: BorderRadius.circular(
          16 * sizeCalc.heightScale,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
