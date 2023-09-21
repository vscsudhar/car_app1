import 'package:car_app1/ui/common/app_strings.dart';
import 'package:car_app1/ui/common/shared/styles.dart';
import 'package:car_app1/ui/common/widgets/appbar_background.dart';
import 'package:car_app1/ui/views/driver_details/widgets/available_driver_view.dart';
import 'package:car_app1/ui/views/driver_details/widgets/onduty_driver_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'driver_details_viewmodel.dart';

class DriverDetailsView extends StackedView<DriverDetailsViewModel> {
  const DriverDetailsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DriverDetailsViewModel viewModel,
    Widget? child,
  ) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: appwhite1,
          appBar: AppBar(
              backgroundColor: appwhite1,
              elevation: 0,
              title: Text(
                driverdetails,
                style: fontFamilyMedium.appwhite.size30,
              ),
              flexibleSpace: buildAppBarBackground(),
              centerTitle: true,
              bottom: TabBar(
                padding: defaultPadding8,
                indicatorColor: Colors.amberAccent,
                indicatorWeight: 4,
                labelStyle: fontFamilyBold.appwhite.size16,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.white,
                indicator: BoxDecoration(
                  border: Border.all(color: Colors.amber),
                  borderRadius: BorderRadius.circular(10),
                  color: appwhite1,
                ),
                tabs: const [
                  Tab(text: ondutydriver),
                  Tab(text: availabledriver),
                ],
              )),
          // ignore: prefer_const_constructors
          body: TabBarView(children: const [
            OndutyDriver(),
            AvailableDriver(),
          ])),
    );
  }

  @override
  DriverDetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DriverDetailsViewModel();
}
