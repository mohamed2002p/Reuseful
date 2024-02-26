import 'package:flutter/material.dart';
import 'package:sol_chall_reuseful_v4/core/app_export.dart';
import '../models/redeemone_item_model.dart';

// ignore: must_be_immutable
class RedeemoneItemWidget extends StatelessWidget {
  RedeemoneItemWidget(
    this.redeemoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RedeemoneItemModel redeemoneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.v,
      width: 187.h,
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 37.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: CustomImageView(
        imagePath: redeemoneItemModelObj?.image,
        height: 59.v,
        width: 170.h,
        alignment: Alignment.topCenter,
      ),
    );
  }
}
