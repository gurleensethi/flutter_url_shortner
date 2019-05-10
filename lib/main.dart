import 'package:flutter/material.dart';
import 'package:flutter_url_shortner/app.dart';
import 'package:flutter_url_shortner/notifiers/url_shortner.dart';
import 'package:provide/provide.dart';

void main() {
  final providers = Providers()
    ..provide(Provider.function((context) => UrlShortner()));

  runApp(
    ProviderNode(
      providers: providers,
      child: App(),
    ),
  );
}
