import 'package:car_app1/app/app.dialogs.dart';
import 'package:car_app1/app/app.locator.dart';
import 'package:car_app1/core/mixin.dart';
import 'package:car_app1/core/models/login_model.dart';
import 'package:car_app1/services/api_service.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked_services/stacked_services.dart';

class UserAuthenticationService with NavigationMixin {
  final _sharedPreference = locator<SharedPreferences>();
  final _dio = Dio();
  final _dialogService = locator<DialogService>();

  late LoginResponse? _loginResponse;
  late LoginRequest? _loginRequest;

  String get token => _loginResponse?.token ?? 'Empty token';
  String get userCredentials => _sharedPreference.getString('email') ?? '';

  LoginRequest? get loginRequest => _loginRequest;
  LoginResponse? get loginResponse => _loginResponse;

  Future<dynamic> login(LoginRequest loginRequest) async {
    _loginResponse =
        await locator<ApiService>().login(loginRequest).catchError((e) {
      _dialogService.showCustomDialog(
          variant: DialogType.error, description: e.toString());
      return e;
    });
    _sharedPreference.setString('email', loginRequest.email ?? '');
    _sharedPreference.setString('password', loginRequest.password ?? '');
    // _sharedPreference.setString('usertype', loginRequest.usertype ?? '');
    // && _loginResponse?.usertype == 'dataEntry'
    if (_loginResponse?.token != null) {
      goToDataEntry();
    }
    // && _loginResponse?.usertype == 'Allocator'
    // else if(_loginResponse?.token != null ) {
    //   goToSecondUser();
    // }
    else {
      Fluttertoast.showToast(msg: 'login Failed', fontSize: 10);
      _dialogService.showCustomDialog(
          variant: DialogType.infoAlert, description: 'login failed');
    }
  }
}
