import 'package:car_app1/ui/common/app_strings.dart';
import 'package:car_app1/ui/common/shared/styles.dart';
import 'package:car_app1/ui/common/widgets/appbar_background.dart';
import 'package:car_app1/ui/common/widgets/button.dart';
import 'package:car_app1/ui/views/driver/driver_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CustomerDetails extends StackedView<DriverViewModel> {
  const CustomerDetails({super.key});

  @override
  Widget builder(
    BuildContext context,
    DriverViewModel viewModel,
    Widget? child,
  ) {
    final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

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
          child: Padding(
            padding: defaultPadding20,
            child: Container(
              child: Column(
                children: [
                  Text(
                    'View Customer Details',
                    style: fontFamilyBold.size26.appViking1,
                  ),
                  verticalSpacing20,
                  Row(
                    children: [
                      Text(
                        vehicleno,
                        style: fontFamilyMedium.appChambray1.size18,
                      ),
                      const Spacer(),
                      const Text('data'),
                    ],
                  ),
                  horizontalDivider,
                  verticalSpacing20,
                  Row(
                    children: [
                      Text(
                        vehiclemodel,
                        style: fontFamilyMedium.appChambray1.size18,
                      ),
                      const Spacer(),
                      const Text('data'),
                    ],
                  ),
                  horizontalDivider,
                  verticalSpacing20,
                  Row(
                    children: [
                      Text(
                        contactperson,
                        style: fontFamilyMedium.appChambray1.size18,
                      ),
                      const Spacer(),
                      const Text('data'),
                    ],
                  ),
                  horizontalDivider,
                  verticalSpacing20,
                  Row(
                    children: [
                      Text(
                        areaLoc,
                        style: fontFamilyMedium.appChambray1.size18,
                      ),
                      const Spacer(),
                      const Text('data'),
                    ],
                  ),
                  horizontalDivider,
                  verticalSpacing20,
                  Row(
                    children: [
                      Text(
                        'Customer Location',
                        style: fontFamilyMedium.appChambray1.size18,
                      ),
                      const Spacer(),
                      const Text('data'),
                    ],
                  ),
                  horizontalDivider,
                  verticalSpacing20,
                  Row(
                    children: [
                      Text(
                        'Call to customer',
                        style: fontFamilyMedium.appChambray1.size18,
                      ),
                      const Spacer(),
                      const Text('data'),
                    ],
                  ),
                  horizontalDivider,
                  verticalSpacing20,
                  Row(
                    children: [
                      Text(
                        'Purpose:',
                        style: fontFamilyMedium.appChambray1.size18,
                      ),
                      const Spacer(),
                      const Text('data'),
                    ],
                  ),
                  horizontalDivider,
                  verticalSpacing40,
                  Row(
                    children: [
                      Expanded(
                        child: Button(
                          height: 30,
                          buttoncolor: Colors.redAccent,
                          name: 'Cancel',
                          onPressed: () {},
                        ),
                      ),
                      Expanded(
                        child: Button(
                          height: 30,
                          buttoncolor: appViking,
                          name: 'PickUp Accept',
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CustomerDetails(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  @override
  DriverViewModel viewModelBuilder(BuildContext context) => DriverViewModel();
}
