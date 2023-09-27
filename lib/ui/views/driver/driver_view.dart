import 'package:car_app1/ui/common/shared/styles.dart';
import 'package:car_app1/ui/common/widgets/appbar_background.dart';
import 'package:car_app1/ui/views/driver/drawer/drawer_view.dart';
import 'package:car_app1/ui/views/driver/pending_trip/pending_trinp_list.dart';
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'ABC Car Care',
          style: fontFamilyBold.size26,
        ),
        centerTitle: true,
        backgroundColor: appwhite1,
        elevation: 0,
        flexibleSpace: buildAppBarBackground(),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Text(
              'Pending Trip:',
              style: fontFamilyMedium.size26.appChambray1,
            ),
            horizontalSpacing20,
            Padding(
              padding: topPadding40,
              child: SizedBox(
                  height: MediaQuery.of(context).size.height * 1,
                  child: Center(
                      child: ListView.separated(
                    itemBuilder: (context, index) => const PendingTripList(),
                    separatorBuilder: (context, index) => const Text(''),
                    itemCount: 2,
                  ))),
            ),
          ],
        ),

        // child: SizedBox(child: ListView.separated(itemBuilder: (context, index) => const PendingTripList(), separatorBuilder: (context, index) => const Text(''), itemCount: 2)),
      ),
      drawer: const DrawerDriverView(),
    );
  }

  @override
  DriverViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DriverViewModel();
}
