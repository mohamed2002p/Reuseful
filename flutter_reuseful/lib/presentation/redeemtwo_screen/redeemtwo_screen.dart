import 'package:flutter/material.dart';
import 'package:sol_chall_reuseful_v4/core/app_export.dart';
import 'package:sol_chall_reuseful_v4/widgets/app_bar/custom_app_bar.dart';
import 'package:sol_chall_reuseful_v4/widgets/custom_elevated_button.dart';
import 'bloc/redeemtwo_bloc.dart';
import 'models/redeemlist_item_model.dart';
import 'models/redeemtwo_model.dart';
import 'widgets/redeemlist_item_widget.dart';

class RedeemtwoScreen extends StatelessWidget {
  const RedeemtwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<RedeemtwoBloc>(
        create: (context) =>
            RedeemtwoBloc(RedeemtwoState(redeemtwoModelObj: RedeemtwoModel()))
              ..add(RedeemtwoInitialEvent()),
        child: RedeemtwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 8.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 84.v,
                                  width: 182.h,
                                  margin: EdgeInsets.only(left: 98.h),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Text("lbl_your_poinst".tr,
                                                style: CustomTextStyles
                                                    .headlineLargeBlack900)),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Text("lbl_1000".tr,
                                                style: theme
                                                    .textTheme.headlineLarge)),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgContrast,
                                            height: 28.adaptSize,
                                            width: 28.adaptSize,
                                            alignment: Alignment.bottomLeft,
                                            margin: EdgeInsets.only(
                                                left: 23.h, bottom: 3.v))
                                      ])),
                              SizedBox(height: 44.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 23.h),
                                  child: Text("lbl_redeem".tr,
                                      style: theme.textTheme.bodyLarge)),
                              SizedBox(height: 11.v),
                              _buildRedeemList(context),
                              SizedBox(height: 70.v),
                              _buildOkButton(context)
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: Container(
            height: 16.v,
            width: 23.h,
            margin: EdgeInsets.fromLTRB(39.h, 9.v, 368.h, 9.v),
            child: Stack(alignment: Alignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 16.v,
                  width: 23.h,
                  alignment: Alignment.center),
              CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 16.v,
                  width: 23.h,
                  alignment: Alignment.center)
            ])));
  }

  /// Section Widget
  Widget _buildRedeemList(BuildContext context) {
    return BlocSelector<RedeemtwoBloc, RedeemtwoState, RedeemtwoModel?>(
        selector: (state) => state.redeemtwoModelObj,
        builder: (context, redeemtwoModelObj) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 10.v);
              },
              itemCount: redeemtwoModelObj?.redeemlistItemList.length ?? 0,
              itemBuilder: (context, index) {
                RedeemlistItemModel model =
                    redeemtwoModelObj?.redeemlistItemList[index] ??
                        RedeemlistItemModel();
                return RedeemlistItemWidget(model);
              });
        });
  }

  /// Section Widget
  Widget _buildOkButton(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 65.v,
            width: 370.h,
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.center,
                  child:
                      Text("lbl_ok".tr, style: theme.textTheme.headlineSmall)),
              CustomElevatedButton(
                  height: 65.v,
                  width: 370.h,
                  text: "lbl_ok".tr,
                  onPressed: () {
                    onTapOK(context);
                  },
                  alignment: Alignment.center)
            ])));
  }

  /// Navigates to the sucssScreen when the action is triggered.
  onTapOK(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.sucssScreen,
    );
  }
}
