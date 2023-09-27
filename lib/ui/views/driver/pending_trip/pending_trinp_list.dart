import 'package:car_app1/ui/common/shared/styles.dart';
import 'package:car_app1/ui/common/widgets/button.dart';
import 'package:car_app1/ui/views/driver/driver_screens/customer_details_view.dart';
import 'package:car_app1/ui/views/driver/driver_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PendingTripList extends ViewModelWidget<DriverViewModel> {
  const PendingTripList({
    // required this.data,
    // required this.index,
    super.key,
  });

  // final Datum data;
  // final int index;
  @override
  Widget build(BuildContext context, DriverViewModel viewModel) {
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
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: InkWell(
            onTap: () =>Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CustomerDetails(),
                          ),
                        ),
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
                        'Contact Person',
                        style: fontFamilyRegular.size18.appChambray1,
                      ),
                    )
                  ],
                ),
                // Text('PickUp/Drop', style: fontFamilyBold.size24.appBrinkPink1,)
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
      ),
    );
  }
}
