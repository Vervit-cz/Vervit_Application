import 'package:url_launcher/url_launcher.dart';

class Interactions
{
  static void launchURL(String website) async {
    String url = website;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}