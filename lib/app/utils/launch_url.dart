import 'package:url_launcher/url_launcher.dart';

Future<bool> launchURL(String url) async {
  return await canLaunch(url)
      ? await launch(url)
      : throw 'Could not launch $url';
}

Future<bool> sendMail(String errorCode) async {
  final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'ikramhasan.dev@gmail.com',
    queryParameters: {
      'subject': 'Bug!(GG: Free Games Notifier), Error code: $errorCode',
    },
  );
  return launch(_emailLaunchUri.toString());
}
