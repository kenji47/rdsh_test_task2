import 'package:rdsh_test_task2/pages/add_task/widgets/long_button.dart';
import 'package:rdsh_test_task2/pages/size_calculator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProgressAppBar extends StatelessWidget {
  final int currentStep;
  final int steps;
  final String title;
  final String? closeButtonName;
  final bool showBackButton;
  final VoidCallback? onPressedBackButton;
  final VoidCallback? onPressedClose;

  const ProgressAppBar({
    Key? key,
    required this.title,
    required this.currentStep,
    required this.steps,
    required this.showBackButton,
    this.closeButtonName,
    this.onPressedBackButton,
    this.onPressedClose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeCalc = SizeCalculator(context);
    final ThemeData theme = Theme.of(context);

    return Container(
      height: 108 * sizeCalc.heightScale,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 40,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 44 * sizeCalc.heightScale),
                FittedBox(
                  child: Text(
                    title,
                    style: theme.primaryTextTheme.headline2!.copyWith(
                        fontSize: 17 * sizeCalc.heightScale
                    ),
                  ),
                ),
                SizedBox(height: 8 * sizeCalc.heightScale),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 138 * sizeCalc.widthScale),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    child: LinearProgressIndicator(
                      backgroundColor: theme.colorScheme.background,
                      color: theme.colorScheme.primary,
                      value: 1 / steps * currentStep,
                      minHeight: 6 * sizeCalc.heightScale,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                right: 14 * sizeCalc.widthScale,
                top: 52 * sizeCalc.heightScale),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                showBackButton
                    ? IconButton(
                        onPressed: onPressedBackButton,
                        icon: Icon(
                          Icons.arrow_back,
                          color: theme.colorScheme.primary,
                        ),
                      )
                    : SizedBox(),
                showBackButton
                    ? SizedBox()
                    : TextButton(
                        onPressed: () {},
                        child: Text(
                          closeButtonName ?? '',
                          style: theme.primaryTextTheme.subtitle1!.copyWith(
                              fontSize: 13 * sizeCalc.heightScale
                          ),
                        ),
                      )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
