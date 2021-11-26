
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rdsh_test_task2/pages/add_task/widgets/long_button.dart';
import 'package:rdsh_test_task2/pages/size_calculator.dart';

class DialogPage extends StatelessWidget {
  const DialogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeCalc = SizeCalculator(context);
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: Center(
        child: Container(
          width: 352 * sizeCalc.widthScale,
          height: 355 * sizeCalc.heightScale,
          padding: EdgeInsets.symmetric(vertical: 30 * sizeCalc.heightScale),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25 * sizeCalc.heightScale),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(
                  bottom: 5 * sizeCalc.heightScale,
                ),
                child: SvgPicture.asset(
                  "lib/assets/icons/successfully_added.svg",
                  width: 75 * sizeCalc.widthScale,
                  height: 75 * sizeCalc.heightScale,
                ),
              ),
              Text(
                "Задание успешно добавлено",
                style: Theme.of(context).primaryTextTheme.headline5,
              ),
              Container(
                width: 300 * sizeCalc.widthScale,
                height: 40 * sizeCalc.heightScale,
                child: Text(
                  "Вы можете добавить еще задания, или поделиться проектом",
                  style: Theme.of(context).primaryTextTheme.subtitle1,
                  textAlign: TextAlign.center,
                ),
              ),
              LongButton(
                key: Key("DialogPageButtonKey"),
                text: 'Перейти к проекту',
                backgroundColor: theme.colorScheme.primary,
                textStyle: theme.primaryTextTheme.headline3!.copyWith(
                  color: Colors.white,
                ),
                onTap: () {},
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Добавить еще задание"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
