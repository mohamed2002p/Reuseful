import 'package:flutter/material.dart';
import 'package:mohamedahmedeid2002_s_application3/core/app_export.dart';
import 'package:mohamedahmedeid2002_s_application3/widgets/custom_elevated_button.dart';
import 'bloc/sucss_three_bloc.dart';
import 'models/sucss_three_model.dart';
import 'models/userprofile_item_model.dart';
import 'widgets/userprofile_item_widget.dart';

class SucssThreeScreen extends StatelessWidget {
  const SucssThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SucssThreeBloc>(
      create: (context) => SucssThreeBloc(SucssThreeState(
        sucssThreeModelObj: SucssThreeModel(),
      ))
        ..add(SucssThreeInitialEvent()),
      child: SucssThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 81.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 99.v),
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgAvatarImage143,
                          height: 200.adaptSize,
                          width: 200.adaptSize,
                          radius: BorderRadius.circular(
                            71.h,
                          ),
                          margin: EdgeInsets.only(left: 61.h),
                        ),
                        SizedBox(height: 65.v),
                        _buildUserProfile(context),
                        SizedBox(height: 55.v),
                        CustomElevatedButton(
                          text: "lbl_submit_driver".tr,
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
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 36.h,
      ),
      child: BlocSelector<SucssThreeBloc, SucssThreeState, SucssThreeModel?>(
        selector: (state) => state.sucssThreeModelObj,
        builder: (context, sucssThreeModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 42.v,
              );
            },
            itemCount: sucssThreeModelObj?.userprofileItemList.length ?? 0,
            itemBuilder: (context, index) {
              UserprofileItemModel model =
                  sucssThreeModelObj?.userprofileItemList[index] ??
                      UserprofileItemModel();
              return UserprofileItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
