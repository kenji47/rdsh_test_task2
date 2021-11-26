
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rdsh_test_task2/pages/add_task/widgets/bottom_button.dart';
import 'package:rdsh_test_task2/pages/add_task/widgets/card_with_chips.dart';
import 'package:rdsh_test_task2/pages/add_task/widgets/custom_chip.dart';
import 'package:rdsh_test_task2/pages/add_task/widgets/input_with_icon.dart';
import 'package:rdsh_test_task2/pages/add_task/widgets/labeled_input.dart';
import 'package:rdsh_test_task2/pages/add_task/widgets/progress_app_bar.dart';
import 'package:rdsh_test_task2/pages/size_calculator.dart';

class Step1Page extends StatelessWidget {
  const Step1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeCalc = SizeCalculator(context);
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ProgressAppBar(
            title: 'Добавление задания',
            currentStep: 1,
            steps: 3,
            closeButtonName: 'Закрыть',
            showBackButton: false,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 26 * sizeCalc.heightScale,
                  ),
                  Container(
                    height: 198 * sizeCalc.heightScale,
                    color: theme.cardColor,
                    padding: EdgeInsets.only(
                      left: 20 * sizeCalc.widthScale,
                      right: 20 * sizeCalc.widthScale,
                      bottom: 12 * sizeCalc.heightScale,
                    ),
                    child: CardWithChips(
                      title: 'Всероссийская киберспортивная школьная лига',
                      mainImagePath:
                          'lib/assets/images/cybersport_`picture.png',
                      chips: [
                        CustomChip(text: '29.10.20–18.01.21'),
                        CustomChip(
                          text: '25',
                          iconPath: 'lib/assets/icons/people.svg',
                        ),
                        CustomChip(
                          text: '231',
                          iconPath: 'lib/assets/icons/lightning.svg',
                          bigIcon: true,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30 * sizeCalc.heightScale,
                  ),
                  Container(
                    //color: Colors.green,
                    padding: EdgeInsets.symmetric(
                        horizontal: 12 * sizeCalc.widthScale),
                    height: 270 * sizeCalc.heightScale,
                    child: Column(
                      children: [
                        LabeledInput(text: 'Название задания'),
                        InputWithIcon(
                          label: 'Даты проведения',
                          iconPath: 'lib/assets/icons/calendar.svg',
                          text: "ДД . ММ . ГГ   —  ДД . ММ . ГГ",
                        ),
                        LabeledInput(text: 'Количество баллов'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 92 * sizeCalc.heightScale,
                  ),
                ],
              ),
            ),
          ),

          //bottom button
          BottomButton(onTap: () => Navigator.pushNamed(context, '/step2')),
        ],
      ),
    );
  }
}
