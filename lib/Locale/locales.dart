import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'dart:async';
import 'arabic.dart';
import 'english.dart';
import 'french.dart';
import 'indonesian.dart';
import 'portuguese.dart';
import 'spanish.dart';

class AppLocalizations {
  final Locale locale;
  AppLocalizations(this.locale);

  //static Languages language = Languages();

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': english(),
    'ar': arabic(),
    'pt': portuguese(),
    'fr': french(),
    'id': indonesian(),
    'es': spanish(),
  };

  String get bodyText1 {
    return _localizedValues[locale.languageCode]['bodyText1'];
  }

  String get bodyText2 {
    return _localizedValues[locale.languageCode]['bodyText2'];
  }

  String get phoneText {
    return _localizedValues[locale.languageCode]['phoneText'];
  }

  String get continueText {
    return _localizedValues[locale.languageCode]['continueText'];
  }

  String get vegetableText {
    return _localizedValues[locale.languageCode]['vegetableText'];
  }

  String get foodText {
    return _localizedValues[locale.languageCode]['foodText'];
  }

  String get economyText {
    return _localizedValues[locale.languageCode]['economyText'];
  }

  String get paidvia {
    return _localizedValues[locale.languageCode]['paidvia'];
  }

  String get earned {
    return _localizedValues[locale.languageCode]['earned'];
  }

  String get courierText {
    return _localizedValues[locale.languageCode]['courierText'];
  }

  String get groceryText {
    return _localizedValues[locale.languageCode]['groceryText'];
  }

  String get feedbackText {
    return _localizedValues[locale.languageCode]['feedbackText'];
  }

  String get yourmsg {
    return _localizedValues[locale.languageCode]['yourmsg'];
  }

  String get msgHint {
    return _localizedValues[locale.languageCode]['msgHint'];
  }

  String get sendMsg {
    return _localizedValues[locale.languageCode]['sendMsg'];
  }

  String get courier {
    return _localizedValues[locale.languageCode]['courier'];
  }

  String get markedPick {
    return _localizedValues[locale.languageCode]['markedPick'];
  }

  String get food {
    return _localizedValues[locale.languageCode]['food'];
  }

  String get payment {
    return _localizedValues[locale.languageCode]['payment'];
  }

  String get paymentMode {
    return _localizedValues[locale.languageCode]['paymentMode'];
  }

  String get express {
    return _localizedValues[locale.languageCode]['express'];
  }

  String get activeDeliv {
    return _localizedValues[locale.languageCode]['activeDeliv'];
  }

  String get getDir {
    return _localizedValues[locale.languageCode]['getDir'];
  }

  String get openmap {
    return _localizedValues[locale.languageCode]['openmap'];
  }

  String get delivInfo {
    return _localizedValues[locale.languageCode]['delivInfo'];
  }

  String get courierType {
    return _localizedValues[locale.languageCode]['courierType'];
  }

  String get height {
    return _localizedValues[locale.languageCode]['height'];
  }

  String get length {
    return _localizedValues[locale.languageCode]['length'];
  }

  String get width {
    return _localizedValues[locale.languageCode]['width'];
  }

  String get weight {
    return _localizedValues[locale.languageCode]['weight'];
  }

  String get customText {
    return _localizedValues[locale.languageCode]['customText'];
  }

  String get homeText {
    return _localizedValues[locale.languageCode]['homeText'];
  }

  String get orderText {
    return _localizedValues[locale.languageCode]['orderText'];
  }

  String get accountText {
    return _localizedValues[locale.languageCode]['accountText'];
  }

  String get myAccount {
    return _localizedValues[locale.languageCode]['myAccount'];
  }

  String get savedAddresses {
    return _localizedValues[locale.languageCode]['savedAddresses'];
  }

  String get tnc {
    return _localizedValues[locale.languageCode]['tnc'];
  }

  String get knowtnc {
    return _localizedValues[locale.languageCode]['knowtnc'];
  }

  String get shareApp {
    return _localizedValues[locale.languageCode]['shareApp'];
  }

  String get shareFriends {
    return _localizedValues[locale.languageCode]['shareFriends'];
  }

  String get support {
    return _localizedValues[locale.languageCode]['support'];
  }

  String get aboutUs {
    return _localizedValues[locale.languageCode]['aboutUs'];
  }

  String get contactUs {
    return _localizedValues[locale.languageCode]['contactUs'];
  }

  String get viewProfile {
    return _localizedValues[locale.languageCode]['viewProfile'];
  }

  String get connectQuery {
    return _localizedValues[locale.languageCode]['connectQuery'];
  }

  String get logout {
    return _localizedValues[locale.languageCode]['logout'];
  }

  String get loggingout {
    return _localizedValues[locale.languageCode]['loggingout'];
  }

  String get sureText {
    return _localizedValues[locale.languageCode]['sureText'];
  }

  String get no {
    return _localizedValues[locale.languageCode]['no'];
  }

  String get yes {
    return _localizedValues[locale.languageCode]['yes'];
  }

  String get signoutAccount {
    return _localizedValues[locale.languageCode]['signoutAccount'];
  }

  String get myProfile {
    return _localizedValues[locale.languageCode]['myProfile'];
  }

  String get signIn {
    return _localizedValues[locale.languageCode]['signIn'];
  }

  String get earnings {
    return _localizedValues[locale.languageCode]['earnings'];
  }

  String get recentTrans {
    return _localizedValues[locale.languageCode]['recentTrans'];
  }

  String get countryText {
    return _localizedValues[locale.languageCode]['countryText'];
  }

  String get nameText {
    return _localizedValues[locale.languageCode]['nameText'];
  }

  String get verificationText {
    return _localizedValues[locale.languageCode]['verificationText'];
  }

  String get checkPhoneNetwork {
    return _localizedValues[locale.languageCode]['checkPhoneNetwork'];
  }

  String get invalidOTP {
    return _localizedValues[locale.languageCode]['invalidOTP'];
  }

  String get enterOTP {
    return _localizedValues[locale.languageCode]['enterOTP'];
  }

  String get otpText {
    return _localizedValues[locale.languageCode]['otpText'];
  }

  String get otpText1 {
    return _localizedValues[locale.languageCode]['otpText1'];
  }

  String get submitText {
    return _localizedValues[locale.languageCode]['submitText'];
  }

  String get resendText {
    return _localizedValues[locale.languageCode]['resendText'];
  }

  String get phoneHint {
    return _localizedValues[locale.languageCode]['phoneHint'];
  }

  String get emailText {
    return _localizedValues[locale.languageCode]['emailText'];
  }

  String get emailHint {
    return _localizedValues[locale.languageCode]['emailHint'];
  }

  String get nameHint {
    return _localizedValues[locale.languageCode]['nameHint'];
  }

  String get signinOTP {
    return _localizedValues[locale.languageCode]['signinOTP'];
  }

  String get orContinue {
    return _localizedValues[locale.languageCode]['orContinue'];
  }

  String get facebook {
    return _localizedValues[locale.languageCode]['facebook'];
  }

  String get google {
    return _localizedValues[locale.languageCode]['google'];
  }

  String get apple {
    return _localizedValues[locale.languageCode]['apple'];
  }

  String get networkError {
    return _localizedValues[locale.languageCode]['networkError'];
  }

  String get invalidNumber {
    return _localizedValues[locale.languageCode]['invalidNumber'];
  }

  String get invalidName {
    return _localizedValues[locale.languageCode]['invalidName'];
  }

  String get invalidEmail {
    return _localizedValues[locale.languageCode]['invalidEmail'];
  }

  String get courierInfo {
    return _localizedValues[locale.languageCode]['courierInfo'];
  }

  String get invalidNameEmail {
    return _localizedValues[locale.languageCode]['invalidNameEmail'];
  }

  String get signinfailed {
    return _localizedValues[locale.languageCode]['signinfailed'];
  }

  String get socialText {
    return _localizedValues[locale.languageCode]['socialText'];
  }

  String get registerText {
    return _localizedValues[locale.languageCode]['registerText'];
  }

  String get selectCountryFromList {
    return _localizedValues[locale.languageCode]['selectCountryFromList'];
  }

  String get hey {
    return _localizedValues[locale.languageCode]['hey'];
  }

  String get cash {
    return _localizedValues[locale.languageCode]['cash'];
  }

  String get newDeliveries {
    return _localizedValues[locale.languageCode]['newDeliveries'];
  }

  String get delivered {
    return _localizedValues[locale.languageCode]['delivered'];
  }

  String get cashOnPickup {
    return _localizedValues[locale.languageCode]['cashOnPickup'];
  }

  String get boxCourier {
    return _localizedValues[locale.languageCode]['boxCourier'];
  }

  String get frangible {
    return _localizedValues[locale.languageCode]['frangible'];
  }

  String get birthdayGiftContainingFlowerVasCarryCarefullyFrangible {
    return _localizedValues[locale.languageCode]
        ['birthdayGiftContainingFlowerVasCarryCarefullyFrangible'];
  }

  String get paymentViaCashPickup {
    return _localizedValues[locale.languageCode]['paymentViaCashPickup'];
  }

  String get companyPrivacyPolicy {
    return _localizedValues[locale.languageCode]['companyPrivacyPolicy'];
  }

  String get accept {
    return _localizedValues[locale.languageCode]['accept'];
  }

  String get markDelivered {
    return _localizedValues[locale.languageCode]['markDelivered'];
  }

  String get setDelivery {
    return _localizedValues[locale.languageCode]['setDelivery'];
  }

  String get setPickup {
    return _localizedValues[locale.languageCode]['setPickup'];
  }

  String get done {
    return _localizedValues[locale.languageCode]['done'];
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      ['en', 'ar', 'pt', 'fr', 'id', 'es'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) {
    // Returning a SynchronousFuture here because an async "load" operation
    // isn't needed to produce an instance of AppLocalizations.
    return SynchronousFuture<AppLocalizations>(AppLocalizations(locale));
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
