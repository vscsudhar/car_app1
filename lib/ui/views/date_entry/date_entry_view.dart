import 'package:car_app1/ui/common/app_strings.dart';
import 'package:car_app1/ui/common/shared/styles.dart';
import 'package:car_app1/ui/common/ui_helpers.dart';
import 'package:car_app1/ui/common/widgets/box.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'date_entry_viewmodel.dart';

class DateEntryView extends StackedView<DateEntryViewModel> {
  const DateEntryView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DateEntryViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              verticalSpaceMedium,
              Text(
                dataentry,
                style: fontFamilyLight.size28.appViking1,
              ),
              verticalSpaceMedium,
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.black26,
                  ),
                ),
              ),
              Box(
                onTap: () => viewModel.goToVehicleInputDetails(),
                margin: defaultPadding8 + topPadding12,
                boxColor: appViking,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      pickupvehicledetail,
                      style: fontFamilyMedium.size20,
                    ),
                    const Icon(
                      Icons.arrow_circle_right_outlined,
                      size: 40,
                      color: appChambray,
                    )
                  ],
                ),
              ),
              Padding(
                padding: zeroPadding,
                child: Box(
                  onTap: () => viewModel.goToDeliveryVehicleDetails(),
                  margin: defaultPadding8,
                  boxColor: appViking,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        deliveryvehicledetail,
                        style: fontFamilyMedium.size20,
                      ),
                      const Icon(
                        Icons.arrow_circle_right_outlined,
                        size: 40,
                        color: appChambray,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  @override
  DateEntryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DateEntryViewModel();
}
