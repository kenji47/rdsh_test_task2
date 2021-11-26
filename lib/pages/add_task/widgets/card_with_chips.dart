import 'package:rdsh_test_task2/pages/add_task/widgets/long_button.dart';
import 'package:rdsh_test_task2/pages/size_calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardWithChips extends StatelessWidget {
  const CardWithChips(
      {Key? key,
      required this.title,
      required this.mainImagePath,
      required this.chips})
      : super(key: key);

  final String title;
  final String mainImagePath;
  final List<Widget> chips;

  @override
  Widget build(BuildContext context) {
    final sizeCalc = SizeCalculator(context);
    final ThemeData theme = Theme.of(context);

    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 136 * sizeCalc.heightScale,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    12 * sizeCalc.heightScale,
                  ),
                  child: Image.asset(
                    "lib/assets/images/cybersport_picture.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 15 * sizeCalc.widthScale,
                bottom: 18 * sizeCalc.heightScale,
                child: Row(
                  children: chips
                      .expand((element) => [
                            element,
                            SizedBox(
                              width: 3 * sizeCalc.widthScale,
                            ),
                          ])
                      .toList() as List<Widget>,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10 * sizeCalc.heightScale,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              //color: Colors.blue,
              height: 40 * sizeCalc.heightScale,
              width: 280 * sizeCalc.widthScale,
              child: Text(
                title,
                style: theme.primaryTextTheme.headline3!.copyWith(
                  fontSize: 16 * sizeCalc.heightScale,
                ),
                maxLines: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
