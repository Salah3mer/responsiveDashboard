import 'package:flutter/material.dart';
import 'package:responceive_dashboard/utils/app_styles.dart';
import 'package:responceive_dashboard/widgets/container_decration.dart';
import 'package:responceive_dashboard/widgets/my_card_pageView.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Card',
          style: AppStyles.font20SemiBoldColorDarkBlue(context),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardPageview(
          pageController: pageController,
        ),
        const SizedBox(
          height: 20,
        ),
        SmoothPageIndicator(
          axisDirection: Axis.horizontal,
          controller: pageController,
          count: 3,
          effect: const ExpandingDotsEffect(
            dotHeight: 10,
            dotWidth: 13,
            activeDotColor: Colors.blue,
            dotColor: Color(0xffE8E8E8),
            spacing: 8.0,
          ),
        )
      ],
    );
  }
}
