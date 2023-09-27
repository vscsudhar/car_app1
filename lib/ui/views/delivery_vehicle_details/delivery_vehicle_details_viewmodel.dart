import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.bottomsheets.dart';
import '../../../app/app.locator.dart';
import '../../../core/mixin.dart';

class DeliveryVehicleDetailsViewModel extends BaseViewModel
    with NavigationMixin {
  DeliveryVehicleDetailsViewModel();
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

  void cityview() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: 'City',
      description: '',
    );
  }
}
