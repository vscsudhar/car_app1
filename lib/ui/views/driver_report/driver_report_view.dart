import 'package:car_app1/ui/common/shared/styles.dart';
import 'package:car_app1/ui/common/widgets/button1.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';

import 'driver_report_viewmodel.dart';

class DriverReportView extends StackedView<DriverReportViewModel> {
  const DriverReportView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DriverReportViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: appwhite1,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: topPadding40 + topPadding40 + topPadding20,
                child: Column(
                  children: [
                    Padding(
                      padding: leftPadding10,
                      child: Text(
                        'From Date',
                        style: fontFamilyBold.size14,
                      ),
                    ),
                    InkWell(
                      onTap: () => viewModel.selectDate(context),
                      child: Container(
                        margin: const EdgeInsets.only(top: 12) +
                            leftPadding10 +
                            rightPadding10,
                        padding: defaultPadding12,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.4),
                              offset: Offset(3, 3),
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(DateFormat.yMMMEd().format(viewModel.sdate)),
                            const Icon(Icons.calendar_today),
                          ],
                        ),
                      ),
                    ),
                    verticalSpacing10,
                    Padding(
                      padding: leftPadding10,
                      child: Text(
                        'To Date',
                        style: fontFamilyBold.size14,
                      ),
                    ),
                    InkWell(
                      onTap: () => viewModel.selectDate(context),
                      child: Container(
                        margin: const EdgeInsets.only(top: 12) +
                            leftPadding10 +
                            rightPadding10,
                        padding: defaultPadding12,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.4),
                              offset: Offset(3, 3),
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(DateFormat.yMMMEd().format(viewModel.sdate)),
                            const Icon(Icons.calendar_today),
                          ],
                        ),
                      ),
                    ),
                    verticalSpacing40,
                    Button1(
                      onTap: () => viewModel.showBottomSheet(),
                      width: 200,
                      title: 'Submit',
                    ),
                  ],
                ),
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
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
                        'Driver Report',
                        style: fontFamilyBold.size32.appwhite,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  @override
  DriverReportViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DriverReportViewModel();
}
