import 'package:car_app1/ui/common/app_strings.dart';
import 'package:car_app1/ui/common/shared/styles.dart';
import 'package:car_app1/ui/common/widgets/button.dart';
import 'package:car_app1/ui/common/widgets/text_field1.dart';
import 'package:car_app1/ui/views/date_entry/date_entry_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';

class DataEntryList extends ViewModelWidget<DateEntryViewModel> {
  const DataEntryList({
    // required this.data,
    // required this.index,
    super.key,
  });

  // final Datum data;
  // final int index;
  @override
  Widget build(BuildContext context, DateEntryViewModel viewModel) {
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
                        'Contact Person',
                        style: fontFamilyRegular.size18.appChambray1,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Button(
                        height: 30,
                        buttoncolor: Colors.redAccent,
                        name: 'Remove',
                        onPressed: () {},
                      ),
                    ),
                    Expanded(
                      child: Button(
                        height: 30,
                        buttoncolor: appViking,
                        name: 'Edit',
                        onPressed: () {
                          editDialog(context, viewModel);
                        },
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

  void editDialog(BuildContext context, DateEntryViewModel viewModel) =>
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Edit Form'),
          content: SingleChildScrollView(
            child: Padding(
              padding: defaultPadding8,
              child: Column(
                children: [
                  InkWell(
                    key: UniqueKey(),
                    onTap: () => viewModel.selectDate(context),
                    child: Container(
                      margin: const EdgeInsets.only(top: 12),
                      padding: defaultPadding8,
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
                  verticalSpacing8,
                  const TextField1(
                    hintText: name,
                  ),
                  const TextField1(
                    hintText: vehicleno,
                  ),
                  const TextField1(
                    hintText: vehiclemodel,
                  ),
                  const TextField1(
                    hintText: phone,
                  ),
                  const TextField1(
                    hintText: areaLoc,
                  ),
                  const TextField1(
                    hintText: lndmrk,
                  ),
                  const TextField1(
                    hintText: pincode,
                  ),
                  verticalSpacing12,
                  Row(
                    children: [
                      Expanded(
                        child: Button(
                          height: 30,
                          buttoncolor: Colors.redAccent,
                          name: 'Cancel',
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Expanded(
                        child: Button(
                          height: 30,
                          buttoncolor: appViking,
                          name: 'Done',
                          onPressed: () {},
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
  void editdialogue1(BuildContext context, DateEntryViewModel viewModel) =>
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
                    'Edit Drop/PickUp Details',
                    textAlign: TextAlign.center,
                    style: fontFamilyMedium.black.size26,
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: topPadding40,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.95,
                      child: Padding(
                        padding: defaultPadding10,
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () => viewModel.selectDate(context),
                              child: Container(
                                margin: const EdgeInsets.only(top: 12),
                                padding: defaultPadding8,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(DateFormat.yMMMEd()
                                        .format(viewModel.sdate)),
                                    const Icon(Icons.calendar_today),
                                  ],
                                ),
                              ),
                            ),
                            verticalSpacing8,
                            const TextField1(
                              color: appViking,
                              hintText: name,
                            ),
                            const TextField1(
                              color: appViking,
                              hintText: vehicleno,
                            ),
                            const TextField1(
                              color: appViking,
                              hintText: vehiclemodel,
                            ),
                            const TextField1(
                              color: appViking,
                              hintText: phone,
                            ),
                            const TextField1(
                              color: appViking,
                              hintText: areaLoc,
                            ),
                            const TextField1(
                              color: appViking,
                              hintText: lndmrk,
                            ),
                            const TextField1(
                              color: appViking,
                              hintText: pincode,
                            ),
                            verticalSpacing12,
                            Row(
                              children: [
                                Expanded(
                                  child: Button(
                                    height: 30,
                                    buttoncolor: Colors.redAccent,
                                    name: 'Cancel',
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: Button(
                                    height: 30,
                                    buttoncolor: appViking,
                                    name: 'Done',
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
