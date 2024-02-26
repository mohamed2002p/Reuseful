import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sol_chall_reuseful/core/app_export.dart';
import 'package:sol_chall_reuseful/widgets/custom_elevated_button.dart';
import 'bloc/splash_two_bloc.dart';
import 'models/splash_two_model.dart';

class SplashTwoScreen extends StatelessWidget {
  const SplashTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashTwoBloc>(
      create: (context) => SplashTwoBloc(SplashTwoState(
        splashTwoModelObj: SplashTwoModel(),
      ))
        ..add(SplashTwoInitialEvent()),
      child: SplashTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashTwoBloc, SplashTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: SizedBox(
                  height: 912.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage2,
                        height: 539.v,
                        width: 430.h,
                        alignment: Alignment.topCenter,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 14.v),
                          padding: EdgeInsets.symmetric(
                            horizontal: 28.h,
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
                              SizedBox(height: 27.v),
                              SizedBox(
                                width: 208.h,
                                child: Text(
                                  "msg_what_s_reuseful".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style:
                                      theme.textTheme.displayMedium!.copyWith(
                                    height: 1.10,
                                  ),
                                ),
                              ),
                              SizedBox(height: 13.v),
                              SizedBox(
                                width: 372.h,
                                child: Text(
                                  "msg_this_is_an_app_developed".tr,
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
                              SizedBox(height: 28.v),
                              CustomElevatedButton(
                                width: 245.h,
                                text: "lbl_next".tr,
                                rightIcon: Container(
                                  margin: EdgeInsets.only(left: 9.h),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgArrowright,
                                    height: 18.v,
                                    width: 19.h,
                                  ),
                                ),
                                buttonStyle: CustomButtonStyles.fillPrimaryTL11,
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
