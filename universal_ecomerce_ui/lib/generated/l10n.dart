// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Find you \nfavorite product`
  String get HOME_SCREEN_TITLE {
    return Intl.message(
      'Find you \nfavorite product',
      name: 'HOME_SCREEN_TITLE',
      desc: '',
      args: [],
    );
  }

  /// `Buy now`
  String get BUY_NOW {
    return Intl.message(
      'Buy now',
      name: 'BUY_NOW',
      desc: '',
      args: [],
    );
  }

  /// `Nearest Restaurant`
  String get NEAREST_RESTAURANT {
    return Intl.message(
      'Nearest Restaurant',
      name: 'NEAREST_RESTAURANT',
      desc: '',
      args: [],
    );
  }

  /// `View more`
  String get VIEW_MORE {
    return Intl.message(
      'View more',
      name: 'VIEW_MORE',
      desc: '',
      args: [],
    );
  }

  /// `Popular Menu`
  String get POPULAR_MENU {
    return Intl.message(
      'Popular Menu',
      name: 'POPULAR_MENU',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get MENU_ITEM_HOME {
    return Intl.message(
      'Home',
      name: 'MENU_ITEM_HOME',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get MENU_ITEM_PROFILE {
    return Intl.message(
      'Profile',
      name: 'MENU_ITEM_PROFILE',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get MENU_ITEM_CART {
    return Intl.message(
      'Cart',
      name: 'MENU_ITEM_CART',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get MENU_ITEM_NOTIFY {
    return Intl.message(
      'Messages',
      name: 'MENU_ITEM_NOTIFY',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
