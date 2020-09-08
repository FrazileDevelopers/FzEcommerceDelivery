import 'package:fz_courier_delivery/Locale/locales.dart';
import 'package:fz_courier_delivery/Routes/routes.dart';
import 'package:fz_courier_delivery/Theme/colors.dart';
import 'package:fz_courier_delivery/Theme/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionCard {
  final String image;
  final String itemType;
  final String deliveryType;
  final String paidMoney;
  final String paidVia;
  final String earnedMoney;

  TransactionCard(
    this.image,
    this.itemType,
    this.deliveryType,
    this.paidMoney,
    this.paidVia,
    this.earnedMoney,
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    var mediaQuery = MediaQuery.of(context);
    var theme = Theme.of(context);
    final List<TransactionCard> cards = [
      TransactionCard(
        'images/home2.png',
        locale.foodText,
        locale.economyText,
        '\$ 5.50',
        locale.paidvia + 'PayPal',
        '\$ 3.50',
      ),
      TransactionCard(
        'images/home2.png',
        locale.foodText,
        locale.express,
        '\$ 8.50',
        locale.paidvia + 'PayPal',
        '\$ 5.50',
      ),
      TransactionCard(
        'images/home3.png',
        locale.groceryText,
        locale.express,
        '\$ 11.50',
        locale.paidvia + 'PayPal',
        '\$ 8.50',
      ),
      TransactionCard(
        'images/home1.png',
        locale.courierText,
        locale.economyText,
        '\$ 12.00',
        locale.paidvia + 'PayPal',
        '\$ 9.50',
      ),
      TransactionCard(
        'images/home2.png',
        locale.foodText,
        locale.economyText,
        '\$ 5.50',
        locale.paidvia + 'PayPal',
        '\$ 3.50',
      ),
      TransactionCard(
        'images/home2.png',
        locale.foodText,
        locale.express,
        '\$ 8.50',
        locale.paidvia + 'PayPal',
        '\$ 5.50',
      ),
      TransactionCard(
        'images/home3.png',
        locale.groceryText,
        locale.express,
        '\$ 11.50',
        locale.paidvia + 'PayPal',
        '\$ 8.50',
      ),
      TransactionCard(
        'images/home1.png',
        locale.courierText,
        locale.economyText,
        '\$ 12.00',
        locale.paidvia + 'PayPal',
        '\$ 9.50',
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: mediaQuery.size.height - mediaQuery.padding.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Spacer(flex: 2),
                Text(
                  locale.earnings,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headline5,
                ),
                Spacer(),
                Text(
                  '\$ 178.20',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headline4.copyWith(
                      color: theme.backgroundColor,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(flex: 3),
                ClipRRect(
                  borderRadius: borderRadius,
                  child: Container(
                    height: mediaQuery.size.height * 0.8,
                    decoration: BoxDecoration(
                      color: theme.cardColor,
                      borderRadius: borderRadius,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            locale.recentTrans,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: cards.length,
                          itemBuilder: (context, index) {
                            return Container(
                                decoration: BoxDecoration(
                                  boxShadow: [boxShadow],
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: theme.backgroundColor,
                                ),
                                padding: EdgeInsets.all(12),
                                margin: EdgeInsets.only(bottom: 8),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 12),
                                      child: Image.asset(cards[index].image,
                                          scale: 4.2),
                                    ),
                                    RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text: cards[index].itemType + '\n',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(
                                          text: cards[index].deliveryType,
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption
                                              .copyWith(color: theme.hintColor),
                                        ),
                                      ]),
                                    ),
                                    Spacer(),
                                    RichText(
                                      textAlign: TextAlign.end,
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text: cards[index].paidMoney + '\n',
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption
                                              .copyWith(
                                                  color: theme.hintColor,
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(
                                          text: cards[index].paidVia,
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption,
                                        ),
                                      ]),
                                    ),
                                    SizedBox(width: 24.0),
                                    RichText(
                                      textAlign: TextAlign.end,
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text: cards[index].earnedMoney + '\n',
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption
                                              .copyWith(
                                                  color: theme.hintColor,
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(
                                          text: locale.earned,
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption,
                                        ),
                                      ]),
                                    ),
                                  ],
                                ));
                          },
                        ),
                        SizedBox(height: 64),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
//      Container(
//        decoration: BoxDecoration(
//            borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0)),
//            color: Color(0xffeaeaea)),
//        child: ListView(
//          children: <Widget>[
//            Padding(
//              padding:
//                  const EdgeInsets.only(left: 16.0, top: 20.0, bottom: 19.7),
//              child: Text(
//                locale.recentTrans,
//                style: Theme.of(context).textTheme.bodyText1.copyWith(
//                    color: Color(0xffbbbbbb),
//                    fontWeight: FontWeight.bold,
//                    fontSize: 15.0),
//              ),
//            ),

