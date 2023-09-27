import 'package:car_app1/core/mixin.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class DateEntryViewModel extends BaseViewModel with NavigationMixin {
  DateEntryViewModel();

  DateTime? _sdate;
  DateTime get sdate => _sdate ?? DateTime.now();

  Future<void> selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2023),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      _sdate = pickedDate;
      notifyListeners();
    }
  }
}
