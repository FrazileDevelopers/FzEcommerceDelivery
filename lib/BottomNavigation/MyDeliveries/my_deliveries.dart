import 'package:fz_courier_delivery/BottomNavigation/MyDeliveries/delivered.dart';
import 'package:fz_courier_delivery/BottomNavigation/MyDeliveries/new_deliveries.dart';
import 'package:fz_courier_delivery/Locale/locales.dart';
import 'package:fz_courier_delivery/Theme/colors.dart';
import 'package:fz_courier_delivery/Theme/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderCard {
  final String image;
  final String itemType;
  final String deliveryType;
  final String status;
  final String paymentMode;
  final String payment;
  final String sender;
  final String receiver;

  OrderCard(
    this.image,
    this.itemType,
    this.deliveryType,
    this.status,
    this.paymentMode,
    this.payment,
    this.sender,
    this.receiver,
  );
}

class MyDeliveriesPage extends StatefulWidget {
  @override
  _MyDeliveriesPageState createState() => _MyDeliveriesPageState();
}

class _MyDeliveriesPageState extends State<MyDeliveriesPage> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 8),
              child: AppBar(
                centerTitle: true,
                bottom: TabBar(
                  labelStyle: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontWeight: FontWeight.bold),
                  tabs: [
                    Tab(text: locale.newDeliveries),
                    Tab(text: locale.delivered),
                  ],
                  isScrollable: true,
                  labelColor: kTextColor,
                  unselectedLabelColor: Color(0xff80fff9e9),
                  indicatorPadding: EdgeInsets.symmetric(horizontal: 24.0),
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              NewDeliveriesPage(),
              DeliveredPage(),
            ],
          )),
    );
  }
}
