import 'package:flutter/material.dart';
import 'package:sol_chall_reuseful_v4/core/app_export.dart';
import 'package:sol_chall_reuseful_v4/widgets/custom_elevated_button.dart';
import 'package:sol_chall_reuseful_v4/widgets/custom_rating_bar.dart';
import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => ProfileBloc(ProfileState(
        profileModelObj: ProfileModel(),
      ))
        ..add(ProfileInitialEvent()),
      child: ProfileScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 154.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 170.v),
                        padding: EdgeInsets.symmetric(horizontal: 25.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildCircleImageSection(context),
                            SizedBox(height: 25.v),
                            _buildButtonSection(context),
                            SizedBox(height: 23.v),
                            Padding(
                              padding: EdgeInsets.only(left: 86.h),
                              child: Text(
                                "msg_designated_stop".tr,
                                style: CustomTextStyles.titleSmallGilroyPrimary,
                              ),
                            ),
                            SizedBox(height: 22.v),
                            Padding(
                              padding: EdgeInsets.only(left: 82.h),
                              child: Row(
                                children: [
                                  Container(
                                    height: 55.v,
                                    width: 8.h,
                                    margin: EdgeInsets.only(
                                      top: 3.v,
                                      bottom: 4.v,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                            height: 7.v,
                                            width: 8.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                4.h,
                                              ),
                                              border: Border.all(
                                                color: appTheme.amberA400,
                                                width: 1.h,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            height: 7.v,
                                            width: 8.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                4.h,
                                              ),
                                              border: Border.all(
                                                color: appTheme.amberA400,
                                                width: 1.h,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            height: 7.v,
                                            width: 8.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                4.h,
                                              ),
                                              border: Border.all(
                                                color: appTheme.amberA400,
                                                width: 1.h,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: SizedBox(
                                            height: 25.v,
                                            child: VerticalDivider(
                                              width: 1.h,
                                              thickness: 1.v,
                                              color: appTheme.amberA400,
                                              indent: 6.h,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: SizedBox(
                                            height: 25.v,
                                            child: VerticalDivider(
                                              width: 1.h,
                                              thickness: 1.v,
                                              color: appTheme.amberA400,
                                              endIndent: 6.h,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 21.h),
                                    child: _buildColumnSection(
                                      context,
                                      addressText1: "msg_20_kado_street".tr,
                                      addressText2: "msg_20_kado_street".tr,
                                      addressText3: "msg_20_kado_street".tr,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 34.v),
                            _buildCircleImageSection1(context),
                            SizedBox(height: 25.v),
                            _buildButtonSection1(context),
                            SizedBox(height: 23.v),
                            Padding(
                              padding: EdgeInsets.only(left: 84.h),
                              child: Text(
                                "msg_designated_stop".tr,
                                style: CustomTextStyles.titleSmallGilroyPrimary,
                              ),
                            ),
                            SizedBox(height: 22.v),
                            Padding(
                              padding: EdgeInsets.only(left: 80.h),
                              child: Row(
                                children: [
                                  Container(
                                    height: 55.v,
                                    width: 8.h,
                                    margin: EdgeInsets.only(
                                      top: 3.v,
                                      bottom: 4.v,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                            height: 7.v,
                                            width: 8.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                4.h,
                                              ),
                                              border: Border.all(
                                                color: appTheme.amberA400,
                                                width: 1.h,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            height: 7.v,
                                            width: 8.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                4.h,
                                              ),
                                              border: Border.all(
                                                color: appTheme.amberA400,
                                                width: 1.h,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            height: 7.v,
                                            width: 8.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                4.h,
                                              ),
                                              border: Border.all(
                                                color: appTheme.amberA400,
                                                width: 1.h,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: SizedBox(
                                            height: 25.v,
                                            child: VerticalDivider(
                                              width: 1.h,
                                              thickness: 1.v,
                                              color: appTheme.amberA400,
                                              indent: 6.h,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: SizedBox(
                                            height: 25.v,
                                            child: VerticalDivider(
                                              width: 1.h,
                                              thickness: 1.v,
                                              color: appTheme.amberA400,
                                              endIndent: 6.h,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 21.h),
                                    child: _buildColumnSection(
                                      context,
                                      addressText1: "msg_20_kado_street".tr,
                                      addressText2: "msg_20_kado_street".tr,
                                      addressText3: "msg_20_kado_street".tr,
                                    ),
                                  ),
                                ],
                              ),
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

  /// Section Widget
  Widget _buildCircleImageSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 20.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse6,
                height: 56.v,
                width: 67.h,
                radius: BorderRadius.circular(
                  33.h,
                ),
              ),
              SizedBox(height: 7.v),
              Padding(
                padding: EdgeInsets.only(right: 6.h),
                child: Text(
                  "lbl_alan_sanusi".tr,
                  style: CustomTextStyles.labelLargeWhiteA700_1,
                ),
              ),
              SizedBox(height: 11.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomRatingBar(
                    initialRating: 3,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorWhiteA700,
                    height: 13.v,
                    width: 17.h,
                    margin: EdgeInsets.only(left: 5.h),
                  ),
                ],
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVectorWhiteA700,
            height: 13.v,
            width: 17.h,
            margin: EdgeInsets.only(
              left: 3.h,
              top: 90.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 4.v,
              bottom: 11.v,
            ),
            child: _buildTelevision(
              context,
              distanceText: "lbl_4_5km".tr,
              timeText: "lbl_00h_25m".tr,
              addressText1: "msg_20_kado_street".tr,
              addressText2: "msg_20_kado_street".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReject(BuildContext context) {
    return CustomElevatedButton(
      width: 110.h,
      text: "lbl_reject".tr,
      margin: EdgeInsets.only(
        top: 3.v,
        bottom: 2.v,
      ),
      buttonStyle: CustomButtonStyles.fillOnPrimary,
      buttonTextStyle: CustomTextStyles.labelLargeWhiteA700,
    );
  }

  /// Section Widget
  Widget _buildAccept(BuildContext context) {
    return CustomElevatedButton(
      width: 110.h,
      text: "lbl_accept".tr,
      margin: EdgeInsets.only(
        top: 3.v,
        bottom: 1.v,
      ),
      buttonStyle: CustomButtonStyles.fillPrimaryTL5,
      buttonTextStyle: theme.textTheme.labelLarge!,
    );
  }

  /// Section Widget
  Widget _buildButtonSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.h,
        right: 30.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildReject(context),
          CustomImageView(
            imagePath: ImageConstant.imgClock,
            height: 38.v,
            width: 45.h,
          ),
          _buildAccept(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCircleImageSection1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse6,
                height: 56.v,
                width: 67.h,
                radius: BorderRadius.circular(
                  33.h,
                ),
              ),
              SizedBox(height: 7.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Text(
                    "lbl_alan_sanusi".tr,
                    style: CustomTextStyles.labelLargeWhiteA700_1,
                  ),
                ),
              ),
              SizedBox(height: 11.v),
              SizedBox(
                width: 108.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomRatingBar(
                      initialRating: 3,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorWhiteA700,
                      height: 13.v,
                      width: 17.h,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorWhiteA700,
                      height: 13.v,
                      width: 17.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 11.v,
            ),
            child: _buildTelevision(
              context,
              distanceText: "lbl_4_5km".tr,
              timeText: "lbl_00h_25m".tr,
              addressText1: "msg_20_kado_street".tr,
              addressText2: "msg_20_kado_street".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReject1(BuildContext context) {
    return CustomElevatedButton(
      width: 110.h,
      text: "lbl_reject".tr,
      margin: EdgeInsets.only(
        top: 3.v,
        bottom: 2.v,
      ),
      buttonStyle: CustomButtonStyles.fillOnPrimary,
      buttonTextStyle: CustomTextStyles.labelLargeWhiteA700,
    );
  }

  /// Section Widget
  Widget _buildAccept1(BuildContext context) {
    return CustomElevatedButton(
      width: 110.h,
      text: "lbl_accept".tr,
      margin: EdgeInsets.only(
        top: 3.v,
        bottom: 1.v,
      ),
      buttonStyle: CustomButtonStyles.fillPrimaryTL5,
      buttonTextStyle: theme.textTheme.labelLarge!,
    );
  }

  /// Section Widget
  Widget _buildButtonSection1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 32.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildReject1(context),
          CustomImageView(
            imagePath: ImageConstant.imgClock,
            height: 38.v,
            width: 45.h,
          ),
          _buildAccept1(context),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTelevision(
    BuildContext context, {
    required String distanceText,
    required String timeText,
    required String addressText1,
    required String addressText2,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 224.h,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgTelevision,
                height: 13.v,
                width: 51.h,
                margin: EdgeInsets.only(
                  top: 5.v,
                  bottom: 4.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  distanceText,
                  style:
                      CustomTextStyles.bodyLargeGilroyRegularPrimary.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
              ),
              Spacer(),
              Text(
                timeText,
                style: CustomTextStyles.bodyLargeGilroyRegularPrimary.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.v),
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgLinkedin,
              height: 16.v,
              width: 14.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Text(
                addressText1,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 11.v),
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgLinkedin,
              height: 16.v,
              width: 14.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Text(
                addressText2,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildColumnSection(
    BuildContext context, {
    required String addressText1,
    required String addressText2,
    required String addressText3,
  }) {
    return Column(
      children: [
        Text(
          addressText1,
          style: theme.textTheme.bodySmall!.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        SizedBox(height: 9.v),
        Text(
          addressText2,
          style: theme.textTheme.bodySmall!.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        SizedBox(height: 9.v),
        Text(
          addressText3,
          style: theme.textTheme.bodySmall!.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
