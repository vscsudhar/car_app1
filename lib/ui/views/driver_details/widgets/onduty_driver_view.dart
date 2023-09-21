import 'package:car_app1/ui/views/driver_details/driver_details_viewmodel.dart';
import 'package:car_app1/ui/views/driver_details/widgets/driverList/onduty_driver_list_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class OndutyDriver extends StackedView<DriverDetailsViewModel> {
  const OndutyDriver({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DriverDetailsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ListView.separated(
            itemBuilder: (context, index) => const DriverListView(),
            separatorBuilder: (context, index) => const Text(''),
            itemCount: 6,
          ),
        ),
      ),
    );
  }

  @override
  DriverDetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DriverDetailsViewModel();
}
