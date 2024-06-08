import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  final String image;
  final bool isActive;
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                    color: isActive
                        ? Colors.white.withOpacity(.1)
                        : const Color(0xffF1F1F1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                child: Center(
                    child: SvgPicture.asset(
                  image,
                  colorFilter: ColorFilter.mode(
                      isActive ? Colors.white : const Color(0xff4EB7F2),
                      BlendMode.srcIn),
                )),
              ),
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
        Transform.rotate(
            angle: -1.5708 * 2,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: isActive ? Colors.white : const Color(0xff064061),
            ))
      ],
    );
  }
}
