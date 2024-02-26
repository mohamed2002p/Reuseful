import 'package:flutter/material.dart';
import 'package:mohamedahmedeid2002_s_application3/core/app_export.dart';
import 'package:mohamedahmedeid2002_s_application3/widgets/custom_elevated_button.dart';
import 'bloc/sucss_two_bloc.dart';
import 'models/sucss_two_model.dart';

class SucssTwoScreen extends StatelessWidget {
  const SucssTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SucssTwoBloc>(
      create: (context) => SucssTwoBloc(SucssTwoState(
        sucssTwoModelObj: SucssTwoModel(),
      ))
        ..add(SucssTwoInitialEvent()),
      child: SucssTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SucssTwoBloc, SucssTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 63.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 204.v),
                        padding: EdgeInsets.symmetric(horizontal: 23.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgBack3,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(left: 4.h),
                            ),
                            SizedBox(height: 155.v),
                            Container(
                              height: 179.v,
                              width: 276.h,
                              margin: EdgeInsets.only(left: 4.h),
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 11.v),
                                      child: Text(
                                        "lbl_your_poinst".tr,
                                        style:
                                            CustomTextStyles.bodyLargeWhiteA700,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 27.h,
                                        top: 35.v,
                                      ),
                                      child: Text(
                                        "lbl_1000".tr,
                                        style: theme.textTheme.headlineLarge,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                      height: 179.v,
                                      width: 183.h,
                                      child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              height: 179.v,
                                              width: 183.h,
                                              decoration: BoxDecoration(
                                                color:
                                                    theme.colorScheme.primary,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  91.h,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                              height: 88.v,
                                              width: 100.h,
                                              margin:
                                                  EdgeInsets.only(top: 41.v),
                                              child: Stack(
                                                alignment:
                                                    Alignment.centerRight,
                                                children: [
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgUser,
                                                    height: 48.v,
                                                    width: 56.h,
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgSettings,
                                                    height: 88.v,
                                                    width: 70.h,
                                                    alignment:
                                                        Alignment.centerRight,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 80.v),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "lbl_successful".tr,
                                style: CustomTextStyles
                                    .headlineSmallOnPrimaryContainer,
                              ),
                            ),
                            SizedBox(height: 13.v),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "msg_you_re_already_earn".tr,
                                style: CustomTextStyles
                                    .headlineSmallOnPrimaryContainer,
                              ),
                            ),
                            SizedBox(height: 96.v),
                            CustomElevatedButton(
                              text: "msg_back_to_homepage".tr,
                              margin: EdgeInsets.only(left: 14.h),
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
