import 'package:car_app1/ui/common/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/shared/styles.dart';
import '../../common/widgets/text_field2.dart';
import 'enter_vehicle_details_viewmodel.dart';

class EnterVehicleDetailsView
    extends StackedView<EnterVehicleDetailsViewModel> {
  const EnterVehicleDetailsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    EnterVehicleDetailsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: 85,
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
                      vehicleinput,
                      style: fontFamilyBold
                          .size32.appwhite, // Adjust text color as needed
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: defaultPadding12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpacing60,
                    verticalSpacing40,
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
                    verticalSpacing40,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () => viewModel.goToDeliveryVehicleDetails(),
                          child: Stack(
                            children: [
                              Padding(
                                padding: leftPadding20,
                                child: Image.asset(backbutton, height: 140),
                              ),
                              Padding(
                                padding: topPadding30 + topPadding4,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    gradient: const LinearGradient(
                                      end: Alignment.center,
                                      colors: [
                                        Colors.amberAccent,
                                        Colors.transparent
                                      ],
                                    ),
                                  ),
                                  child: Text(submit,
                                      style: fontFamilyBold.size30.black),
                                ),
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
      ),
    );
  }

  @override
  EnterVehicleDetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      EnterVehicleDetailsViewModel();
}
