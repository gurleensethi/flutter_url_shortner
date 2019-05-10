import 'package:flutter/widgets.dart';

class UrlShortner extends ChangeNotifier {
  String shortenedUrl;
  bool isLoading = false;

  void shortenUrl(String longUrl) async {
    isLoading = true;
    notifyListeners();

    await Future.delayed(Duration(seconds: 2));

    isLoading = false;
    shortenedUrl = DateTime.now().toString();
    notifyListeners();
  }
}
