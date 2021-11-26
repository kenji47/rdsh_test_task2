
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rdsh_test_task2/pages/add_task/widgets/bottom_button.dart';
import 'package:rdsh_test_task2/pages/add_task/widgets/input_with_icon.dart';
import 'package:rdsh_test_task2/pages/add_task/widgets/labeled_input.dart';
import 'package:rdsh_test_task2/pages/add_task/widgets/progress_app_bar.dart';
import 'package:rdsh_test_task2/pages/add_task/widgets/text_with_asterisk.dart';
import 'package:rdsh_test_task2/pages/size_calculator.dart';


class Step2Page extends StatelessWidget {
  const Step2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeCalc = SizeCalculator(context);
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ProgressAppBar(
            title: 'Изображения, описания и способы отчета',
            currentStep: 2,
            steps: 3,
            showBackButton: true,
            onPressedBackButton: () => Navigator.pop(context),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: [
                //app bar container
                SizedBox(
                  height: 26 * sizeCalc.heightScale,
                ),
                Container(
                  height: 476 * sizeCalc.heightScale,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                      horizontal: 12 * sizeCalc.widthScale),
                  child: Column(children: [
                    Container(
                      height: 288 * sizeCalc.heightScale,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWithAsterisk(
                            text: 'Изображение',
                          ),
                          SizedBox(
                            height: 16 * sizeCalc.heightScale,
                          ),
                          Container(
                            //color: Color(0xffF1F3F9),
                            height: 204 * sizeCalc.heightScale,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: theme.cardColor,
                              borderRadius: BorderRadius.circular(
                                  12 * sizeCalc.heightScale),
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                'lib/assets/icons/add.svg',
                                width: 42 * sizeCalc.widthScale,
                                height: 42 * sizeCalc.heightScale,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16 * sizeCalc.heightScale,
                          ),
                          FittedBox(
                            child: Text(
                              "Рекомендуем загрузить файл с соотношением сторон 3:2",
                              style: theme.primaryTextTheme.subtitle2!
                                  .copyWith(
                                color: theme.colorScheme.onBackground,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12 * sizeCalc.heightScale,
                    ),
                    LabeledInput(
                        text: 'Описание задания', addAsterisk: true),
                    SizedBox(
                      height: 12 * sizeCalc.heightScale,
                    ),
                    InputWithIcon(
                      label: 'Выбор способа отчета задания',
                      iconPath: 'lib/assets/icons/profile_arrow.svg',
                    ),
                  ]),
                ),
                SizedBox(
                  height: 114 * sizeCalc.heightScale,
                ),
              ]),
            ),
          ),
          BottomButton(onTap: () => Navigator.pushNamed(context, '/step3')),
        ],
      ),
    );
  }
}
