import 'package:car_app1/ui/common/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';

import '../../common/shared/styles.dart';
import '../../common/widgets/text_field2.dart';
import 'delivery_vehicle_details_viewmodel.dart';

class DeliveryVehicleDetailsView
    extends StackedView<DeliveryVehicleDetailsViewModel> {
  const DeliveryVehicleDetailsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DeliveryVehicleDetailsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
            height: 100,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    back1,
                    fit: BoxFit.fill,
                  ), // Replace with the actual path of your image
                ),
                Center(
                  child: Text(
                    'ABC Car Care',
                    style: fontFamilyBold
                        .size32.appwhite, // Adjust text color as needed
                  ),
                ),
              ],
            ),
          ),
          // const BackGround(),
          //  SizedBox(
          //     height: double.infinity,
          //     child: Image.asset(
          //       'assets/icons/back1.png',
          //       // fit: BoxFit.fill,
          //     )),
          SingleChildScrollView(
            child: Padding(
              padding: defaultPadding12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpacing60,
                  verticalSpacing20,
                  verticalSpacing20,
                  Center(
                    child: Text(
                      deliveryvehicledetail,
                      style: fontFamilyBold
                          .size32.appChambray1, // Adjust text color as needed
                    ),
                  ),
                  verticalSpacing10,
                  Text(
                    'Enter Date',
                    style: fontFamilyRegular.size16
                        .copyWith(color: Colors.black45),
                  ),
                  InkWell(
                    onTap: () => viewModel.selectDate(context),
                    child: Container(
                      margin: const EdgeInsets.only(top: 12),
                      padding: defaultPadding12,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                        boxShadow: const <BoxShadow>[
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.4),
                            offset: Offset(3, 3),
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(DateFormat.yMMMEd().format(viewModel.sdate)),
                          const Icon(Icons.calendar_today),
                        ],
                      ),
                    ),
                  ),
                  verticalSpacing8,
                  TextField2(
                    hintText: invoiceno,
                    hintStyle: fontFamilyMedium.black45,
                  ),
                  TextField2(
                    hintText: vehicleno,
                    hintStyle: fontFamilyMedium.black45,
                  ),
                  verticalSpacing10,
                  TextField2(
                    hintText: vehiclemodel,
                    hintStyle: fontFamilyRegular.black45,
                  ),
                  verticalSpacing10,
                  TextField2(
                    hintText: contactperson,
                    hintStyle: fontFamilyRegular.black45,
                  ),
                  verticalSpacing10,
                  TextField2(
                    hintText: contactphone,
                    hintStyle: fontFamilyRegular.black45,
                  ),
                  verticalSpacing10,
                  TextField2(
                    hintText: areaLoc,
                    hintStyle: fontFamilyRegular.black45,
                  ),
                  verticalSpacing10,
                  TextField2(
                    hintText: str,
                    hintStyle: fontFamilyRegular.black45,
                  ),
                  verticalSpacing10,
                  TextField2(
                    hintText: lndmrk,
                    hintStyle: fontFamilyRegular.black45,
                  ),
                  verticalSpacing10,
                  TextField2(
                    hintText: pincode,
                    hintStyle: fontFamilyRegular.black45,
                  ),
                  verticalSpacing20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () => viewModel.goToDataEntry(),
                        child: Stack(
                          children: [
                            Padding(
                              padding: leftPadding10,
                              child: Image.asset(backbutton, height: 140),
                            ),
                            Padding(
                              padding: topPadding30 + topPadding4,
                              child: Text(submit,
                                  style: fontFamilyBold.size30.black),
                            ),
                          ],
                        ),
                      ),
                      // Box(
                      //     boxColor: Colors.white70,
                      //     width: 120,
                      //     child: Row(
                      //       children: [
                      //         const Text(
                      //           'Submit',
                      //           style: fontFamilyMedium,
                      //         ),
                      //         horizontalSpacing10,
                      //         SizedBox(height: 30, width: 30, child: Image.asset('assets/icons/submit.png'))
                      //       ],
                      //     )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  DeliveryVehicleDetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DeliveryVehicleDetailsViewModel();
}
