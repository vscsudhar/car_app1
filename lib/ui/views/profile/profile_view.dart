import 'package:car_app1/ui/common/shared/styles.dart';
import 'package:car_app1/ui/common/ui_helpers.dart';
import 'package:car_app1/ui/common/widgets/appbar_background.dart';
import 'package:car_app1/ui/common/widgets/box.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'profile_viewmodel.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProfileViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'ABC Car Care',
            style: fontFamilyBold.size26,
          ),
          centerTitle: true,
          backgroundColor: appwhite1,
          elevation: 0,
          flexibleSpace: buildAppBarBackground(),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                verticalSpaceLarge,
                const CircleAvatar(
                  radius: 100,
                ),
                verticalSpacing10,
                // Text('Edit', style: fontFamilyRegular.size14.appChambray1),
                // horizontalDivider,
                verticalSpacing12,
                Text('userName', style: fontFamilyBold.size20.appChambray1),
                Text('designation',
                    style: fontFamilyMedium.size16.appChambray1),
                Text('Email', style: fontFamilyMedium.size16.appChambray1),
                Text('Phone NO', style: fontFamilyMedium.size16.appChambray1),
                Text('Area', style: fontFamilyMedium.size16.appChambray1),
                verticalSpacing10,
                horizontalDivider,
                verticalSpacing10,

                Box(
                  // onTap: () => viewModel.,
                  margin: defaultPadding8,
                  boxColor: appViking,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Change Password',
                        style: fontFamilyMedium.size20,
                      ),
                      const Icon(
                        Icons.arrow_circle_right_outlined,
                        size: 40,
                        color: appChambray,
                      )
                    ],
                  ),
                ),
                Box(
                  onTap: () => viewModel.logoutbutton(context),
                  margin: defaultPadding8,
                  boxColor: appViking,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Logout',
                        style: fontFamilyMedium.size20,
                      ),
                      const Icon(
                        Icons.arrow_circle_right_outlined,
                        size: 40,
                        color: Colors.redAccent,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  @override
  ProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileViewModel();
}
