import 'package:fz_courier_delivery/Locale/locales.dart';
import 'package:fz_courier_delivery/Theme/colors.dart';
import 'package:fz_courier_delivery/Theme/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlideUpPanel extends StatefulWidget {
  @override
  _SlideUpPanelState createState() => _SlideUpPanelState();
}

class _SlideUpPanelState extends State<SlideUpPanel> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      minChildSize: 0.25,
      initialChildSize: 0.25,
      maxChildSize: 0.975,
      builder: (context, controller) {
        var locale = AppLocalizations.of(context);
        var theme = Theme.of(context);
        var boxDecoration = BoxDecoration(
          boxShadow: [boxShadow],
          color: kWhiteColor,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        );
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 6.7),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            controller: controller,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.75,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                      decoration: boxDecoration,
                      child: ListTile(
                        title: Text(
                          locale.getDir,
                          style: theme.textTheme.headline6.copyWith(
                              color: theme.primaryColorDark,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(locale.openmap,
                            style: theme.textTheme.caption.copyWith(
                                color: theme.hintColor,
                                fontWeight: FontWeight.bold)),
                        trailing: CircleAvatar(
                          radius: 25.0,
                          backgroundColor: theme.primaryColor,
                          child: Icon(Icons.navigation, color: kWhiteColor),
                        ),
                      )),
                  SizedBox(height: 10.0),
                  Container(
                    padding: EdgeInsets.only(top: 20.0, bottom: 16.0),
                    decoration: boxDecoration,
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.location_on, color: kMainColor),
                          title: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: 'Walmart' + '\n',
                                style: theme.textTheme.subtitle2.copyWith(
                                    color: theme.hintColor.withOpacity(0.7)),
                              ),
                              TextSpan(
                                  text: 'Emili Williamson',
                                  style: theme.textTheme.headline6.copyWith(
                                      color: theme.primaryColorDark,
                                      height: 1.5))
                            ]),
                          ),
                          subtitle: Text(
                            '128 Mott St, New York, NY 10013, United States',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(height: 1.5),
                          ),
                          trailing: Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                                border: Border.all(color: theme.primaryColor),
                                shape: BoxShape.circle),
                            child: Icon(Icons.phone, color: theme.primaryColor),
                          ),
                        ),
                        SizedBox(height: 12.0),
                        ListTile(
                          leading: Icon(Icons.navigation, color: kMainColor),
                          title: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: 'City Garden' + '\n',
                                style: theme.textTheme.subtitle2.copyWith(
                                    color: theme.hintColor.withOpacity(0.7)),
                              ),
                              TextSpan(
                                  text: 'Samantha Smith',
                                  style: theme.textTheme.headline6.copyWith(
                                      color: theme.primaryColorDark,
                                      height: 1.5))
                            ]),
                          ),
                          subtitle: Text(
                            '2210 St. Merry Church, New York, NY 10013, United States',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(height: 1.5),
                          ),
                          trailing: Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                                border: Border.all(color: theme.primaryColor),
                                shape: BoxShape.circle),
                            child: Icon(Icons.phone, color: theme.primaryColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: boxDecoration,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: locale.courierType + '\n',
                                  style: theme.textTheme.subtitle2.copyWith(
                                      color: theme.hintColor.withOpacity(0.7)),
                                ),
                                TextSpan(
                                  text: locale.boxCourier,
                                  style: theme.textTheme.bodyText1
                                      .copyWith(fontSize: 16),
                                ),
                              ]),
                            ),
                            Spacer(),
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: locale.frangible + '\n',
                                  style: theme.textTheme.subtitle2.copyWith(
                                      color: theme.hintColor.withOpacity(0.7)),
                                ),
                                TextSpan(
                                  text: locale.yes,
                                  style: theme.textTheme.bodyText1
                                      .copyWith(fontSize: 16),
                                ),
                              ]),
                            ),
                            SizedBox(width: 40),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: locale.height +
                                      ' ' +
                                      locale.width +
                                      ' ' +
                                      locale.length +
                                      '\n',
                                  style: theme.textTheme.subtitle2.copyWith(
                                      color: theme.hintColor.withOpacity(0.7)),
                                ),
                                TextSpan(
                                  text: '60 x 75 x 124 (cm)',
                                  style: theme.textTheme.bodyText1
                                      .copyWith(fontSize: 16),
                                ),
                              ]),
                            ),
                            Spacer(),
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: locale.weight + '\n',
                                  style: theme.textTheme.subtitle2.copyWith(
                                      color: theme.hintColor.withOpacity(0.7)),
                                ),
                                TextSpan(
                                  text: '10 kg',
                                  style: theme.textTheme.bodyText1
                                      .copyWith(fontSize: 16),
                                ),
                              ]),
                            ),
                            SizedBox(width: 54),
                          ],
                        ),
                        SizedBox(height: 16),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: locale.courierInfo + '\n',
                              style: theme.textTheme.subtitle2.copyWith(
                                  color: theme.hintColor.withOpacity(0.7)),
                            ),
                            TextSpan(
                              text: locale
                                  .birthdayGiftContainingFlowerVasCarryCarefullyFrangible,
                              style: theme.textTheme.bodyText1
                                  .copyWith(fontSize: 16),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                      decoration: boxDecoration,
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: ListTile(
                        title: Text(
                          locale.economyText,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        subtitle: Text(locale.paymentViaCashPickup,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                .copyWith(
                                    color: Color(0xffc2c2c2), fontSize: 11.7)),
                        trailing: Text(
                          '\$8.60',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              .copyWith(color: theme.primaryColorDark),
                        ),
                      )),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
