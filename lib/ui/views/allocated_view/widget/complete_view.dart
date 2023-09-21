import 'package:car_app1/ui/views/allocated_view/allocated_view_viewmodel.dart';
import 'package:car_app1/ui/views/allocated_view/list_view/list_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CompleteView extends StackedView<AllocatedViewModel> {
  const CompleteView({
    // required this.data, 
    Key? key}) : super(key: key);

  // final List<Datum> data;

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
            itemBuilder: (context, index) => const AllotListView(),
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
