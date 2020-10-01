// localization e internationalization

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'container.dart';

class LocalizationContainer extends BlocContainer {
  final Widget child;

  LocalizationContainer({@required Widget this.child});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CurrentLocaleCubit>(
      create: (context) => CurrentLocaleCubit(),
      child: this.child,
    );
  }
}

class CurrentLocaleCubit extends Cubit<String> {
  CurrentLocaleCubit() : super("en");
}

class ViewI18N {
  String _language;

  ViewI18N(BuildContext context) {
    // o problema dessa abordagem
    // é o rebuild quando voce troca a lingua
    // o que vc quer reconstruir quando trocar o currentlocalecubit?
    // em geral, eh comum reinicializar o sistema. ou voltar pra tela inicial.
    this._language = BlocProvider.of<CurrentLocaleCubit>(context).state;
  }

  String localize(Map<String, String> values) {
    assert(values != null);
    assert(values.containsKey(_language));
    // voce pdoeria definir que o padrao eh mostrar em ingles ao inves de quebrar
    // a aplicacao

    return values[_language];
  }
}
