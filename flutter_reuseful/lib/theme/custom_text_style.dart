import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeBluegray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodyLargeGilroyRegularPrimary =>
      theme.textTheme.bodyLarge!.gilroyRegular.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargeMontserrat =>
      theme.textTheme.bodyLarge!.montserrat.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeMontserratGreen300 =>
      theme.textTheme.bodyLarge!.montserrat.copyWith(
        color: appTheme.green300,
        fontSize: 16.fSize,
      );
  static get bodyLargePoppinsPrimary =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get bodyLargeRobotoPrimaryContainer =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 17.fSize,
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumInterBluegray300 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.blueGray300,
        fontSize: 14.fSize,
      );
  static get bodyMediumMontserratGray100 =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: appTheme.gray100,
        fontSize: 14.fSize,
      );
  static get bodyMediumMontserratGray900 =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: appTheme.gray900,
        fontSize: 14.fSize,
      );
  static get bodyMediumPoppinsPrimary =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get bodySmallInterBluegray300 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodySmallInterGreen300 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.green300,
        fontSize: 10.fSize,
      );
  static get bodySmallMontserratBluegray300 =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodySmallMontserratff2dcc70 =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: Color(0XFF2DCC70),
      );
  static get bodySmallMontserratff80d48f =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: Color(0XFF80D48F),
        fontSize: 10.fSize,
      );
  static get bodySmallMontserratffa1a4b2 =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: Color(0XFFA1A4B2),
      );
  static get bodySmallMyanmarKhyayOnPrimaryContainer =>
      theme.textTheme.bodySmall!.myanmarKhyay.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodySmallPoppinsBluegray400 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallPoppinsBluegray400Light =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w300,
      );
  // Headline text style
  static get headlineLargeMontserrat =>
      theme.textTheme.headlineLarge!.montserrat.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeOnPrimaryContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 32.fSize,
      );
  static get headlineLargeTimesNewRomanOnPrimaryContainer =>
      theme.textTheme.headlineLarge!.timesNewRoman.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get headlineLargeWhiteA700 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get headlineSmallMontserrat =>
      theme.textTheme.headlineSmall!.montserrat.copyWith(
        fontSize: 25.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallMontserratBluegray300 =>
      theme.textTheme.headlineSmall!.montserrat.copyWith(
        color: appTheme.blueGray300,
        fontSize: 25.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallMontserratPrimary =>
      theme.textTheme.headlineSmall!.montserrat.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 25.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallMontserratWhiteA700 =>
      theme.textTheme.headlineSmall!.montserrat.copyWith(
        color: appTheme.whiteA700.withOpacity(0.29),
        fontSize: 25.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallMyanmarSansProBluegray500 =>
      theme.textTheme.headlineSmall!.myanmarSansPro.copyWith(
        color: appTheme.blueGray500,
      );
  static get headlineSmallOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  // Label text style
  static get labelLargeBluegray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 13.fSize,
      );
  static get labelLargeGilroy => theme.textTheme.labelLarge!.gilroy.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGilroyWhiteA700 =>
      theme.textTheme.labelLarge!.gilroy.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGilroyWhiteA700Bold =>
      theme.textTheme.labelLarge!.gilroy.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGreen600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.green600,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w900,
      );
  static get labelLargeRed400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red400,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Title text style
  static get titleLargeInterGray100 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.gray100,
        fontSize: 22.fSize,
      );
  static get titleLargeInterGray100Medium =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.gray100,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeInterOnPrimaryContainer =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleLargeInterOnPrimaryContainerSemiBold =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleLargeInterOnPrimaryContainer_1 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleLargeInterPrimary =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeMontserratPrimary =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeMontserratSecondaryContainer =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePoppinsPrimary =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGilroyPrimary =>
      theme.textTheme.titleSmall!.gilroy.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get myanmarSansPro {
    return copyWith(
      fontFamily: 'Myanmar Sans Pro',
    );
  }

  TextStyle get timesNewRoman {
    return copyWith(
      fontFamily: 'Times New Roman',
    );
  }

  TextStyle get gilroyRegular {
    return copyWith(
      fontFamily: 'Gilroy-Regular ☞',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get myanmarKhyay {
    return copyWith(
      fontFamily: 'Myanmar Khyay',
    );
  }

  TextStyle get gilroy {
    return copyWith(
      fontFamily: 'Gilroy ☞',
    );
  }
}
