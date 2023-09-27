import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'driver_viewmodel.dart';

class DriverView extends StackedView<DriverViewModel> {
  const DriverView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DriverViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  DriverViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DriverViewModel();
}
