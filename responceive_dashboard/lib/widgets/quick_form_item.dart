import 'package:flutter/material.dart';
import 'package:responceive_dashboard/utils/app_styles.dart';
import 'package:responceive_dashboard/widgets/custom_textformfeild.dart';

class QuickFormItem extends StatelessWidget {
  final String title, hint;
  const QuickFormItem({
    super.key,
    required this.title,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.font16MediumColorDarkBlue(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextFormfiled(
          hint: hint,
        ),
      ],
    );
  }
}
