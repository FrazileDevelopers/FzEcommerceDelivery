import 'package:fz_courier_delivery/Components/continue_button.dart';
import 'package:fz_courier_delivery/Components/entry_field.dart';
import 'package:fz_courier_delivery/Locale/locales.dart';
import 'package:flutter/material.dart';

import '../signin_navigator.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginBody();
  }
}

class LoginBody extends StatefulWidget {
  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    var mediaQuery = MediaQuery.of(context);
    var theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: mediaQuery.size.height - mediaQuery.padding.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Spacer(),
                Image.asset(
                  "images/courierone.png",
                  scale: 3,
                ),
                Spacer(),
                Container(
                  height: mediaQuery.size.height * 0.78,
                  decoration: BoxDecoration(
                    color: theme.backgroundColor,
                    borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(35.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 32.0),
                      Text(
                        locale.signIn,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headline5
                            .copyWith(color: theme.hoverColor),
                      ),
                      Spacer(flex: 3),
                      EntryField(
                        label: locale.countryText,
                        hint: locale.selectCountryFromList,
                        suffixIcon: Icons.arrow_drop_down,
                        readOnly: true,
                      ),
                      EntryField(
                        label: locale.phoneText,
                        hint: locale.phoneHint,
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: 16.0),
                      CustomButton(
                        radius: BorderRadius.only(
                            topLeft: Radius.circular(35.0),
                            bottomRight: Radius.circular(35.0)),
                        onPressed: () =>
                            Navigator.pushNamed(context, SignInRoutes.signUp),
                      ),
                      Text('\n' + locale.signinOTP,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.subtitle1),
                      Spacer(flex: 3),
                      Text(
                        locale.orContinue,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headline5
                            .copyWith(color: theme.hoverColor),
                      ),
                      Spacer(flex: 2),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: CustomButton(
                              text: locale.facebook,
                              padding: 14.0,
                              color: Color(0xff3b45c1),
                              onPressed: () => Navigator.pushNamed(
                                  context, SignInRoutes.socialLogin),
                            ),
                          ),
                          Expanded(
                            child: CustomButton(
                              text: locale.google,
                              padding: 14.0,
                              color: Color(0xffff452c),
                              onPressed: () => Navigator.pushNamed(
                                  context, SignInRoutes.socialLogin),
                            ),
                          ),
                          Expanded(
                            child: CustomButton(
                              text: locale.apple,
                              padding: 14.0,
                              color: theme.primaryColorDark,
                              onPressed: () => Navigator.pushNamed(
                                  context, SignInRoutes.socialLogin),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
