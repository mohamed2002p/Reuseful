import 'package:flutter/material.dart';
import 'package:sol_chall_reuseful/core/app_export.dart';
import 'package:sol_chall_reuseful/core/utils/validation_functions.dart';
import 'package:sol_chall_reuseful/widgets/app_bar/custom_app_bar.dart';
import 'package:sol_chall_reuseful/widgets/custom_elevated_button.dart';
import 'package:sol_chall_reuseful/widgets/custom_icon_button.dart';
import 'package:sol_chall_reuseful/widgets/custom_text_form_field.dart';
import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
        create: (context) =>
            SignUpBloc(SignUpState(signUpModelObj: SignUpModel()))
              ..add(SignUpInitialEvent()),
        child: SignUpScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 10.v),
                    child: Column(children: [
                      _buildThirtyFour(context),
                      SizedBox(height: 8.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  margin: EdgeInsets.only(bottom: 5.v),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 41.h),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 11.h),
                                            child: Text("lbl_last_name".tr,
                                                style: CustomTextStyles
                                                    .bodyLargePoppinsPrimary)),
                                        SizedBox(height: 9.v),
                                        _buildLastName(context),
                                        SizedBox(height: 8.v),
                                        Padding(
                                            padding: EdgeInsets.only(left: 8.h),
                                            child: Text("lbl_emal_id".tr,
                                                style: CustomTextStyles
                                                    .bodyLargePoppinsPrimary)),
                                        SizedBox(height: 9.v),
                                        _buildEmail(context),
                                        SizedBox(height: 8.v),
                                        Padding(
                                            padding: EdgeInsets.only(left: 8.h),
                                            child: Text("lbl_mobile_no".tr,
                                                style: CustomTextStyles
                                                    .bodyLargePoppinsPrimary)),
                                        SizedBox(height: 9.v),
                                        _buildMobileNo(context),
                                        SizedBox(height: 8.v),
                                        Padding(
                                            padding: EdgeInsets.only(left: 8.h),
                                            child: Text("lbl_address".tr,
                                                style: CustomTextStyles
                                                    .bodyLargePoppinsPrimary)),
                                        SizedBox(height: 9.v),
                                        _buildAddress(context),
                                        SizedBox(height: 8.v),
                                        Padding(
                                            padding: EdgeInsets.only(left: 8.h),
                                            child: Text("lbl_password".tr,
                                                style: CustomTextStyles
                                                    .bodyLargePoppinsPrimary)),
                                        SizedBox(height: 9.v),
                                        _buildPassword(context),
                                        SizedBox(height: 8.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 11.h),
                                            child: Text(
                                                "msg_confirm_password".tr,
                                                style: CustomTextStyles
                                                    .bodyLargePoppinsPrimary)),
                                        SizedBox(height: 9.v),
                                        _buildConfirmPassword(context)
                                      ]))))
                    ]))),
            bottomNavigationBar: _buildSignUp(context)));
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
        selector: (state) => state.firstNameController,
        builder: (context, firstNameController) {
          return CustomTextFormField(
              controller: firstNameController,
              hintText: "msg_enter_your_name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildThirtyFour(BuildContext context) {
    return SizedBox(
        height: 221.v,
        width: 354.h,
        child: Stack(alignment: Alignment.bottomRight, children: [
          Opacity(
              opacity: 0.5,
              child: CustomImageView(
                  imagePath: ImageConstant.imgReusefuleHigh136x218,
                  height: 136.v,
                  width: 218.h,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(right: 32.h))),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_first_name".tr,
                            style: CustomTextStyles.bodyLargePoppinsPrimary),
                        SizedBox(height: 9.v),
                        _buildFirstName(context)
                      ]))),
          CustomAppBar(
              leadingWidth: double.maxFinite,
              leading: Container(
                  height: 55.adaptSize,
                  width: 55.adaptSize,
                  margin: EdgeInsets.only(left: 32.h, right: 343.h),
                  child: Stack(alignment: Alignment.centerLeft, children: [
                    CustomIconButton(
                        height: 55.adaptSize,
                        width: 55.adaptSize,
                        alignment: Alignment.center,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgArrowDown)),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowDownGray10003,
                        height: 18.v,
                        width: 19.h,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.fromLTRB(11.h, 18.v, 24.h, 18.v))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 11.h),
        child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
            selector: (state) => state.lastNameController,
            builder: (context, lastNameController) {
              return CustomTextFormField(
                  controller: lastNameController,
                  hintText: "msg_enter_your_name".tr,
                  validator: (value) {
                    if (!isText(value)) {
                      return "err_msg_please_enter_valid_text".tr;
                    }
                    return null;
                  });
            }));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h, right: 3.h),
        child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
            selector: (state) => state.emailController,
            builder: (context, emailController) {
              return CustomTextFormField(
                  controller: emailController,
                  hintText: "lbl_info_xyz_com".tr,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_email".tr;
                    }
                    return null;
                  });
            }));
  }

  /// Section Widget
  Widget _buildMobileNo(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h, right: 3.h),
        child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
            selector: (state) => state.mobileNoController,
            builder: (context, mobileNoController) {
              return CustomTextFormField(
                  controller: mobileNoController,
                  hintText: "msg_91_98596_58000".tr);
            }));
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h, right: 3.h),
        child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
            selector: (state) => state.addressController,
            builder: (context, addressController) {
              return CustomTextFormField(
                  controller: addressController,
                  hintText: "msg_enter_your_address".tr,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.v));
            }));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h, right: 3.h),
        child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
            selector: (state) => state.passwordController,
            builder: (context, passwordController) {
              return CustomTextFormField(
                  controller: passwordController,
                  hintText: "lbl_xxxxxxxxxx".tr,
                  textInputType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_password".tr;
                    }
                    return null;
                  },
                  obscureText: true);
            }));
  }

  /// Section Widget
  Widget _buildConfirmPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 11.h),
        child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
            selector: (state) => state.confirmPasswordController,
            builder: (context, confirmPasswordController) {
              return CustomTextFormField(
                  controller: confirmPasswordController,
                  hintText: "lbl_xxxxxxxxxx".tr,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_password".tr;
                    }
                    return null;
                  },
                  obscureText: true);
            }));
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_sign_up2".tr,
        margin: EdgeInsets.only(left: 32.h, right: 24.h, bottom: 18.v),
        onPressed: () {
          onTapSignUp(context);
        });
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
