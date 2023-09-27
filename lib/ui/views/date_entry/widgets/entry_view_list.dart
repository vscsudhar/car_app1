import 'package:car_app1/ui/views/date_entry/data_entry_view/data_entry_list.dart';
import 'package:car_app1/ui/views/date_entry/date_entry_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class EntryViewList extends StackedView<DateEntryViewModel> {
  const EntryViewList({super.key});

  @override
  Widget builder(
    BuildContext context,
    DateEntryViewModel viewModel,
    Widget? child,
  ) {
    final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

    return Scaffold(
      body: Container(
        child: Center(
            child: ListView.separated(
          itemBuilder: (context, index) => const DataEntryList(),
          separatorBuilder: (context, index) => const Text(''),
          itemCount: 6,
        )),
      ),
    );
  }

  @override
  DateEntryViewModel viewModelBuilder(BuildContext context) =>
      DateEntryViewModel();
}
