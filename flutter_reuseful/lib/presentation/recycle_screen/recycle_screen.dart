import 'package:flutter/material.dart';
import 'package:mohamedahmedeid2002_s_application3/core/app_export.dart';
import 'bloc/recycle_bloc.dart';
import 'models/recycle_model.dart';

class RecycleScreen extends StatelessWidget {
  const RecycleScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<RecycleBloc>(
      create: (context) => RecycleBloc(RecycleState(
        recycleModelObj: RecycleModel(),
      ))
        ..add(RecycleInitialEvent()),
      child: RecycleScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecycleBloc, RecycleState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              height: 911.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMaps,
                    height: 912.v,
                    width: 430.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SingleChildScrollView(
                      child: Container(
                        height: 911.v,
                        width: double.maxFinite,
                        decoration: AppDecoration.fillOnPrimary,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                margin: EdgeInsets.only(left: 1.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 1.h,
                                  vertical: 45.v,
                                ),
                                decoration: AppDecoration
                                    .outlineOnPrimaryContainer
                                    .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL16,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 538.v),
                                    Divider(),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  right: 1.h,
                                  bottom: 125.v,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgShape,
                                      height: 18.v,
                                      width: 60.h,
                                      radius: BorderRadius.vertical(
                                        top: Radius.circular(16.h),
                                      ),
                                    ),
                                    SizedBox(height: 71.v),
                                    _buildModalPanel(context),
                                    SizedBox(height: 15.v),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 96.h,
                                        right: 17.h,
                                      ),
                                      child: _buildElectricCar(
                                        context,
                                        weburl: "lbl_y_m".tr,
                                        distance: "lbl_0_67_km".tr,
                                        price: "lbl_pkr_600".tr,
                                        time: "lbl_5_min".tr,
                                      ),
                                    ),
                                    SizedBox(height: 19.v),
                                    Divider(),
                                    SizedBox(height: 13.v),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 96.h,
                                        right: 17.h,
                                      ),
                                      child: _buildTaxi4Seat(
                                        context,
                                        weburlText: "lbl_d_n".tr,
                                        distanceText: "lbl_0_4_km".tr,
                                        priceText: "lbl_pkr_250".tr,
                                        timeText: "lbl_7_min".tr,
                                      ),
                                    ),
                                    SizedBox(height: 17.v),
                                    Divider(),
                                    SizedBox(height: 14.v),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 96.h,
                                        right: 17.h,
                                      ),
                                      child: _buildElectricCar(
                                        context,
                                        weburl: "lbl_u_g".tr,
                                        distance: "lbl_0_45_km".tr,
                                        price: "lbl_pkr_450".tr,
                                        time: "lbl_12_min".tr,
                                      ),
                                    ),
                                    SizedBox(height: 17.v),
                                    Divider(),
                                    SizedBox(height: 14.v),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 96.h,
                                        right: 17.h,
                                      ),
                                      child: _buildElectricCar(
                                        context,
                                        weburl: "lbl_o_f".tr,
                                        distance: "lbl_0_48_km".tr,
                                        price: "lbl_pkr_150".tr,
                                        time: "lbl_14_min".tr,
                                      ),
                                    ),
                                    SizedBox(height: 17.v),
                                    Divider(),
                                    SizedBox(height: 14.v),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 96.h,
                                        right: 17.h,
                                      ),
                                      child: _buildTaxi4Seat(
                                        context,
                                        weburlText: "lbl_q_i".tr,
                                        distanceText: "lbl_0_5_km".tr,
                                        priceText: "lbl_pkr_550".tr,
                                        timeText: "lbl_16_min".tr,
                                      ),
                                    ),
                                    SizedBox(height: 17.v),
                                    Divider(),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.fromLTRB(96.h, 800.v, 18.h, 64.v),
                              child: _buildElectricCar(
                                context,
                                weburl: "lbl_p_k".tr,
                                distance: "lbl_0_67_km".tr,
                                price: "lbl_pkr_600".tr,
                                time: "lbl_20_min".tr,
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
  Widget _buildModalPanel(BuildContext context) {
    return SizedBox(
      height: 80.v,
      width: 428.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Opacity(
            opacity: 0.95,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 79.v,
                width: 428.h,
                decoration: BoxDecoration(
                  color: theme.colorScheme.secondaryContainer,
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgLine,
            height: 2.v,
            width: 427.h,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.fromLTRB(96.h, 16.v, 17.h, 16.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 4.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_just_go".tr,
                          style:
                              CustomTextStyles.bodyLargeRobotoPrimaryContainer,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "lbl_near_by_you".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  _buildFortyThree(
                    context,
                    price: "lbl_pkr_250".tr,
                    time: "lbl_2_min".tr,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFortyThree(
    BuildContext context, {
    required String price,
    required String time,
  }) {
    return Column(
      children: [
        Text(
          price,
          style: theme.textTheme.titleLarge!.copyWith(
            color: theme.colorScheme.primaryContainer,
          ),
        ),
        SizedBox(height: 4.v),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            time,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.gray400,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildElectricCar(
    BuildContext context, {
    required String weburl,
    required String distance,
    required String price,
    required String time,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                weburl,
                style:
                    CustomTextStyles.bodyLargeRobotoPrimaryContainer.copyWith(
                  color: theme.colorScheme.primaryContainer,
                ),
              ),
              SizedBox(height: 5.v),
              Text(
                distance,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: appTheme.gray400,
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Text(
              price,
              style: theme.textTheme.titleLarge!.copyWith(
                color: theme.colorScheme.primaryContainer,
              ),
            ),
            SizedBox(height: 4.v),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                time,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: appTheme.gray400,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildTaxi4Seat(
    BuildContext context, {
    required String weburlText,
    required String distanceText,
    required String priceText,
    required String timeText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                weburlText,
                style:
                    CustomTextStyles.bodyLargeRobotoPrimaryContainer.copyWith(
                  color: theme.colorScheme.primaryContainer,
                ),
              ),
              SizedBox(height: 5.v),
              Text(
                distanceText,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: appTheme.gray400,
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Text(
              priceText,
              style: theme.textTheme.titleLarge!.copyWith(
                color: theme.colorScheme.primaryContainer,
              ),
            ),
            SizedBox(height: 4.v),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                timeText,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: appTheme.gray400,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
