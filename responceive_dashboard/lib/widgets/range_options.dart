import 'package:flutter/material.dart';
import 'package:responceive_dashboard/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              side: BorderSide(
                width: 1,
                color: Color(0xFFF1F1F1),
              ))),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Text(
              'Monthly',
              style: AppStyles.font16Mediumcolordarkblue,
            ),
            const SizedBox(
              width: 8,
            ),
            Transform.rotate(
                angle: -1.5708,
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Color(0xff064061),
                ))
          ],
        ),
      ),
    );
  }
}
