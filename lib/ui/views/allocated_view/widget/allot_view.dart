import 'package:car_app1/ui/views/allocated_view/allocated_view_viewmodel.dart';
import 'package:car_app1/ui/views/allocated_view/list_view/allot_list_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AllotView extends StackedView<AllocatedViewModel> {
  const AllotView({super.key});

  @override
  Widget builder(
    BuildContext context,
    AllocatedViewModel viewModel,
    Widget? child,
  ) {
    final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Center(
              child: ListView.separated(
                itemBuilder: (context, index) => const AllotListView(),
                separatorBuilder: (context, index) => const Text(''),
                itemCount: 6,
              ),
            ),
          ),
          // Center(child: Text('ABC Car Care',style: fontFamilyBold.appViking1.size28,)),
        ],
      ),
    );
  }

  @override
  AllocatedViewModel viewModelBuilder(BuildContext context) =>
      AllocatedViewModel();
}
