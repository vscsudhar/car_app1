import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/shared/styles.dart';
import '../../common/widgets/text_field2.dart';
import 'enter_vehicle_details_viewmodel.dart';

class EnterVehicleDetailsView extends StackedView<EnterVehicleDetailsViewModel> {
  const EnterVehicleDetailsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    EnterVehicleDetailsViewModel viewModel,
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
                    'Vehicle Input Details',
                    style: fontFamilyBold.size32.appwhite, // Adjust text color as needed
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
                  verticalSpacing20,
                  TextField2(
                    hintText: 'Vehicle No',
                    hintStyle: fontFamilyMedium.black45,
                  ),
                  verticalSpacing10,
                  TextField2(
                    hintText: 'Vehicle Model',
                    hintStyle: fontFamilyRegular.black45,
                  ),
                  verticalSpacing10,
                  TextField2(
                    hintText: 'Contact Person Name',
                    hintStyle: fontFamilyRegular.black45,
                  ),
                  verticalSpacing10,
                  TextField2(
                    hintText: 'Contact Phone No',
                    hintStyle: fontFamilyRegular.black45,
                  ),
                  verticalSpacing10,
                  TextField2(
                    hintText: 'Address & Location',
                    hintStyle: fontFamilyRegular.black45,
                  ),
                  verticalSpacing10,
                  TextField2(
                    hintText: 'Landmark',
                    hintStyle: fontFamilyRegular.black45,
                  ),
                  verticalSpacing10,
                  TextField2(
                    hintText: 'State Name',
                    hintStyle: fontFamilyRegular.black45,
                    readOnly: true,
                    onTap: () {
                      viewModel.stateview();
                    },
                  ),
                  verticalSpacing10,
                  TextField2(
                    hintText: 'City Name',
                    hintStyle: fontFamilyRegular.black45,
                    readOnly: true,
                    onTap: () {
                      viewModel.cityview();
                    },
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
                                    colors: [Colors.amberAccent, Colors.transparent],
                                  ),
                                ),
                                child: Text('Submit', style: fontFamilyBold.size30.black),
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
    );
  }

  @override
  EnterVehicleDetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      EnterVehicleDetailsViewModel();
}
