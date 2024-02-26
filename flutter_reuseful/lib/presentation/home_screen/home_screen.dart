import 'package:flutter/material.dart';
import 'package:sol_chall_reuseful/core/app_export.dart';
import 'bloc/home_bloc.dart';
import 'models/home_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildHelloTiffaSection(context),
                    SizedBox(height: 28.v),
                    _buildTwentyNineSection(context),
                    SizedBox(height: 6.v),
                    _buildTwentySevenSection(context),
                    SizedBox(height: 10.v),
                    _buildTwentyEightSection(context),
                    SizedBox(height: 19.v),
                    _buildThirtySection(context),
                    SizedBox(height: 68.v),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildHelloTiffaSection(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.customBorderBL15,
      ),
      child: Container(
        height: 106.v,
        width: double.maxFinite,
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.customBorderBL15,
        ),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 28.h,
                  vertical: 15.v,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.customBorderBL15,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 17.v),
                    Padding(
                      padding: EdgeInsets.only(left: 22.h),
                      child: Text(
                        "lbl_hello_tiffa".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Container(
                      decoration: AppDecoration.outlineBlack,
                      child: Text(
                        "msg_let_s_save_the_world".tr,
                        style: CustomTextStyles.bodyLargeOnPrimaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 28.h,
                  right: 223.h,
                  bottom: 15.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 22.h),
                      child: Text(
                        "lbl_hello_tiffa".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Container(
                      decoration: AppDecoration.outlineBlack,
                      child: Text(
                        "msg_let_s_save_the_world".tr,
                        style: CustomTextStyles.bodyLargeOnPrimaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyNineSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPlasticSection(
            context,
            userImage: ImageConstant.imgImage6,
            plastic: "msg_paper_cardboard".tr,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 17.v),
            child: _buildPlasticSection(
              context,
              userImage: ImageConstant.imgImage4,
              plastic: "lbl_plastic".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentySevenSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 25.v),
            child: _buildPlasticSection(
              context,
              userImage: ImageConstant.imgImage5,
              plastic: "lbl_metal".tr,
            ),
          ),
          Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage7,
                height: 121.v,
                width: 161.h,
                radius: BorderRadius.circular(
                  10.h,
                ),
              ),
              SizedBox(height: 5.v),
              Text(
                "lbl_weee_recycling".tr,
                style: theme.textTheme.bodyLarge,
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyEightSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage8,
                height: 121.v,
                width: 158.h,
                radius: BorderRadius.circular(
                  10.h,
                ),
              ),
              SizedBox(height: 4.v),
              Text(
                "lbl_wood".tr,
                style: theme.textTheme.bodyLarge,
              ),
            ],
          ),
          _buildPlasticSection(
            context,
            userImage: ImageConstant.imgImage9,
            plastic: "lbl_glass".tr,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtySection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 25.h),
            child: _buildPlasticSection(
              context,
              userImage: ImageConstant.imgImage10,
              plastic: "msg_clothing_textile".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25.h,
              top: 3.v,
            ),
            child: _buildPlasticSection(
              context,
              userImage: ImageConstant.imgImage11,
              plastic: "msg_bricks_inert_waste".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildPlasticSection(
    BuildContext context, {
    required String userImage,
    required String plastic,
  }) {
    return Column(
      children: [
        CustomImageView(
          imagePath: userImage,
          height: 123.v,
          width: 160.h,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
        SizedBox(height: 4.v),
        Text(
          plastic,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: appTheme.black900,
          ),
        ),
      ],
    );
  }
}
