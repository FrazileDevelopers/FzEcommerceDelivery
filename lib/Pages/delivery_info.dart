import 'package:fz_courier_delivery/Locale/locales.dart';
import 'package:fz_courier_delivery/Theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fz_courier_delivery/Pages/slide_up_panel.dart';

class DeliveryInfo extends StatefulWidget {
  @override
  _DeliveryInfoState createState() => _DeliveryInfoState();
}

class _DeliveryInfoState extends State<DeliveryInfo> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: AppBar(
            leading: InkWell(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.arrow_back_ios,
                color: kMainColor,
                size: 24.0,
              ),
            ),
            title: Text('Order ID 114258'),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
              leading: Image.asset(
                'images/home1.png',
                height: 34.3,
                width: 39.3,
              ),
              title: Text(
                locale.courier,
                style: theme.textTheme.bodyText1
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Text(
                locale.economyText,
                style: theme.textTheme.caption.copyWith(
                    fontWeight: FontWeight.bold, color: theme.hintColor),
              ),
              trailing: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: theme.primaryColor,
                ),
                child: Text(
                  locale.markedPick,
                  style: theme.textTheme.caption.copyWith(
                      fontWeight: FontWeight.bold, color: kWhiteColor),
                ),
              )),
          SizedBox(height: 10.0),
          Expanded(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(40.0)),
                  image: DecorationImage(
                      image: AssetImage('images/map.png'),
                      fit: BoxFit.fitWidth),
                ),
                child: SlideUpPanel()),
          ),
        ],
      ),
    );
  }
}