//            Padding(
//              padding:
//                  const EdgeInsets.only(left: 6.7, right: 6.7, bottom: 6.7),
//              child: Container(
//                //height: 69.3,
//                decoration: BoxDecoration(
//                    boxShadow: [
//                      BoxShadow(
//                        color: kContainerShadowColor,
//                        blurRadius: 19.4, // soften the shadow
//                        spreadRadius: 1.2, //extend the shadow
//                        offset: Offset(
//                          0.0, // Move to right 10  horizontally
//                          10.3, // Move to bottom 10 Vertically
//                        ),
//                      )
//                    ],
//                    borderRadius: BorderRadius.circular(10.0),
//                    color: kWhiteColor),
//                child: ListTile(
//                  leading: Image.asset('images/home3.png',
//                      height: 34.7, width: 40.3),
//                  title: Text(
//                    locale.groceryText,
//                    style: Theme.of(context)
//                        .textTheme
//                        .subtitle2
//                        .copyWith(fontWeight: FontWeight.bold),
//                  ),
//                  subtitle: Text(
//                    locale.economyText,
//                    style: Theme.of(context)
//                        .textTheme
//                        .subtitle2
//                        .copyWith(color: Color(0xffc1c1c1), fontSize: 11.7),
//                  ),
//                  trailing: FittedBox(
//                    child: Row(
//                      children: <Widget>[
//                        Column(
//                          crossAxisAlignment: CrossAxisAlignment.end,
//                          children: <Widget>[
//                            Text(
//                              '\$11.50',
//                              style: Theme.of(context)
//                                  .textTheme
//                                  .subtitle2
//                                  .copyWith(
//                                      color: Color(0xffc1c1c1), fontSize: 11.7),
//                            ),
//                            Text(
//                              '${locale.paidvia} ${locale.cash}',
//                              style: Theme.of(context)
//                                  .textTheme
//                                  .subtitle2
//                                  .copyWith(fontSize: 11.7),
//                            ),
//                          ],
//                        ),
//                        SizedBox(
//                          width: 20.0,
//                        ),
//                        Column(
//                          crossAxisAlignment: CrossAxisAlignment.end,
//                          children: <Widget>[
//                            Text(
//                              '\$8.50',
//                              style: Theme.of(context)
//                                  .textTheme
//                                  .subtitle2
//                                  .copyWith(
//                                      color: Color(0xffc1c1c1), fontSize: 11.7),
//                            ),
//                            Text(
//                              locale.earned,
//                              style: Theme.of(context)
//                                  .textTheme
//                                  .subtitle2
//                                  .copyWith(fontSize: 11.7),
//                            ),
//                          ],
//                        )
//                      ],
//                    ),
//                  ),
//                ),
//              ),
//            ),
//            Padding(
//              padding:
//                  const EdgeInsets.only(left: 6.7, right: 6.7, bottom: 6.7),
//              child: Container(
//                //height: 69.3,
//                decoration: BoxDecoration(
//                    boxShadow: [
//                      BoxShadow(
//                        color: kContainerShadowColor,
//                        blurRadius: 19.4, // soften the shadow
//                        spreadRadius: 1.2, //extend the shadow
//                        offset: Offset(
//                          0.0, // Move to right 10  horizontally
//                          10.3, // Move to bottom 10 Vertically
//                        ),
//                      )
//                    ],
//                    borderRadius: BorderRadius.circular(10.0),
//                    color: kWhiteColor),
//                child: ListTile(
//                  leading: Image.asset('images/home1.png',
//                      height: 34.7, width: 40.3),
//                  title: Text(
//                    locale.courierText,
//                    style: Theme.of(context)
//                        .textTheme
//                        .subtitle2
//                        .copyWith(fontWeight: FontWeight.bold),
//                  ),
//                  subtitle: Text(
//                    locale.economyText,
//                    style: Theme.of(context)
//                        .textTheme
//                        .subtitle2
//                        .copyWith(color: Color(0xffc1c1c1), fontSize: 11.7),
//                  ),
//                  trailing: FittedBox(
//                    child: Row(
//                      children: <Widget>[
//                        Column(
//                          crossAxisAlignment: CrossAxisAlignment.end,
//                          children: <Widget>[
//                            Text(
//                              '\$12.00',
//                              style: Theme.of(context)
//                                  .textTheme
//                                  .subtitle2
//                                  .copyWith(
//                                      color: Color(0xffc1c1c1), fontSize: 11.7),
//                            ),
//                            Text(
//                              '${locale.paidvia} ${locale.cash}',
//                              style: Theme.of(context)
//                                  .textTheme
//                                  .subtitle2
//                                  .copyWith(fontSize: 11.7),
//                            ),
//                          ],
//                        ),
//                        SizedBox(
//                          width: 20.0,
//                        ),
//                        Column(
//                          crossAxisAlignment: CrossAxisAlignment.end,
//                          children: <Widget>[
//                            Text(
//                              '\$9.50',
//                              style: Theme.of(context)
//                                  .textTheme
//                                  .subtitle2
//                                  .copyWith(
//                                      color: Color(0xffc1c1c1), fontSize: 11.7),
//                            ),
//                            Text(
//                              locale.earned,
//                              style: Theme.of(context)
//                                  .textTheme
//                                  .subtitle2
//                                  .copyWith(fontSize: 11.7),
//                            ),
//                          ],
//                        )
//                      ],
//                    ),
//                  ),
//                ),
//              ),
//            ),
//          ],
//        ),
//      ),
    );
  }
}
