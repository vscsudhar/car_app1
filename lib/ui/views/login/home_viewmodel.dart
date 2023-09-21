import 'package:car_app1/core/models/login_model.dart';
import 'package:car_app1/init_app.dart';
import 'package:car_app1/services/api_service.dart';
import 'package:car_app1/services/authentication/user_authentication_service.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.bottomsheets.dart';
import '../../../app/app.dialogs.dart';
import '../../../app/app.locator.dart';
import '../../../core/mixin.dart';
import '../../common/app_strings.dart';

class HomeViewModel extends BaseViewModel with NavigationMixin {
  HomeViewModel() {
    _loginRequest = LoginRequest();
    init();
  }
  init() async {
    _sharedPreference = await SharedPreferences.getInstance();
  }

  String? _email;
  String? _password;

  late LoginRequest _loginRequest;
  late SharedPreferences _sharedPreference;
  final _apiService = ApiService.init();

  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  final _userAuthenticationService = locator<UserAuthenticationService>();

  String? get email => loginRequest.email;
  String? get password => loginRequest.password;
  LoginRequest get loginRequest => _loginRequest;

  void userlogin() async {
    setBusy(true);
    notifyListeners();
    await _userAuthenticationService.login(loginRequest);
    setBusy(false);
    final token = _userAuthenticationService.loginResponse?.token;
    if (token != null) {
      _sharedPreference.setString('token', token);
    } else {
      showErrDialog('login failed');
    }
  }
}

void showErrDialog(String message) {
  Fluttertoast.showToast(
    msg: message,
    fontSize: 10,
    gravity: ToastGravity.CENTER,
  );
  // _dialogService.showCustomDialog(title: "Message", description: message);
}
