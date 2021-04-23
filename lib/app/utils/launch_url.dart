import 'package:url_launcher/url_launcher.dart';

launchURL(String url) async {
  return await canLaunch(url)
      ? await launch(url)
      : throw 'Could not launch $url';
}
