
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rdsh_test_task2/pages/add_task/widgets/long_button.dart';
import 'package:rdsh_test_task2/pages/size_calculator.dart';

class DialogAdd extends StatelessWidget {
  const DialogAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeCalc = SizeCalculator(context);
    final ThemeData theme = Theme.of(context);

    return Dialog(
      insetPadding: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Container(
        width: 352 * sizeCalc.widthScale,
        height: 355 * sizeCalc.heightScale,
        padding: EdgeInsets.only(
          top: 30 * sizeCalc.heightScale,
          bottom: 15 * sizeCalc.heightScale,
          left: 24 * sizeCalc.widthScale,
          right: 24 * sizeCalc.widthScale,
        ),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 75 * sizeCalc.widthScale,
              height: 75 * sizeCalc.heightScale,
              child: Center(
                child: SvgPicture.asset('lib/assets/icons/successfully_added.svg',),
              ),
            ),
            SizedBox(
              height: 25 * sizeCalc.heightScale,
            ),
            Container(
              width: 285 * sizeCalc.widthScale,
              height: 24 * sizeCalc.heightScale,
              child: FittedBox(
                child: Text('Задание успешно добавлено',
                    maxLines: 1, style: theme.primaryTextTheme.headline1),
              ),
            ),
            SizedBox(
              height: 20 * sizeCalc.heightScale,
            ),
            Container(
              width: 300 * sizeCalc.widthScale,
              height: 40 * sizeCalc.heightScale,
              child: FittedBox(
                child: Text('Вы можете добавить еще задания, или\n поделиться проектом',
                    textAlign: TextAlign.center,
                    style: theme.primaryTextTheme.subtitle2),
              ),
            ),
            SizedBox(
              height: 20 * sizeCalc.heightScale,
            ),
            LongButton(
              text: 'Перейти к проекту',
              backgroundColor: theme.colorScheme.primary,
              textStyle: theme.primaryTextTheme.headline3!.copyWith(
                fontSize: 16 * sizeCalc.heightScale,
                color: Colors.white,
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 20 * sizeCalc.heightScale,
            ),
            Container(
              height: 20 * sizeCalc.heightScale,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Text('Добавить еще задание',
                    style: theme.primaryTextTheme.button),
              ),
            )
          ],
        ),
      ),
    );
  }
}
