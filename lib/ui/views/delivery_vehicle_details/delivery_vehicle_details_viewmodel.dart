import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.bottomsheets.dart';
import '../../../app/app.locator.dart';
import '../../../core/mixin.dart';

class DeliveryVehicleDetailsViewModel extends BaseViewModel with NavigationMixin{
  DeliveryVehicleDetailsViewModel();
  final _bottomSheetService = locator<BottomSheetService>();

  void stateview() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: 'State',
      description: '',
    );
  }

  void cityview() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: 'City',
      description: '',
    );
  }
}