import 'package:flutter/material.dart';
import 'package:flutter_url_shortner/notifiers/url_shortner.dart';
import 'package:provide/provide.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Provide<UrlShortner>(
          builder: (BuildContext context, Widget child, value) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                if (value.shortenedUrl != null && !value.isLoading)
                  Text(value.shortenedUrl),
                if (value.isLoading) CircularProgressIndicator(),
                RaisedButton(
                  child: Text('Shorten'),
                  onPressed: () {
                    value.shortenUrl('long url');
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
