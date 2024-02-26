import 'package:flutter/material.dart';
import 'package:sol_chall_reuseful/core/app_export.dart';
import 'package:sol_chall_reuseful/core/utils/validation_functions.dart';
import 'package:sol_chall_reuseful/widgets/app_bar/appbar_leading_image.dart';
import 'package:sol_chall_reuseful/widgets/app_bar/appbar_title.dart';
import 'package:sol_chall_reuseful/widgets/app_bar/custom_app_bar.dart';
import 'package:sol_chall_reuseful/widgets/custom_elevated_button.dart';
import 'package:sol_chall_reuseful/widgets/custom_text_form_field.dart';
import 'bloc/about_me_bloc.dart';
import 'models/about_me_model.dart';

class AboutMeScreen extends StatelessWidget {
  AboutMeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AboutMeBloc>(
      create: (context) => AboutMeBloc(AboutMeState(
        aboutMeModelObj: AboutMeModel(),
      ))
        ..add(AboutMeInitialEvent()),
      child: AboutMeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 25.v),
            child: Column(
              children: [
                SizedBox(height: 47.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 5.v),
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "msg_personal_details".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                          SizedBox(height: 21.v),
                          _buildPersonalDetails(context),
                          SizedBox(height: 5.v),
                          _buildEmail(context),
                          SizedBox(height: 5.v),
                          _buildValue(context),
                          SizedBox(height: 38.v),
                          Text(
                            "lbl_change_password".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                          SizedBox(height: 32.v),
                          _buildPassword(context),
                          SizedBox(height: 5.v),
                          _buildEight(context),
                          SizedBox(height: 5.v),
                          _buildConfirmPassword(context),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildSaveSettings(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 56.v,
      leadingWidth: 49.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 26.h,
          top: 19.v,
          bottom: 20.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_about_me".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildPersonalDetails(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 9.h,
        right: 7.h,
      ),
      child: BlocSelector<AboutMeBloc, AboutMeState, TextEditingController?>(
        selector: (state) => state.personalDetailsController,
        builder: (context, personalDetailsController) {
          return CustomTextFormField(
            controller: personalDetailsController,
            hintText: "lbl_lazy_laxy".tr,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(10.h, 18.v, 26.h, 18.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 62.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 9.h,
        right: 7.h,
      ),
      child: BlocSelector<AboutMeBloc, AboutMeState, TextEditingController?>(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
          return CustomTextFormField(
            controller: emailController,
            hintText: "msg_lazylaxy123_gmail_com".tr,
            textInputType: TextInputType.emailAddress,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(11.h, 22.v, 26.h, 21.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup,
                height: 18.v,
                width: 23.h,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 62.v,
            ),
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildValue(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 9.h,
        right: 7.h,
      ),
      child: BlocSelector<AboutMeBloc, AboutMeState, TextEditingController?>(
        selector: (state) => state.valueController,
        builder: (context, valueController) {
          return CustomTextFormField(
            controller: valueController,
            hintText: "lbl_65_8000_9000".tr,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(18.h, 19.v, 21.h, 20.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgTelephone1,
                height: 23.adaptSize,
                width: 23.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 62.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: BlocSelector<AboutMeBloc, AboutMeState, TextEditingController?>(
        selector: (state) => state.passwordController,
        builder: (context, passwordController) {
          return CustomTextFormField(
            controller: passwordController,
            hintText: "msg_current_password".tr,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(17.h, 18.v, 30.h, 19.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgLocation,
                height: 23.v,
                width: 17.h,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 62.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: true,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: BlocBuilder<AboutMeBloc, AboutMeState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.eightController,
            prefix: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 17.h,
                vertical: 18.v,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup5,
                height: 23.v,
                width: 17.h,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 62.v,
            ),
            suffix: InkWell(
              onTap: () {
                context.read<AboutMeBloc>().add(ChangePasswordVisibilityEvent(
                    value: !state.isShowPassword));
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 21.v,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup7,
                  height: 17.v,
                  width: 27.h,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 62.v,
            ),
            obscureText: state.isShowPassword,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: BlocSelector<AboutMeBloc, AboutMeState, TextEditingController?>(
        selector: (state) => state.confirmPasswordController,
        builder: (context, confirmPasswordController) {
          return CustomTextFormField(
            controller: confirmPasswordController,
            hintText: "msg_confirm_password".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(17.h, 18.v, 30.h, 19.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgLocation,
                height: 23.v,
                width: 17.h,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 62.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: true,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveSettings(BuildContext context) {
    return CustomElevatedButton(
      height: 60.v,
      text: "lbl_save_settings".tr,
      margin: EdgeInsets.only(
        left: 26.h,
        right: 24.h,
        bottom: 36.v,
      ),
      buttonStyle: CustomButtonStyles.outlineLightGreenAF,
      buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
    );
  }
}
