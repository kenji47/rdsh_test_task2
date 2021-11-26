import 'package:rdsh_test_task2/pages/add_task/widgets/long_button.dart';
import 'package:rdsh_test_task2/pages/add_task/widgets/text_with_asterisk.dart';
import 'package:rdsh_test_task2/pages/size_calculator.dart';
import 'package:flutter/material.dart';

class LabeledInput extends StatelessWidget {
  const LabeledInput({Key? key, required this.text, this.addAsterisk = true})
      : super(key: key);

  final String text;
  final bool addAsterisk;

  @override
  Widget build(BuildContext context) {
    final sizeCalc = SizeCalculator(context);

    return Container(
      height: 82 * sizeCalc.heightScale,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWithAsterisk(text: text, addAsterisk: addAsterisk,),
          TextField(),
        ],
      ),
    );
  }
}
