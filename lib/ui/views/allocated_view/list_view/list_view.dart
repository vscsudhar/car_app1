import 'package:car_app1/ui/common/shared/styles.dart';
import 'package:car_app1/ui/views/allocated_view/allocated_view_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AllotListView extends ViewModelWidget<AllocatedViewModel> {
  const AllotListView({
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
        height: 130, //150
        decoration: BoxDecoration(
          color: appViking,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: SingleChildScrollView(
          child: Card(
            elevation: 20.0,
            margin: const EdgeInsets.all(2),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
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
                  Text('Allot', style: fontFamilyRegular.size18.appBrinkPink1),
                  // buildText(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildText(BuildContext context) => ExpansionTile(
        title: const Text('Allot'),
        children: [
          ListView.separated(
            itemBuilder: (context, index) => const Text('sudhar'),
            separatorBuilder: (context, index) => const Text(''),
            itemCount: 10,
          ),
        ],
      );
}
