import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responceive_dashboard/widgets/my_card.dart';

class MyCardPageview extends StatelessWidget {
  final PageController pageController;
  const MyCardPageview({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(
          3,
          (index) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 3),
                child: MyCard(),
              )),
    );
  }
}
