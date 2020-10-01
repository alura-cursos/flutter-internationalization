
import 'package:bytebank/components/localization/eager_localization.dart';
import 'package:bytebank/components/localization/i18n_messages.dart';
import 'package:flutter/material.dart';

class DashboardViewLazyI18N {
  final I18NMessages _messages;

  DashboardViewLazyI18N(this._messages);

  String get transfer => _messages.get("transfer");

  // _ é para constante. defina se você vai usar também para não constante!
  String get transaction_feed => _messages.get("transaction_feed");

  String get change_name => _messages.get("change_name");
}

class DashboardViewI18N extends ViewI18N {
  DashboardViewI18N(BuildContext context) : super(context);

  String get transfer => localize({"pt-br": "Transferir", "en": "Transfer"});

  // _ é para constante. defina se você vai usar também para não constante!
  String get transaction_feed =>
      localize({"pt-br": "Transações", "en": "Transaction Feed"});

  String get change_name =>
      localize({"pt-br": "Mudar nome", "en": 'Change name'});
}
