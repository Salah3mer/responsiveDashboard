import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyles {
  static TextStyle font16Regularcolordarkblue(context) =>
      GoogleFonts.montserrat(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        color: const Color(0xff064061),
        fontWeight: FontWeight.w400,
      );
  static TextStyle font16MediumColorDarkBlue(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      color: const Color(0xff064061),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle font20MediumColorWhite(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      color: const Color(0xffffffff),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle font16SemiBoldColorDarkBlue(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      color: const Color(0xff064061),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle font18SemiBoldColorWhite(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      color: const Color(0xffffffff),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle font20SemiBoldColorDarkBlue(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      color: const Color(0xff064061),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle font24SemiBoldColorWhite(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      color: const Color(0xffffffff),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle font12RegularColorDarkBlue(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      color: const Color(0xff064061),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle font14RegularColorLightGray(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      color: const Color(0xffAAAAAA),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle font12RegularColorLightGray(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      color: const Color(0xffAAAAAA),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle font16BoldColorBlue(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      color: const Color(0xff4EB7F2),
      fontWeight: FontWeight.w700,
    );
  }
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < 800) {
    return width / 550;
  } else if (width < 1200) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
