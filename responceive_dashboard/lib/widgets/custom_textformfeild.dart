import 'package:flutter/material.dart';
import 'package:responceive_dashboard/utils/app_styles.dart';

class CustomTextFormfiled extends StatelessWidget {
  final String hint;
  const CustomTextFormfiled({
    super.key,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: const Color(0xffF1F1F1),
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffF1F1F1),
            width: 0,
          ),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        hintText: hint,
        hintStyle: AppStyles.font16Regularcolordarkblue
            .copyWith(color: const Color(0xffAAAAAA)),
      ),
    );
  }
}
