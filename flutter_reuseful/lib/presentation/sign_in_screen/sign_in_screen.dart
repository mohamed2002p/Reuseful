import 'package:flutter/material.dart';
import 'package:sol_chall_reuseful/core/app_export.dart';
import 'package:sol_chall_reuseful/core/utils/validation_functions.dart';
import 'package:sol_chall_reuseful/widgets/custom_elevated_button.dart';
import 'package:sol_chall_reuseful/widgets/custom_icon_button.dart';
import 'package:sol_chall_reuseful/widgets/custom_outlined_button.dart';
import 'package:sol_chall_reuseful/widgets/custom_text_form_field.dart';
import 'bloc/sign_in_bloc.dart';
import 'models/sign_in_model.dart';
import 'package:sol_chall_reuseful/domain/facebookauth/facebook_auth_helper.dart';
import 'package:sol_chall_reuseful/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignInBloc>(
        create: (context) =>
            SignInBloc(SignInState(signInModelObj: SignInModel()))
              ..add(SignInInitialEvent()),
        child: SignInScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 23.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  margin: EdgeInsets.only(bottom: 51.v),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 27.h),
                                  child: Column(children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 52.h),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 24.v,
                                                          bottom: 57.v),
                                                      child: CustomIconButton(
                                                          height: 55.adaptSize,
                                                          width: 55.adaptSize,
                                                          padding:
                                                              EdgeInsets.all(
                                                                  17.h),
                                                          child: CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgArrowDown))),
                                                  Opacity(
                                                      opacity: 0.5,
                                                      child: CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgReusefuleHigh136x218,
                                                          height: 136.v,
                                                          width: 218.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 51.h)))
                                                ]))),
                                    SizedBox(height: 25.v),
                                    Text("lbl_welcome_back".tr,
                                        style: theme.textTheme.headlineLarge),
                                    SizedBox(height: 33.v),
                                    _buildLoginWithFacebookButton(context),
                                    SizedBox(height: 20.v),
                                    _buildLoginWithGoogleButton(context),
                                    SizedBox(height: 38.v),
                                    Text("msg_or_login_with_email".tr,
                                        style: CustomTextStyles
                                            .bodyMediumInterBluegray300),
                                    SizedBox(height: 38.v),
                                    _buildEmailEditText(context),
                                    SizedBox(height: 20.v),
                                    _buildEditText(context),
                                    SizedBox(height: 30.v),
                                    _buildSignInButton(context),
                                    SizedBox(height: 19.v),
                                    Text("msg_forgot_your_password".tr,
                                        style: CustomTextStyles
                                            .bodySmallBluegray300),
                                    SizedBox(height: 63.v),
                                    RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "msg_you_don_t_have_an2".tr,
                                              style: CustomTextStyles
                                                  .bodySmallffa1a4b2),
                                          TextSpan(
                                              text: "lbl_sign_up2".tr,
                                              style: CustomTextStyles
                                                  .bodySmallff2dcc70)
                                        ]),
                                        textAlign: TextAlign.left)
                                  ]))))
                    ])))));
  }

  /// Section Widget
  Widget _buildLoginWithFacebookButton(BuildContext context) {
    return CustomElevatedButton(
        text: "msg_login_with_facebook".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebook,
                height: 25.v,
                width: 12.h)),
        buttonStyle: CustomButtonStyles.fillIndigo,
        buttonTextStyle: CustomTextStyles.bodyMediumMontserratGray10002,
        onPressed: () {
          onTapLoginWithFacebookButton(context);
        });
  }

  /// Section Widget
  Widget _buildLoginWithGoogleButton(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_login_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogle, height: 25.v, width: 24.h)),
        buttonStyle: CustomButtonStyles.outlineOnPrimary,
        buttonTextStyle: CustomTextStyles.bodyMediumMontserratOnPrimary,
        onPressed: () {
          onTapLoginWithGoogleButton(context);
        });
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return BlocSelector<SignInBloc, SignInState, TextEditingController?>(
        selector: (state) => state.emailEditTextController,
        builder: (context, emailEditTextController) {
          return CustomTextFormField(
              controller: emailEditTextController,
              hintText: "msg_lazylaxy123_gmail_com".tr,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.h, vertical: 21.v),
              borderDecoration: TextFormFieldStyleHelper.fillGray,
              fillColor: appTheme.gray10001);
        });
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return BlocSelector<SignInBloc, SignInState, TextEditingController?>(
        selector: (state) => state.editTextController,
        builder: (context, editTextController) {
          return CustomTextFormField(
              controller: editTextController,
              textInputAction: TextInputAction.done,
              obscureText: true,
              borderDecoration: TextFormFieldStyleHelper.fillGrayTL15,
              fillColor: appTheme.gray100);
        });
  }

  /// Section Widget
  Widget _buildSignInButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_sign_in".tr,
        onPressed: () {
          onTapSignInButton(context);
        });
  }

  onTapLoginWithFacebookButton(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  onTapLoginWithGoogleButton(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapSignInButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
