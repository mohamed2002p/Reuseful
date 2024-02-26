import 'package:flutter/material.dart';
import 'package:sol_chall_reuseful_v4/core/app_export.dart';
import '../models/redeemlist_item_model.dart';

// ignore: must_be_immutable
class RedeemlistItemWidget extends StatelessWidget {
  RedeemlistItemWidget(
    this.redeemlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RedeemlistItemModel redeemlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6.v),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 34.v,
              bottom: 30.v,
            ),
            child: Text(
              redeemlistItemModelObj.glamicaDiscountText!,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(
            height: 90.v,
            child: VerticalDivider(
              width: 1.h,
              thickness: 1.v,
              indent: 4.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 37.v,
              bottom: 28.v,
            ),
            child: Text(
              redeemlistItemModelObj.twentySixThousandText!,
              style: CustomTextStyles.bodyLargeBluegray700,
            ),
          ),
        ],
      ),
    );
  }
}
