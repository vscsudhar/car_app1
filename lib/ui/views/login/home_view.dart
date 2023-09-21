import 'package:car_app1/ui/common/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../common/shared/styles.dart';
import '../../common/widgets/background.dart';
import '../../common/widgets/text_field2.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const BackGround(),
          SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    children: [
                      verticalSpacing20,
                      verticalSpacing60,
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: leftPadding20,
                              child: Text(
                                '$hello \n$again....!',
                                style: fontFamilyBold.size32.appwhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 200,
                        width: 200,
                        // child: Text('Logo',textAlign: TextAlign.center,),
                      ),
                      TextField2(
                        hintText: userid,
                        initialValue: 'eve.holt@reqres.in',
                        hintStyle: fontFamilyRegular,
                        validator: (val) => val == null || val.isEmpty
                            ? '$userid is $require'
                            : null,
                        onSaved: (email) =>
                            viewModel.loginRequest.email = email,
                      ),
                      verticalSpacing16,
                      TextField2(
                        initialValue: 'cityslicka',
                        hintText: pass,
                        hintStyle: fontFamilyRegular,
                        validator: (val) => val == null || val.isEmpty
                            ? '$pass is $require'
                            : null,
                        onSaved: (passsword) =>
                            viewModel.loginRequest.password = passsword,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              '$forgot $pass?',
                              style: fontFamilyMedium.ceon,
                            ),
                          ),
                        ],
                      ),
                      verticalSpacing8,
                      Padding(
                        padding: rightPadding40 +
                            rightPadding40 +
                            rightPadding10 +
                            topPadding8,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                if (formKey.currentState?.validate() ?? false) {
                                  formKey.currentState?.save();
                                  viewModel.userlogin();
                                }
                              },
                              child: Text(
                                login,
                                style: fontFamilyBold.size34.black,
                              ),
                            )
                          ],
                        ),
                      ),
                      // const Box(
                      //     // boxColor: Colors.black,

                      //     child: Text(
                      //   'login',
                      //   textAlign: TextAlign.center,
                      // )),
                      verticalSpacing16,
                      verticalSpacing12,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            donthaveacc,
                            style: fontFamilyMedium.size12.black45,
                          ),
                          TextButton(
                            onPressed: () => viewModel.goToRegister(),
                            child: Text(
                              createnewacc,
                              style: fontFamilyMedium.size14.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
