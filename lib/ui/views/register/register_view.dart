import 'package:car_app1/ui/common/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/shared/styles.dart';
import '../../common/widgets/text_field2.dart';
import '../login/home_view.dart';
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
                          '$create \n$acc.....!',
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
                      hintText: name,
                      hintStyle: fontFamilyMedium,
                    ),
                    verticalSpacing10,
                    const TextField2(
                      hintText: email,
                      hintStyle: fontFamilyRegular,
                    ),
                    verticalSpacing10,
                    const TextField2(
                      hintText: phone,
                      hintStyle: fontFamilyRegular,
                    ),
                    verticalSpacing10,
                    TextField2(
                      hintText: '$state $name',
                      hintStyle: fontFamilyRegular,
                      readOnly: true,
                      onTap: () => viewModel.stateview(),
                    ),
                    verticalSpacing10,
                    TextField2(
                      hintText: '$city $name',
                      hintStyle: fontFamilyRegular,
                      readOnly: true,
                      onTap: () => viewModel.cityview(),
                    ),
                    verticalSpacing10,
                    const TextField2(
                      hintText: pass,
                      hintStyle: fontFamilyRegular,
                    ),
                    verticalSpacing10,
                    const TextField2(
                      hintText: '$retype $pass',
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
                          onTap: () => viewModel.goToDataEntry(),
                          child: Padding(
                            padding: rightPadding40 + rightPadding40,
                            child: Text(register, style: fontFamilyBold.size32),
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
                            alreadyhaveacc,
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
                                login,
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
