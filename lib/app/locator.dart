import 'package:car_app1/services/api_service.dart';
import 'package:car_app1/services/authentication/user_authentication_service.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked_services/stacked_services.dart';

final locator = GetIt.instance;

Future<void> setUpLocator() async {
  var sharedPreference = await SharedPreferences.getInstance();
  locator.registerLazySingleton(() => sharedPreference);
  locator.registerLazySingleton(() => UserAuthenticationService());
  locator.registerLazySingleton<ApiService>(() => ApiService.init());
  locator.registerLazySingleton(() => DialogService());
}
