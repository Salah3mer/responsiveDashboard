import 'package:flutter/material.dart';
import 'package:responceive_dashboard/widgets/quick_form_item.dart';

class QuickForm extends StatelessWidget {
  const QuickForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: QuickFormItem(
              title: 'Customer name',
              hint: 'Type Customer name',
            )),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: QuickFormItem(
              title: 'Customer Email',
              hint: 'Type Customer Email',
            )),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: QuickFormItem(
              title: 'Item name',
              hint: 'Type Item name',
            )),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: QuickFormItem(
              title: 'USD',
              hint: 'Type USD ',
            )),
          ],
        ),
      ],
    );
  }
}
