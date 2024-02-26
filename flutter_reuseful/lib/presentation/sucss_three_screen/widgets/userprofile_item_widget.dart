import 'package:flutter/material.dart';
import 'package:mohamedahmedeid2002_s_application3/core/app_export.dart';
import '../models/userprofile_item_model.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: userprofileItemModelObj?.userImage,
          height: 40.adaptSize,
          width: 40.adaptSize,
          margin: EdgeInsets.only(
            top: 9.v,
            bottom: 7.v,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 37.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  userprofileItemModelObj.nameText!,
                  style: CustomTextStyles
                      .titleLargeInterOnPrimaryContainerSemiBold,
                ),
              ),
              SizedBox(height: 7.v),
              Text(
                userprofileItemModelObj.nameValue!,
                style: CustomTextStyles.titleLargeInterOnPrimaryContainer_1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
