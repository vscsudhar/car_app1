import 'package:car_app1/ui/common/shared/styles.dart';
import 'package:car_app1/ui/views/allocated_view/widget/complete_view.dart';
import 'package:car_app1/ui/views/allocated_view/widget/inprogress_view.dart';
import 'package:car_app1/ui/views/allocated_view/widget/pending_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/widgets/appbar_background.dart';
import 'allocated_view_viewmodel.dart';

class AllocatedView extends StackedView<AllocatedViewModel> {
  const AllocatedView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AllocatedViewModel viewModel,
    Widget? child,
  ) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: appwhite1,
          appBar: AppBar(
              title: Text(
                'Allocation',
                style: fontFamilyMedium.appwhite.size26,
              ),
              flexibleSpace: buildAppBarBackground(),
              centerTitle: true,
              bottom: TabBar(
                indicatorColor: Colors.amberAccent,
                indicatorWeight: 4,
                labelStyle: fontFamilyMedium.appwhite.size16,
                labelColor: Colors.amberAccent,
                unselectedLabelColor: Colors.white,
                
                tabs: const [
                  Tab(text: "Pending"),
                  Tab(text: "Inprogress"),
                  Tab(text: "Complete"),
                ],
              )),
          // ignore: prefer_const_constructors
          body: TabBarView(children: const [
            PendingView(),
            InprogressView(),
            CompleteView(),
          ])),
    );
  }

  @override
  AllocatedViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AllocatedViewModel();
}
