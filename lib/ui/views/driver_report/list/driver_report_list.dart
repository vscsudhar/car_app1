import 'package:car_app1/ui/views/driver_report/driver_report_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class DriverReportList extends StackedView<DriverReportViewModel> {
  const DriverReportList({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DriverReportViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ListView.separated(
            itemBuilder: (context, index) => const Text('sudhar'),
            separatorBuilder: (context, index) => const Text(''),
            itemCount: 10,
          ),
        ),
      ),
    );
  }

  @override
  DriverReportViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DriverReportViewModel();
}
