import 'package:car_app1/ui/common/app_strings.dart';
import 'package:car_app1/ui/common/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/widgets/box.dart';
import 'second_user_viewmodel.dart';

class SecondUserView extends StackedView<SecondUserViewModel> {
  const SecondUserView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SecondUserViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
              child: SizedBox(
                height: 100,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        back1,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Center(
                      child: Text(
                        'ABC Car care',
                        style: fontFamilyBold.size26.appwhite,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: topPadding40 + topPadding40 + topPadding10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:topPadding30+leftPadding10,
                      child: Text(
                        'View',
                        style: fontFamilyBold.appChambray1.size22,
                      ),
                    ),
                    Box(
                      onTap: () => viewModel.goToAllocatedView(),
                      margin: defaultPadding8 + topPadding12 + topPadding4,
                      boxColor: appViking,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            allocate,
                            style: fontFamilyMedium.size20,
                          ),
                          const Icon(
                            Icons.arrow_circle_right_outlined,
                            size: 40,
                            color: appChambray,
                          )
                        ],
                      ),
                    ),
                    Box(
                      onTap: () => viewModel.goToDriverDetails(),
                      margin: defaultPadding8,
                      boxColor: appViking,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            driverdetails,
                            style: fontFamilyMedium.size20,
                          ),
                          const Icon(
                            Icons.arrow_circle_right_outlined,
                            size: 40,
                            color: appChambray,
                          )
                        ],
                      ),
                    ),
                    Box(
                      onTap: () => viewModel.goToDriverReport(),
                      margin: defaultPadding8,
                      boxColor: appViking,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '$driver $report',
                            style: fontFamilyMedium.size20,
                          ),
                          const Icon(
                            Icons.arrow_circle_right_outlined,
                            size: 40,
                            color: appChambray,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  SecondUserViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SecondUserViewModel();
}
