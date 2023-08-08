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
            backgroundColor: appwhite1,
            elevation: 0,
              title: Text(
                'Allocation',
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
