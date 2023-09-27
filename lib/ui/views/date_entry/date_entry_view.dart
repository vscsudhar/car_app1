import 'package:car_app1/ui/common/app_strings.dart';
import 'package:car_app1/ui/common/shared/styles.dart';
import 'package:car_app1/ui/common/ui_helpers.dart';
import 'package:car_app1/ui/common/widgets/appbar_background.dart';
import 'package:car_app1/ui/common/widgets/box.dart';
import 'package:car_app1/ui/views/date_entry/drawer/data_drawer.dart';
import 'package:car_app1/ui/views/date_entry/widgets/entry_view_list.dart';
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
      appBar: AppBar(
        title: Text(
          'ABC Car Care',
          style: fontFamilyBold.size26,
        ),
        centerTitle: true,
        backgroundColor: appwhite1,
        elevation: 0,
        flexibleSpace: buildAppBarBackground(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
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
              Padding(
                padding: zeroPadding,
                child: Box(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EntryViewList())),
                  margin: defaultPadding8,
                  boxColor: appViking,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'view Details',
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
        ),
      ),
      drawer: const DrawerView(),
    );
  }

  @override
  DateEntryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DateEntryViewModel();
}
