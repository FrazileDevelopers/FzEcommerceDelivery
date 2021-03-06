import 'package:fz_courier_delivery/BottomNavigation/MyDeliveries/my_deliveries.dart';
import 'package:fz_courier_delivery/Locale/locales.dart';
import 'package:fz_courier_delivery/Theme/style.dart';
import 'package:flutter/material.dart';

class DeliveredPage extends StatefulWidget {
  @override
  _DeliveredPageState createState() => _DeliveredPageState();
}

class _DeliveredPageState extends State<DeliveredPage> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var locale = AppLocalizations.of(context);
    List<OrderCard> orders = [
      OrderCard(
          'images/home1.png',
          locale.courier,
          locale.economyText,
          locale.markedPick,
          locale.cashOnPickup,
          '\$ 8.50',
          "7-11 Grocery Mart",
          "Samantha Smith"),
      OrderCard(
          'images/home2.png',
          locale.food,
          locale.economyText,
          locale.markedPick,
          locale.cashOnPickup,
          '\$ 8.50',
          "Silver Leaf Restaurant",
          "Samantha Smith"),
      OrderCard(
          'images/home3.png',
          locale.food,
          locale.express,
          locale.markedPick,
          locale.cashOnPickup,
          '\$ 8.50',
          "YOLO Fast Foods",
          "Samantha Smith"),
    ];
    return ClipRRect(
      borderRadius: borderRadius,
      child: Container(
        decoration:
            BoxDecoration(borderRadius: borderRadius, color: theme.cardColor),
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "3 ${locale.activeDeliv}",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: orders.length,
                itemBuilder: (context, index) {
                  return buildCard(theme, locale, orders[index]);
                }),
            SizedBox(height: 64.0),
          ],
        ),
      ),
    );
  }

  Widget buildCard(ThemeData theme, AppLocalizations locale, OrderCard card) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [boxShadow],
        borderRadius: BorderRadius.circular(10.0),
        color: theme.backgroundColor,
      ),
      margin: EdgeInsets.only(bottom: 8),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Image.asset(card.image, scale: 4.2),
            title: Text(
              card.itemType,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: Text(
              card.deliveryType,
              style: Theme.of(context).textTheme.caption.copyWith(
                  color: theme.hintColor, fontWeight: FontWeight.bold),
            ),
            trailing: Container(
              height: 36,
              width: 120,
              decoration: BoxDecoration(
                color: theme.primaryColor,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: Text(
                  locale.delivered,
                  style: theme.textTheme.caption
                      .copyWith(color: theme.backgroundColor),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              SizedBox(width: 80.0),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: locale.paymentMode + '\n',
                    style: Theme.of(context).textTheme.caption.copyWith(
                        color: theme.hintColor, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: card.paymentMode + '\n',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ]),
              ),
              Spacer(),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: locale.payment + '\n',
                      style: Theme.of(context).textTheme.caption.copyWith(
                          color: theme.hintColor, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: card.payment + '\n',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 88.0),
            ],
          ),
          Container(
              height: 48,
              decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 90),
                    child: Text(
                      card.sender,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.caption,
                    ),
                  ),
                  Icon(
                    Icons.location_on,
                    color: theme.primaryColor,
                    size: 21.0,
                  ),
                  Text(
                    "•••••••",
                    style: theme.textTheme.caption
                        .copyWith(color: theme.hoverColor.withOpacity(0.7)),
                  ),
                  Icon(
                    Icons.navigation,
                    color: theme.primaryColor,
                    size: 21.0,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 90),
                    child: Text(
                      card.receiver,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.caption,
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
