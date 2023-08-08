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
                                'Hello \nAgain....!',
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
                        hintText: 'user Id',
                        hintStyle: fontFamilyRegular,
                        validator: (val) => val == null || val.isEmpty
                            ? 'userId is required'
                            : null,
                      ),
                      verticalSpacing16,
                      TextField2(
                        hintText: 'password',
                        hintStyle: fontFamilyRegular,
                        validator: (val) => val == null || val.isEmpty
                            ? 'password is required'
                            : null,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot password?',
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
                              onTap: () {},
                              child: Text(
                                'Login',
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
                            "Do you don't Have An Account?",
                            style: fontFamilyMedium.size12.black45,
                          ),
                          TextButton(
                            onPressed: () => viewModel.goToRegister(),
                            child: Text(
                              'Create New Account',
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
