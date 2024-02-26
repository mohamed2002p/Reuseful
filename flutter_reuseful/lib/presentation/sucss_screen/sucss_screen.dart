import 'package:flutter/material.dart';
import 'package:sol_chall_reuseful_v4/core/app_export.dart';
import 'package:sol_chall_reuseful_v4/widgets/custom_elevated_button.dart';
import 'bloc/sucss_bloc.dart';
import 'models/sucss_model.dart';

class SucssScreen extends StatelessWidget {
  const SucssScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SucssBloc>(
      create: (context) => SucssBloc(SucssState(
        sucssModelObj: SucssModel(),
      ))
        ..add(SucssInitialEvent()),
      child: SucssScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SucssBloc, SucssState>(
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
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgBack3,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(left: 4.h),
                            ),
                            SizedBox(height: 155.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
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
                                          style: CustomTextStyles
                                              .bodyLargeWhiteA700,
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
                                          style: CustomTextStyles
                                              .headlineLargeWhiteA700,
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
                                                          .imgSettingsWhiteA700,
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
                            ),
                            SizedBox(height: 80.v),
                            Text(
                              "lbl_successful".tr,
                              style: CustomTextStyles.headlineSmallBlack900,
                            ),
                            SizedBox(height: 13.v),
                            Text(
                              "msg_you_re_already_earn".tr,
                              style: CustomTextStyles.headlineSmallBlack900,
                            ),
                            SizedBox(height: 95.v),
                            CustomElevatedButton(
                              height: 65.v,
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
