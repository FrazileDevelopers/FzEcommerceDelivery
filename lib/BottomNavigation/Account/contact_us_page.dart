import 'package:fz_courier_delivery/Components/continue_button.dart';
import 'package:fz_courier_delivery/Components/custom_app_bar.dart';
import 'package:fz_courier_delivery/Components/entry_field.dart';
import 'package:fz_courier_delivery/Locale/locales.dart';
import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContactUsBody();
  }
}

class ContactUsBody extends StatefulWidget {
  @override
  _ContactUsBodyState createState() => _ContactUsBodyState();
}

class _ContactUsBodyState extends State<ContactUsBody> {
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
                CustomAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    '\n' + locale.contactUs,
                    style: Theme.of(context).textTheme.headline5.copyWith(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                  ),
                ),
                Spacer(flex: 2),
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                  ),
                  child: Container(
                    height: mediaQuery.size.height * 0.77,
                    decoration: BoxDecoration(
                      color: theme.backgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            '\n' + locale.feedbackText,
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(color: theme.primaryColorDark),
                          ),
                        ),
                        Spacer(),
                        EntryField(
                          label: locale.nameText,
                          hint: locale.nameHint,
                          textCapitalization: TextCapitalization.words,
                        ),
                        EntryField(
                          label: locale.phoneText,
                          hint: locale.phoneHint,
                          keyboardType: TextInputType.number,
                        ),
                        EntryField(
                          label: locale.yourmsg,
                          hint: locale.msgHint,
                          textCapitalization: TextCapitalization.sentences,
                        ),
                        Spacer(flex: 2),
                        CustomButton(
                          text: locale.sendMsg,
                          radius:
                              BorderRadius.only(topLeft: Radius.circular(35.0)),
                          onPressed: () => Navigator.pop(context),
                        )
                      ],
                    ),
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
