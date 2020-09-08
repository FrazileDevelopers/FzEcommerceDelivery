import 'package:fz_courier_delivery/BottomNavigation/Account/contact_us_page.dart';
import 'package:fz_courier_delivery/BottomNavigation/Account/my_profile_page.dart';
import 'package:fz_courier_delivery/BottomNavigation/Account/tnc_page.dart';
import 'package:fz_courier_delivery/BottomNavigation/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fz_courier_delivery/BottomNavigation/MyDeliveries/my_deliveries.dart';
import 'package:fz_courier_delivery/Pages/delivery_info.dart';

class PageRoutes {
  static const String deliveryInfo = 'delivery_info';
  static const String bottomNavigation = 'home';
  static const String deliveries = 'my_deliveries';
  static const String myProfilePage = 'my_profile_page';
  static const String tncPage = 'tnc_page';
  static const String contactUsPage = 'contact_us_page';

  Map<String, WidgetBuilder> routes() {
    return {
      deliveryInfo: (context) => DeliveryInfo(),
      deliveries: (context) => MyDeliveriesPage(),
      bottomNavigation: (context) => BottomNavigation(),
      myProfilePage: (context) => MyProfilePage(),
      tncPage: (context) => TncPage(),
      contactUsPage: (context) => ContactUsPage(),
    };
  }
}
