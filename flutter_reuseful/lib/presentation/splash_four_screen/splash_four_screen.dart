import 'package:flutter/material.dart';
import 'package:sol_chall_reuseful/core/app_export.dart';
import 'package:sol_chall_reuseful/widgets/custom_elevated_button.dart';
import 'bloc/splash_four_bloc.dart';
import 'models/splash_four_model.dart';

class SplashFourScreen extends StatelessWidget {
  const SplashFourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashFourBloc>(
      create: (context) => SplashFourBloc(SplashFourState(
        splashFourModelObj: SplashFourModel(),
      ))
        ..add(SplashFourInitialEvent()),
      child: SplashFourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashFourBloc, SplashFourState>(
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
                        imagePath: ImageConstant.imgImage5,
                        height: 508.v,
                        width: 430.h,
                        alignment: Alignment.topCenter,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 37.h,
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
                              SizedBox(height: 76.v),
                              SizedBox(
                                width: 350.h,
                                child: Text(
                                  "msg_let_s_make_recycling".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style:
                                      theme.textTheme.displayMedium!.copyWith(
                                    height: 1.10,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.v),
                              Container(
                                width: 282.h,
                                margin: EdgeInsets.only(
                                  left: 36.h,
                                  right: 35.h,
                                ),
                                child: Text(
                                  "msg_join_us_in_helping".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles
                                      .bodyLargeMontserratGreen300
                                      .copyWith(
                                    height: 1.65,
                                  ),
                                ),
                              ),
                              SizedBox(height: 48.v),
                              CustomElevatedButton(
                                text: "lbl_get_started".tr,
                                margin: EdgeInsets.only(
                                  left: 33.h,
                                  right: 32.h,
                                ),
                                buttonStyle: CustomButtonStyles.fillPrimaryTL11,
                                buttonTextStyle: CustomTextStyles
                                    .headlineSmallMontserratWhiteA700,
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
