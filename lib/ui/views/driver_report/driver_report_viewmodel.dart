import 'package:car_app1/app/app.bottomsheets.dart';
import 'package:car_app1/app/app.locator.dart';
import 'package:car_app1/core/mixin.dart';
import 'package:car_app1/ui/common/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class DriverReportViewModel extends BaseViewModel with NavigationMixin {
  final _bottomSheetService = locator<BottomSheetService>();

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

  void showBottomSheet() {
    notifyListeners();
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: drivername,
      description: 'sudhar\nkaruppu',
    );
  }
}
