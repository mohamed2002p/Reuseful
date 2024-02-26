import 'package:flutter/material.dart';
import 'package:sol_chall_reuseful_v4/core/app_export.dart';
import 'package:sol_chall_reuseful_v4/widgets/app_bar/custom_app_bar.dart';
import 'bloc/redeem_one_bloc.dart';
import 'models/redeem_one_model.dart';
import 'models/redeemone_item_model.dart';
import 'widgets/redeemone_item_widget.dart';

class RedeemOneScreen extends StatelessWidget {
  const RedeemOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<RedeemOneBloc>(
        create: (context) =>
            RedeemOneBloc(RedeemOneState(redeemOneModelObj: RedeemOneModel()))
              ..add(RedeemOneInitialEvent()),
        child: RedeemOneScreen());
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
                                  margin: EdgeInsets.only(left: 94.h),
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
                                            child: SizedBox(
                                                height: 41.v,
                                                width: 73.h,
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                              "lbl_1000".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .headlineLarge)),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                              "lbl_1000".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .headlineLarge))
                                                    ]))),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgContrast,
                                            height: 28.adaptSize,
                                            width: 28.adaptSize,
                                            alignment: Alignment.bottomLeft,
                                            margin: EdgeInsets.only(
                                                left: 21.h, bottom: 3.v))
                                      ])),
                              SizedBox(height: 51.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 11.h),
                                  child: Text("lbl_recent_redeem".tr,
                                      style: theme.textTheme.bodyLarge)),
                              SizedBox(height: 7.v),
                              _buildRecentRedeem(context),
                              SizedBox(height: 7.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: 24.v,
                                      width: 23.h,
                                      margin: EdgeInsets.only(right: 18.h),
                                      decoration: BoxDecoration(
                                          color: appTheme.whiteA700,
                                          borderRadius:
                                              BorderRadius.circular(12.h)))),
                              SizedBox(height: 4.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 7.h),
                                  child: Text("lbl_redeem".tr,
                                      style: theme.textTheme.bodyLarge)),
                              SizedBox(height: 14.v),
                              _buildRedeemOne(context)
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: Container(
            height: 16.v,
            width: 23.h,
            margin: EdgeInsets.fromLTRB(35.h, 9.v, 372.h, 9.v),
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
  Widget _buildRecentRedeem(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapRecentRedeem(context);
        },
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 2.v),
            decoration: AppDecoration.fillOnPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 42.v, bottom: 30.v),
                      child: Text("msg_glamica_discount".tr,
                          style: theme.textTheme.bodyLarge)),
                  SizedBox(
                      height: 98.v,
                      child: VerticalDivider(
                          width: 1.h, thickness: 1.v, indent: 12.h)),
                  Padding(
                      padding: EdgeInsets.only(top: 42.v, bottom: 29.v),
                      child: Text("lbl_50_000".tr,
                          style: CustomTextStyles.bodyLargeBluegray700))
                ])));
  }

  /// Section Widget
  Widget _buildRedeemOne(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: BlocSelector<RedeemOneBloc, RedeemOneState, RedeemOneModel?>(
            selector: (state) => state.redeemOneModelObj,
            builder: (context, redeemOneModelObj) {
              return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 136.v,
                      crossAxisCount: 2,
                      mainAxisSpacing: 18.h,
                      crossAxisSpacing: 18.h),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: redeemOneModelObj?.redeemoneItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    RedeemoneItemModel model =
                        redeemOneModelObj?.redeemoneItemList[index] ??
                            RedeemoneItemModel();
                    return RedeemoneItemWidget(model);
                  });
            }));
  }

  /// Navigates to the redeemtwoScreen when the action is triggered.
  onTapRecentRedeem(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.redeemtwoScreen,
    );
  }
}
