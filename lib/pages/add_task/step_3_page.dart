
import 'package:flutter/material.dart';
import 'package:rdsh_test_task2/pages/add_task/dialog_add.dart';
import 'package:rdsh_test_task2/pages/add_task/widgets/bottom_button.dart';
import 'package:rdsh_test_task2/pages/add_task/widgets/labeled_input.dart';
import 'package:rdsh_test_task2/pages/add_task/widgets/long_button.dart';
import 'package:rdsh_test_task2/pages/add_task/widgets/progress_app_bar.dart';
import 'package:rdsh_test_task2/pages/size_calculator.dart';


class Step3Page extends StatelessWidget {
  const Step3Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeCalc = SizeCalculator(context);
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ProgressAppBar(
            title: 'Вспомогательные материалы',
            currentStep: 3,
            steps: 3,
            showBackButton: true,
            onPressedBackButton: () => Navigator.pop(context),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 26 * sizeCalc.heightScale,
                  ),
                  Container(
                    //color: Colors.red,
                    height: 152 * sizeCalc.heightScale,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                        horizontal: 12 * sizeCalc.widthScale),
                    child: Column(
                      children: [
                        LabeledInput(
                            text: 'Вставьте ссылку', addAsterisk: false),
                        SizedBox(
                          height: 20 * sizeCalc.heightScale,
                        ),
                        LongButton(
                          text: 'Добавить файлы',
                          backgroundColor: Colors.white,
                          textStyle:
                              theme.primaryTextTheme.headline3!.copyWith(
                            color: theme.colorScheme.primary,
                          ),
                          showShadow: false,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(onTap: () => showDialog(context: context, builder: (_) => DialogAdd())),
        ],
      ),
    );
  }
}
