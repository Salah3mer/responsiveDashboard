import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responceive_dashboard/utils/app_images.dart';
import 'package:responceive_dashboard/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 420 / 215,
        child: Container(
          decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              color: Color(0xFF4EB7F2),
              image: DecorationImage(
                image: AssetImage(AppImages.imagesCardBackground),
                fit: BoxFit.cover,
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding:
                    const EdgeInsets.only(left: 31, right: 42, top: 16),
                title: Text(
                  'Name card',
                  style: AppStyles.font16Regularcolordarkblue(context)
                      .copyWith(color: Colors.white),
                ),
                subtitle: Text('Syah Bandi',
                    style: AppStyles.font20MediumColorWhite(context)),
                trailing: SvgPicture.asset(AppImages.imagesGallery),
              ),
              const Expanded(child: SizedBox()),
              Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Padding(
                  padding: const EdgeInsets.only(right: 48 - 24),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('0918 8124 0042 8129',
                            style: AppStyles.font24SemiBoldColorWhite(context)),
                        Text(
                          '12/20 - 124',
                          style: AppStyles.font16Regularcolordarkblue(context)
                              .copyWith(color: Colors.white),
                        ),
                      ]),
                ),
              ]),
              const Flexible(child: SizedBox(height: 24))
            ],
          ),
        ));
  }
}
