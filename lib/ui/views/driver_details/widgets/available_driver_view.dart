import 'package:car_app1/ui/views/driver_details/driver_details_viewmodel.dart';
import 'package:car_app1/ui/views/driver_details/widgets/driverList/available_driver_list.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AvailableDriver extends StackedView<DriverDetailsViewModel> {
  const AvailableDriver({Key? key}) : super(key: key);

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
            itemBuilder: (context, index) => const AvailableDriverList(),
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
