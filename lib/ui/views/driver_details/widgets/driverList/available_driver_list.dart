import 'package:car_app1/ui/common/shared/styles.dart';
import 'package:car_app1/ui/views/driver_details/driver_details_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AvailableDriverList extends ViewModelWidget<DriverDetailsViewModel> {
  const AvailableDriverList({
    // required this.data,
    // required this.index,
    super.key,
  });

  // final Datum data;
  // final int index;
  @override
  Widget build(BuildContext context, DriverDetailsViewModel viewModel) {
    return Padding(
      padding: defaultPadding8,
      child: Container(
        height: 100, //150
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
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: defaultPadding8,
                      child: Text(
                        'Name',
                        style: fontFamilyRegular.size18.appChambray1,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: defaultPadding8,
                      child: Text(
                        'Last Completed Time: ',
                        style: fontFamilyRegular.size16.appChambray1,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: defaultPadding8,
                      child: CircleAvatar(
                        maxRadius: 50,
                        backgroundColor: appChambray,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
