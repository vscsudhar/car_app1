import 'package:car_app1/ui/common/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../allocated_view/allocated_view_view.dart';
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
          SizedBox(
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
          Padding(
            padding: defaultPadding10 + topPadding40 + topPadding40,
            child: Column(
              children: [
                Padding(
                  padding: topPadding20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                          child: InkWell(
                        onTap: () => viewModel.goToAllocatedView(),
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
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
                                  'Allocated',
                                  style: fontFamilyMedium.size18.appwhite,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                      horizontalSpacing20,
                      Expanded(
                          child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Image.asset(
                                  back2,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Driver Details',
                                  style: fontFamilyMedium.size18.appwhite,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
                Padding(
                  padding: topPadding20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                          child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
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
                                  'Driver Daily Report',
                                  style: fontFamilyMedium.size18.appwhite,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                      horizontalSpacing20,
                      Expanded(
                          child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Image.asset(
                                  back2,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Driver Monthly Report',
                                  textAlign: TextAlign.center,
                                  style: fontFamilyMedium.size18.appwhite,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
                Padding(
                  padding: topPadding20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                          child: InkWell(
                        onTap: (){},
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
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
                                  'On Duty Driver',
                                  style: fontFamilyMedium.size18.appwhite, 
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                      horizontalSpacing20,
                      Expanded(
                          child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Image.asset(
                                  back2,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Available Driver',
                                  style: fontFamilyMedium.size18.appwhite,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
                
              ],
            ),
          )
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
