import 'package:flutter/material.dart';
import 'package:responceive_dashboard/models/user_info_model.dart';
import 'package:responceive_dashboard/utils/app_images.dart';
import 'package:responceive_dashboard/utils/app_styles.dart';
import 'package:responceive_dashboard/widgets/container_decration.dart';
import 'package:responceive_dashboard/widgets/latest_transaction.dart';
import 'package:responceive_dashboard/widgets/qucik_form.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final item = [
      const UserInfoModel(
        image: AppImages.imagesAvatar1,
        title: 'Lekan Okeowo',
        subTitle: 'demo@gmail.com',
      ),
      const UserInfoModel(
        image: AppImages.imagesAvatar2,
        title: 'Lekan Okeowo',
        subTitle: 'demo@gmail.com',
      ),
      const UserInfoModel(
        image: AppImages.imagesAvatar3,
        title: 'Lekan Okeowo',
        subTitle: 'demo@gmail.com',
      ),
    ];
    return ContainerDecration(
      contentPadding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Quick Invoice',
                style: AppStyles.font20SemiBoldColorDarkBlue(context),
              ),
              const Expanded(child: SizedBox()),
              const Icon(
                Icons.add,
                color: Color(0xff4EB7F2),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          LatestTransaction(item: item),
          const Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          const QuickForm(),
          const SizedBox(
            height: 24,
          ),
          const Row(
            children: [
              Expanded(
                  child: CustomButton(
                name: 'Add more details',
                color: Colors.white,
              )),
              SizedBox(
                width: 24,
              ),
              Expanded(
                  child: CustomButton(
                name: 'Send Money',
              )),
            ],
          )
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String name;
  final Color? color;
  const CustomButton({
    super.key,
    required this.name,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: color ?? const Color(0xff4EB7F2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: Text(
            name,
            style: AppStyles.font18SemiBoldColorWhite(context).copyWith(
                color: color != null ? const Color(0xff4EB7F2) : Colors.white),
          )),
    );
  }
}
