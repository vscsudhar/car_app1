import 'package:car_app1/ui/common/shared/styles.dart';
import 'package:car_app1/ui/common/widgets/button.dart';
import 'package:car_app1/ui/views/allocated_view/allocated_view_viewmodel.dart';
import 'package:car_app1/ui/views/allocated_view/list_view/allot_list_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PendingListView extends ViewModelWidget<AllocatedViewModel> {
  const PendingListView({
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
                  height: 40,
                  width: 200,
                  name: 'Allot',
                  onPressed: () {
                    listBottomSheet(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void listBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  color: appViking,
                ),
                child: Text(
                  'Driver Name',
                  textAlign: TextAlign.center,
                  style: fontFamilyMedium.black.size28,
                ),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: topPadding40,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 3 / 4,
                    child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Driver Name $index',
                                    style: fontFamilyMedium.size18,
                                  ),
                                  Text('Area Name $index'),
                                ],
                              ),
                              const Spacer(),
                              Button(
                                width: 70,
                                height: 30,
                                name: 'Allot',
                                onPressed: () {},
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
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
