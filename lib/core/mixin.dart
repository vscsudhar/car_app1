import 'package:car_app1/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';

mixin NavigationMixin {
  final NavigationService _navigationService = locator<NavigationService>();

  void goToHome() => _navigationService.navigateTo(Routes.homeView);
  void goToRegister() => _navigationService.navigateTo(Routes.registerView);
  void goToVehicleInputDetails() =>
      _navigationService.navigateTo(Routes.enterVehicleDetailsView);
  void goToDeliveryVehicleDetails() =>
      _navigationService.navigateTo(Routes.deliveryVehicleDetailsView);
  void goToAllocatedView() =>
      _navigationService.navigateTo(Routes.allocatedView);
  void goToSecondUser() => _navigationService.navigateTo(Routes.secondUserView);
  void goToSplash() => _navigationService.navigateTo(Routes.startupView);
  void goToDataEntry() => _navigationService.navigateTo(Routes.dateEntryView);
  void goToProfile() => _navigationService.navigateTo(Routes.profileView);
  void goToDriverDetails() =>
      _navigationService.navigateTo(Routes.driverDetailsView);
  void goToDriverReport() =>
      _navigationService.navigateTo(Routes.driverReportView);
}
