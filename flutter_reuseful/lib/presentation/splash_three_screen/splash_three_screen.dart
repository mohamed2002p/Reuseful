import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sol_chall_reuseful/core/app_export.dart';
import 'package:sol_chall_reuseful/widgets/custom_elevated_button.dart';
import 'package:sol_chall_reuseful/widgets/custom_outlined_button.dart';
import 'bloc/splash_three_bloc.dart';
import 'models/splash_three_model.dart';

class SplashThreeScreen extends StatelessWidget {
  const SplashThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashThreeBloc>(
      create: (context) => SplashThreeBloc(SplashThreeState(
        splashThreeModelObj: SplashThreeModel(),
      ))
        ..add(SplashThreeInitialEvent()),
      child: SplashThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashThreeBloc, SplashThreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: SizedBox(
                  height: 898.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage3,
                        height: 514.v,
                        width: 430.h,
                        alignment: Alignment.topCenter,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 68.h,
                            vertical: 74.v,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgGroup33,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 38.v),
                              SizedBox(
                                height: 10.v,
                                child: AnimatedSmoothIndicator(
                                  activeIndex: 0,
                                  count: 3,
                                  effect: ScrollingDotsEffect(
                                    spacing: 5.81,
                                    activeDotColor:
                                        theme.colorScheme.secondaryContainer,
                                    dotColor: appTheme.blueGray100,
                                    dotHeight: 10.v,
                                    dotWidth: 10.h,
                                  ),
                                ),
                              ),
                              SizedBox(height: 49.v),
                              Text(
                                "lbl_earn_points".tr,
                                style: theme.textTheme.displayMedium,
                              ),
                              SizedBox(height: 40.v),
                              SizedBox(
                                width: 292.h,
                                child: Text(
                                  "msg_complete_daily_and".tr,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles
                                      .bodyLargeMontserratGreen300
                                      .copyWith(
                                    height: 1.65,
                                  ),
                                ),
                              ),
                              SizedBox(height: 27.v),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: CustomOutlinedButton(
                                      text: "lbl_back".tr,
                                      margin: EdgeInsets.only(right: 7.h),
                                      buttonStyle:
                                          CustomButtonStyles.outlineBlueGray,
                                    ),
                                  ),
                                  Expanded(
                                    child: CustomElevatedButton(
                                      text: "lbl_next".tr,
                                      margin: EdgeInsets.only(left: 7.h),
                                      buttonStyle:
                                          CustomButtonStyles.fillPrimaryTL11,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
