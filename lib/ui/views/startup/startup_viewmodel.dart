import 'package:stacked/stacked.dart';
import 'package:car_app1/app/app.locator.dart';
import 'package:car_app1/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../core/mixin.dart';

class StartupViewModel extends BaseViewModel with NavigationMixin {
  final _navigationService = locator<NavigationService>();

  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    await Future.delayed(const Duration(seconds: 3));

    // This is where you can make decisions on where your app should navigate when
    // you have custom startup logic

    _navigationService.replaceWithHomeView();
  }
}
