import 'package:flutter/widgets.dart';
import 'package:flutter_url_shortner/data/network/url_shortening_api.dart';

class UrlShortner extends ChangeNotifier {
  String shortenedUrl;
  bool isLoading = false;

  void shortenUrl(String longUrl) async {
    isLoading = true;
    notifyListeners();

    final api = UrlShorteningApi();

    shortenedUrl = await api.shortenUrl(longUrl);

    isLoading = false;

    notifyListeners();
  }
}
