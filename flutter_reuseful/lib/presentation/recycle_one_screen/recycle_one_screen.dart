import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mohamedahmedeid2002_s_application3/core/app_export.dart';
import 'package:mohamedahmedeid2002_s_application3/widgets/custom_elevated_button.dart';
import 'package:mohamedahmedeid2002_s_application3/widgets/custom_text_form_field.dart';
import 'bloc/recycle_one_bloc.dart';
import 'models/recycle_one_model.dart';

// ignore_for_file: must_be_immutable
class RecycleOneScreen extends StatelessWidget {
  RecycleOneScreen({Key? key}) : super(key: key);

  Completer<GoogleMapController> googleMapController = Completer();

  static Widget builder(BuildContext context) {
    return BlocProvider<RecycleOneBloc>(
        create: (context) => RecycleOneBloc(
            RecycleOneState(recycleOneModelObj: RecycleOneModel()))
          ..add(RecycleOneInitialEvent()),
        child: RecycleOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 48.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 84.v),
                              padding: EdgeInsets.symmetric(horizontal: 13.h),
                              child: Column(children: [
                                Text("lbl_plastic_waste".tr,
                                    style: CustomTextStyles.bodyLarge16),
                                SizedBox(height: 1.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 64.h),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage3,
                                              height: 73.v,
                                              width: 80.h,
                                              radius:
                                                  BorderRadius.circular(10.h)),
                                          Expanded(
                                              child: Container(
                                                  width: 241.h,
                                                  margin: EdgeInsets.only(
                                                      left: 18.h,
                                                      top: 24.v,
                                                      bottom: 14.v),
                                                  child: Text(
                                                      "msg_most_plastics_are"
                                                          .tr,
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: theme.textTheme
                                                          .bodySmall)))
                                        ]))),
                                SizedBox(height: 57.v),
                                _buildWeightRow(context),
                                SizedBox(height: 38.v),
                                _buildAddressRow(context),
                                SizedBox(height: 34.v),
                                _buildMapsRow(context),
                                SizedBox(height: 38.v),
                                _buildTimeRow(context),
                                SizedBox(height: 38.v),
                                _buildPointRow(context),
                                SizedBox(height: 75.v),
                                _buildOkButton(context)
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildWeight(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: BlocSelector<RecycleOneBloc, RecycleOneState,
                    TextEditingController?>(
                selector: (state) => state.weightController,
                builder: (context, weightController) {
                  return CustomTextFormField(
                      controller: weightController, hintText: "lbl_2_kg".tr);
                })));
  }

  /// Section Widget
  Widget _buildWeightRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 6.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(top: 15.v, bottom: 13.v),
              child: Text("lbl_weight".tr, style: theme.textTheme.bodyLarge)),
          _buildWeight(context)
        ]));
  }

  /// Section Widget
  Widget _buildAddressRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 6.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 12.v, bottom: 50.v),
                  child:
                      Text("lbl_address".tr, style: theme.textTheme.bodyLarge)),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 10.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.h, vertical: 13.v),
                      decoration: AppDecoration.fillBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 12.v),
                            SizedBox(
                                width: 194.h,
                                child: Text("msg_jl_d_i_panjaitan".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodyLarge))
                          ])))
            ]));
  }

  /// Section Widget
  Widget _buildMapsRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 6.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 17.v, bottom: 45.v),
                  child: Text("lbl_maps".tr, style: theme.textTheme.bodyLarge)),
              Container(
                  height: 88.v,
                  width: 299.h,
                  margin: EdgeInsets.only(left: 7.h),
                  child: Stack(alignment: Alignment.center, children: [
                    SizedBox(
                        height: 88.v,
                        width: 298.h,
                        child: GoogleMap(
                            mapType: MapType.normal,
                            initialCameraPosition: CameraPosition(
                                target: LatLng(
                                    37.43296265331129, -122.08832357078792),
                                zoom: 14.4746),
                            onMapCreated: (GoogleMapController controller) {
                              googleMapController.complete(controller);
                            },
                            zoomControlsEnabled: false,
                            zoomGesturesEnabled: false,
                            myLocationButtonEnabled: false,
                            myLocationEnabled: false)),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage12,
                        height: 88.v,
                        width: 299.h,
                        radius: BorderRadius.circular(20.h),
                        alignment: Alignment.center)
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildTimevalue(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: BlocSelector<RecycleOneBloc, RecycleOneState,
                    TextEditingController?>(
                selector: (state) => state.timevalueController,
                builder: (context, timevalueController) {
                  return CustomTextFormField(
                      controller: timevalueController,
                      hintText: "lbl_08_00".tr);
                })));
  }

  /// Section Widget
  Widget _buildTimeRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 6.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 12.v, bottom: 16.v),
                  child: Text("lbl_time".tr, style: theme.textTheme.bodyLarge)),
              _buildTimevalue(context)
            ]));
  }

  /// Section Widget
  Widget _buildZipcode(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: BlocSelector<RecycleOneBloc, RecycleOneState,
                    TextEditingController?>(
                selector: (state) => state.zipcodeController,
                builder: (context, zipcodeController) {
                  return CustomTextFormField(
                      controller: zipcodeController,
                      hintText: "lbl_1000".tr,
                      textInputAction: TextInputAction.done);
                })));
  }

  /// Section Widget
  Widget _buildPointRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 6.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 12.v, bottom: 16.v),
                  child:
                      Text("lbl_point".tr, style: theme.textTheme.bodyLarge)),
              _buildZipcode(context)
            ]));
  }

  /// Section Widget
  Widget _buildOkButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_ok".tr,
        margin: EdgeInsets.only(left: 18.h, right: 16.h),
        onPressed: () {
          onTapOkButton(context);
        });
  }

  /// Navigates to the recycleScreen when the action is triggered.
  onTapOkButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.recycleScreen,
    );
  }
}
