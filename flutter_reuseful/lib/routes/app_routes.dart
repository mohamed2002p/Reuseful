import 'package:flutter/material.dart';
import 'package:sol_chall_reuseful/presentation/about_me_screen/about_me_screen.dart';
import 'package:sol_chall_reuseful/presentation/home_screen/home_screen.dart';
import 'package:sol_chall_reuseful/presentation/profile_screen/profile_screen.dart';
import 'package:sol_chall_reuseful/presentation/recycle_one_screen/recycle_one_screen.dart';
import 'package:sol_chall_reuseful/presentation/recycle_screen/recycle_screen.dart';
import 'package:sol_chall_reuseful/presentation/redeem_one_screen/redeem_one_screen.dart';
import 'package:sol_chall_reuseful/presentation/redeemtwo_screen/redeemtwo_screen.dart';
import 'package:sol_chall_reuseful/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:sol_chall_reuseful/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:sol_chall_reuseful/presentation/sucss_screen/sucss_screen.dart';
import 'package:sol_chall_reuseful/presentation/sucss_three_screen/sucss_three_screen.dart';
import 'package:sol_chall_reuseful/presentation/sucss_two_screen/sucss_two_screen.dart';
import '../presentation/splash_one_screen/splash_one_screen.dart';
import '../presentation/splash_two_screen/splash_two_screen.dart';
import '../presentation/splash_three_screen/splash_three_screen.dart';
import '../presentation/splash_four_screen/splash_four_screen.dart';
import '../presentation/driver_or_user_screen/driver_or_user_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/sugn_in_or_sign_up_screen/sugn_in_or_sign_up_screen.dart';

class AppRoutes {
  static const String splashOneScreen = '/splash_one_screen';

  static const String splashTwoScreen = '/splash_two_screen';

  static const String splashThreeScreen = '/splash_three_screen';

  static const String splashFourScreen = '/splash_four_screen';

  static const String driverOrUserScreen = '/driver_or_user_screen';

  static const String initialRoute = '/initialRoute';
   
  static const String sugnInOrSignUpScreen = '/sugn_in_or_sign_up_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String homeScreen = '/home_screen';
   
  static const String appNavigationScreen = '/app_navigation_screen';

  static const String sucssThreeScreen = '/sucss_three_screen';

  static const String recycleOneScreen = '/recycle_one_screen';

  static const String recycleScreen = '/recycle_screen';

  static const String sucssTwoScreen = '/sucss_two_screen';

  static const String profileScreen = '/profile_screen';

  static const String aboutMeScreen = '/about_me_screen';

  static const String redeemOneScreen = '/redeem_one_screen';

  static const String redeemtwoScreen = '/redeemtwo_screen';

  static const String sucssScreen = '/sucss_screen';

  static Map<String, WidgetBuilder> get routes => {
        splashOneScreen: SplashOneScreen.builder,
        splashTwoScreen: SplashTwoScreen.builder,
        splashThreeScreen: SplashThreeScreen.builder,
        splashFourScreen: SplashFourScreen.builder,
        driverOrUserScreen: DriverOrUserScreen.builder,
        sugnInOrSignUpScreen: SugnInOrSignUpScreen.builder,
        signInScreen: SignInScreen.builder,
        signUpScreen: SignUpScreen.builder,
        homeScreen: HomeScreen.builder,
        sucssThreeScreen: SucssThreeScreen.builder,
        recycleOneScreen: RecycleOneScreen.builder,
        recycleScreen: RecycleScreen.builder,
        sucssTwoScreen: SucssTwoScreen.builder,
        profileScreen: ProfileScreen.builder,
        aboutMeScreen: AboutMeScreen.builder,
        redeemOneScreen: RedeemOneScreen.builder,
        redeemtwoScreen: RedeemtwoScreen.builder,
        sucssScreen: SucssScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashOneScreen.builder

      };
}
