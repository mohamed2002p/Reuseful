import 'package:flutter/material.dart';
import 'package:sol_chall_reuseful/core/app_export.dart';
import 'package:sol_chall_reuseful/widgets/custom_elevated_button.dart';
import 'package:sol_chall_reuseful/widgets/custom_outlined_button.dart';
import 'bloc/driver_or_user_bloc.dart';
import 'models/driver_or_user_model.dart';

class DriverOrUserScreen extends StatelessWidget {
  const DriverOrUserScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<DriverOrUserBloc>(
      create: (context) => DriverOrUserBloc(DriverOrUserState(
        driverOrUserModelObj: DriverOrUserModel(),
      ))
        ..add(DriverOrUserInitialEvent()),
      child: DriverOrUserScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DriverOrUserBloc, DriverOrUserState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: SizeUtils.width,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 5.v),
                  child: Column(
                    children: [
                      Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 87.v,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.imgImage11,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgReusefuleHigh,
                          height: 223.v,
                          width: 358.h,
                        ),
                      ),
                      SizedBox(height: 59.v),
                      CustomElevatedButton(
                        text: "lbl_driver".tr,
                        margin: EdgeInsets.only(
                          left: 28.h,
                          right: 27.h,
                        ),
                        buttonStyle: CustomButtonStyles.fillPrimaryTL31,
                        buttonTextStyle:
                            CustomTextStyles.titleLargeInterGray100Medium,
                      ),
                      SizedBox(height: 15.v),
                      CustomOutlinedButton(
                        text: "lbl_user".tr,
                        margin: EdgeInsets.only(
                          left: 28.h,
                          right: 27.h,
                        ),
                        buttonTextStyle:
                            CustomTextStyles.titleLargeInterPrimary,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            bottomNavigationBar: _buildTermsOfService(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTermsOfService(BuildContext context) {
    return Container(
      height: 25.v,
      width: 245.h,
      margin: EdgeInsets.only(
        left: 92.h,
        right: 92.h,
        bottom: 32.v,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 245.h,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_by_logging_in_or2".tr,
                      style: CustomTextStyles.bodySmallMontserratff80d48f,
                    ),
                    TextSpan(
                      text: "msg_terms_of_service".tr,
                      style: theme.textTheme.labelMedium,
                    ),
                    TextSpan(
                      text: "lbl_and".tr,
                      style: CustomTextStyles.bodySmallMontserratff80d48f,
                    ),
                    TextSpan(
                      text: "lbl_privacy_policy".tr,
                      style: theme.textTheme.labelMedium,
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.fromLTRB(21.h, 10.v, 21.h, 1.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "msg_terms_of_service".tr,
                    style: CustomTextStyles.labelMediumPrimary,
                  ),
                  Text(
                    "lbl_privacy_policy".tr,
                    style: CustomTextStyles.labelMediumPrimary,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
