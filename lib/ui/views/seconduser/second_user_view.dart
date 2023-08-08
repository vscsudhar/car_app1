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
      body: Stack(
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
                      'View',
                      style: fontFamilyBold.size32.appwhite,
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
                children: [
                  Box(
                    onTap: () => viewModel.goToAllocatedView(),
                    margin: defaultPadding8 + topPadding12,
                    boxColor: appViking,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Allocate',
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
                    margin: defaultPadding8,
                    boxColor: appViking,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'OnDuty Driver',
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
                    margin: defaultPadding8,
                    boxColor: appViking,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Available Driver', style: fontFamilyMedium.size20),
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
    );
  }

  @override
  SecondUserViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SecondUserViewModel();
}
