import 'package:flutter/material.dart';
import 'package:sol_chall_reuseful/core/app_export.dart';
import 'package:sol_chall_reuseful/widgets/custom_outlined_button.dart';
import 'bloc/success_bloc.dart';
import 'models/success_model.dart';

// ignore_for_file: must_be_immutable
class SuccessDialog extends StatelessWidget {
  const SuccessDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SuccessBloc>(
      create: (context) => SuccessBloc(SuccessState(
        successModelObj: SuccessModel(),
      ))
        ..add(SuccessInitialEvent()),
      child: SuccessDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(
          left: 75.h,
          right: 75.h,
          bottom: 304.v,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 25.v,
        ),
        decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder29,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 8.v),
            Text(
              "lbl_sign_up_success".tr,
              style: CustomTextStyles.titleLargeMontserratPrimary,
            ),
            SizedBox(height: 30.v),
            Container(
              height: 122.adaptSize,
              width: 122.adaptSize,
              padding: EdgeInsets.all(28.h),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder61,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgCheckmark,
                height: 54.v,
                width: 63.h,
                alignment: Alignment.bottomLeft,
              ),
            ),
            SizedBox(height: 37.v),
            CustomOutlinedButton(
              height: 55.v,
              text: "lbl_sign_in".tr,
            ),
          ],
        ),
      ),
    );
  }
}
