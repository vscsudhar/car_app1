import 'package:car_app1/ui/common/shared/styles.dart';
import 'package:car_app1/ui/common/widgets/button.dart';
import 'package:car_app1/ui/views/allocated_view/allocated_view_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class InprogressListView extends ViewModelWidget<AllocatedViewModel> {
  const InprogressListView({
    // required this.data,
    // required this.index,
    super.key,
  });

  // final Datum data;
  // final int index;
  @override
  Widget build(BuildContext context, AllocatedViewModel viewModel) {
    return Padding(
      padding: defaultPadding12,
      child: Container(
        height: 150, //150
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
                        'Contact Person',
                        style: fontFamilyRegular.size18.appChambray1,
                      ),
                    )
                  ],
                ),
                Button(
                  height: 35,
                  width: 200,
                  name: 'Allot',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// PopupMenuButton(
//     tooltip: 'Allot',
//     icon: const Icon(Icons.arrow_drop_down),
//     itemBuilder: (BuildContext context) => [
//           const PopupMenuItem(child: Text('Area:')),
//           const PopupMenuItem(child: Text('Vehicle No:')),
//           const PopupMenuItem(child: Text('Vehicle Model:')),
//           const PopupMenuItem(child: Text('Person Name')),
//           const PopupMenuItem(child: Text('Address:')),
//           PopupMenuItem(child: Button(name: 'Allot', onPressed: (){})),
//         ]),
