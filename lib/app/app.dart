import 'package:car_app1/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:car_app1/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:car_app1/ui/views/login/home_view.dart';
import 'package:car_app1/ui/views/register/register_view.dart';
import 'package:car_app1/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:car_app1/ui/views/delivery_vehicle_details/delivery_vehicle_details_view.dart';
import 'package:car_app1/ui/views/allocated_view/allocated_view_view.dart';

import '../ui/views/seconduser/second_user_view.dart';
import '../ui/views/enter_vehicle_details/enter_vehicle_details_view.dart';
import 'package:car_app1/ui/views/date_entry/date_entry_view.dart';
import 'package:car_app1/ui/views/driver_details/driver_details_view.dart';
import 'package:car_app1/ui/views/driver_report/driver_report_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: DeliveryVehicleDetailsView),
    MaterialRoute(page: AllocatedView),
    MaterialRoute(page: RegisterView),
    MaterialRoute(page: EnterVehicleDetailsView),
    MaterialRoute(page: SecondUserView),
    MaterialRoute(page: DateEntryView),
    MaterialRoute(page: DriverDetailsView),
    MaterialRoute(page: DriverReportView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // LazySingleton(classType: ApiService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
