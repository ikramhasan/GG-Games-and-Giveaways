import 'package:url_launcher/url_launcher.dart';

launchURL(String url) async {
  return await canLaunch(url)
      ? await launch(url)
      : throw 'Could not launch $url';
}

sendMail(String errorCode) {
  final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'ikramhasan.dev@gmail.com',
    queryParameters: {
      'subject': 'Bug!(GG: Free Games Notifier), Error code: $errorCode',
    },
  );
  launch(_emailLaunchUri.toString());
}
