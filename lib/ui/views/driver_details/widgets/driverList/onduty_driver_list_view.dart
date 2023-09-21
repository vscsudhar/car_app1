import 'package:car_app1/ui/common/shared/styles.dart';
import 'package:car_app1/ui/common/widgets/button1.dart';
import 'package:car_app1/ui/views/driver_details/driver_details_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class DriverListView extends ViewModelWidget<DriverDetailsViewModel> {
  const DriverListView({
    // required this.data,
    // required this.index,
    super.key,
  });

  // final Datum data;
  // final int index;
  @override
  Widget build(BuildContext context, DriverDetailsViewModel viewModel) {
    return Padding(
      padding: defaultPadding12,
      child: Container(
        height: 140, //150
        decoration: BoxDecoration(
          color: appViking,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Card(
          elevation: 20.0,
          margin: const EdgeInsets.all(2),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: InkWell(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: defaultPadding8,
                      child: Text(
                        'Area',
                        style: fontFamilyRegular.size18.appChambray1,
                      ),
                    ),
                    const Spacer(),
                    horizontalDivider,
                    Padding(
                      padding: defaultPadding8,
                      child: Text(
                        'Vehicle No',
                        style: fontFamilyRegular.size18.appChambray1,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: defaultPadding8,
                      child: Text(
                        'Vehicle Model',
                        style: fontFamilyRegular.size18.appChambray1,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: defaultPadding8,
                      child: Text(
                        'Driver Name',
                        style: fontFamilyRegular.size18.appChambray1,
                      ),
                    )
                  ],
                ),
                const Button1(
                  width: 200,
                  title: 'Current Location',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
