import 'package:car_app1/ui/common/app_strings.dart';
import 'package:car_app1/ui/views/allocated_view/allocated_view_viewmodel.dart';
import 'package:car_app1/ui/views/allocated_view/list_view/pending_list_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PendingView extends StackedView<AllocatedViewModel> {
  const PendingView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AllocatedViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: ListView.separated(
              itemBuilder: (context, index) => const PendingListView(),
              separatorBuilder: (context, index) => const Text(''),
              itemCount: 6,
            ),
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
