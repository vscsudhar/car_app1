import 'package:car_app1/ui/common/shared/styles.dart';
import 'package:car_app1/ui/views/date_entry/date_entry_viewmodel.dart';
import 'package:car_app1/ui/views/profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class DrawerView extends ViewModelWidget<DateEntryViewModel> {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context, DateEntryViewModel viewModel) {
    return Drawer(
      child: SingleChildScrollView(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          buildHeader(
            context,
          ),
          buildMenuItems(context, viewModel),
        ]),
      ),
    );
  }

  Widget buildHeader(BuildContext context) => Container(
        color: appViking,
        padding: defaultPadding20,
        child: Column(children: [
          const CircleAvatar(
            radius: 50,
          ),
          verticalSpacing10,
          Text('userName', style: fontFamilyBold.size18.appwhite),
          Text('designation', style: fontFamilyBold.size16.white54)
        ]),
      );

  Widget buildMenuItems(BuildContext context, DateEntryViewModel viewModel) =>
      Column(
        children: [
          ListTile(
              leading: const Icon(Icons.dashboard),
              title: Text(
                "Data Entry",
                style: fontFamilyBold.size16,
              ),
              onTap: () {
                Navigator.pop(context);
              }),
          ListTile(
              leading: const Icon(Icons.person),
              title: Text(
                "Profile",
                style: fontFamilyBold.size16,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileView()));
              }),
          ListTile(
            leading: const Icon(Icons.logout),
            title: Text(
              "Logout",
              style: fontFamilyBold.size16,
            ),
            onTap: () {
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
            },
          ),
        ],
      );
}
