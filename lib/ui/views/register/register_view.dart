import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/shared/styles.dart';
import '../../common/widgets/text_field2.dart';
import '../enter_vehicle_details/enter_vehicle_details_view.dart';
import '../home/home_view.dart';
import 'register_viewmodel.dart';

class RegisterView extends StackedView<RegisterViewModel> {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    RegisterViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // const BackGround(),
          SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/icons/back1.png'),
                Image.asset('assets/icons/back2.png')
              ],
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: defaultPadding20,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpacing40,
                    Row(
                      children: [
                        Text(
                          'Create \nAccount.....!',
                          style: fontFamilyBold.size34.appwhite,
                        ),
                      ],
                    ),
                    // const Text(
                    //   'Please Enter Detail to Register',
                    //   style: TextStyle(color: Colors.white70),
                    // ),
                    verticalSpacing10,
                    // verticalSpacing20,
                    const TextField2(
                      hintText: 'Name',
                      hintStyle: fontFamilyMedium,
                    ),
                    verticalSpacing10,
                    const TextField2(
                      hintText: 'Email',
                      hintStyle: fontFamilyRegular,
                    ),
                    verticalSpacing10,
                    const TextField2(
                      hintText: 'Phone No',
                      hintStyle: fontFamilyRegular,
                    ),
                    verticalSpacing10,
                    TextField2(
                      hintText: 'State Name',
                      hintStyle: fontFamilyRegular,
                      readOnly: true,
                      onTap: () => viewModel.stateview(),
                    ),
                    verticalSpacing10,
                    TextField2(
                      hintText: 'City Name',
                      hintStyle: fontFamilyRegular,
                      readOnly: true,
                      onTap: () => viewModel.cityview(),
                    ),
                    verticalSpacing10,
                    const TextField2(
                      hintText: 'Password',
                      hintStyle: fontFamilyRegular,
                    ),
                    verticalSpacing10,
                    const TextField2(
                      hintText: 'Re-Enter Password',
                      hintStyle: fontFamilyRegular,
                    ),
                    verticalSpacing20,
                    verticalSpacing12,
                    // Box(
                    //     onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const EnterVehicleDetailsView())),
                    //     child: const Text(
                    //       'Register',
                    //       style: fontFamilyBold,
                    //       textAlign: TextAlign.center,
                    //     )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () => viewModel.goToVehicleInputDetails(),
                          child: Padding(
                            padding: rightPadding40 + rightPadding40,
                            child:
                                Text('Register', style: fontFamilyBold.size32),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: defaultPadding8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            'Already Have an Account?',
                            style: fontFamilyRegular,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeView()));
                              },
                              child: const Text(
                                'Login',
                                style: fontFamilyMedium,
                              ))
                        ],
                      ),
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }

  @override
  RegisterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RegisterViewModel();
}
