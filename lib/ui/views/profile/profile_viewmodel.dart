import 'package:car_app1/core/mixin.dart';
import 'package:car_app1/ui/common/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ProfileViewModel extends BaseViewModel with NavigationMixin {
  ProfileViewModel();

  void logoutbutton(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("LogOut"),
            content: const Text('Are you sure to want Logout?'),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.cancel,
                    color: Colors.redAccent,
                  )),
              IconButton(
                  onPressed: () {
                    // viewModel.logout();
                  },
                  icon: const Icon(
                    Icons.done,
                    color: appcolor2699FB,
                  ))
            ],
          );
        });
  }
}
