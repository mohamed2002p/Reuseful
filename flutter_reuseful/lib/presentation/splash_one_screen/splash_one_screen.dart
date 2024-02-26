import 'package:flutter/material.dart';
import 'package:sol_chall_reuseful/core/app_export.dart';
import 'package:sol_chall_reuseful/widgets/custom_elevated_button.dart';
import 'bloc/splash_one_bloc.dart';
import 'models/splash_one_model.dart';

class SplashOneScreen extends StatelessWidget {
  const SplashOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashOneBloc>(
      create: (context) => SplashOneBloc(SplashOneState(
        splashOneModelObj: SplashOneModel(),
      ))
        ..add(SplashOneInitialEvent()),
      child: SplashOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashOneBloc, SplashOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 240.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 127.v),
                        padding: EdgeInsets.symmetric(horizontal: 13.h),
                        child: Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgReusefuleHigh,
                              height: 223.v,
                              width: 358.h,
                              alignment: Alignment.centerRight,
                            ),
                            SizedBox(height: 239.v),
                            CustomElevatedButton(
                              text: "lbl_get_started".tr,
                              margin: EdgeInsets.only(
                                left: 58.h,
                                right: 57.h,
                              ),
                              buttonStyle: CustomButtonStyles.fillWhiteA,
                              buttonTextStyle: CustomTextStyles
                                  .headlineSmallMontserratPrimary,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
