import 'package:rdsh_test_task2/pages/add_task/widgets/long_button.dart';
import 'package:rdsh_test_task2/pages/size_calculator.dart';
import 'package:flutter/material.dart';

class TextWithAsterisk extends StatelessWidget {
  const TextWithAsterisk(
      {Key? key, required this.text, this.addAsterisk = true})
      : super(key: key);
  final String text;
  final bool addAsterisk;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final sizeCalc = SizeCalculator(context);

    //todo
    return FittedBox(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: text,
              style: theme.primaryTextTheme.subtitle1!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 13 * sizeCalc.heightScale //todo
                  ),
            ),
            if (addAsterisk)
              TextSpan(
                text: "*",
                style: theme.primaryTextTheme.subtitle1!.copyWith(
                      color: Colors.red,
                    ),
              ),
          ],
        ),
      ),
    );
  }
}
