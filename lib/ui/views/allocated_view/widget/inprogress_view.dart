import 'package:car_app1/ui/views/allocated_view/allocated_view_viewmodel.dart';
import 'package:car_app1/ui/views/allocated_view/list_view/inprogress_list_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class InprogressView extends StackedView<AllocatedViewModel> {
  const InprogressView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AllocatedViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ListView.separated(
            itemBuilder: (context, index) => const InprogressListView(),
            separatorBuilder: (context, index) => const Text(''),
            itemCount: 6,
          ),
        ),
      ),
    );
  }

  @override
  AllocatedViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AllocatedViewModel();
}
