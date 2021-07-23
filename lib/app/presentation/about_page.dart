import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/launch_url.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).cardColor,
      child: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 8),
              Text(
                'GG',
                style: TextStyle(
                  fontSize: 24,
                  color: Theme.of(context).accentColor,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'by Ikram Hasan',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 8),
              Divider(color: Colors.grey),
              ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Theme.of(context).accentColor,
                ),
                title: Text(
                  'Report a bug!',
                ),
                onTap: () {
                  sendMail('General');
                },
              ),
              Divider(color: Colors.grey),
              ListTile(
                leading: Icon(
                  CupertinoIcons.person_alt_circle,
                  color: Theme.of(context).accentColor,
                ),
                title: Text(
                  'About me',
                ),
                onTap: () {
                  launchURL('https://ikramhasan-portfolio.web.app/');
                },
              ),
              Divider(color: Colors.grey),
              ListTile(
                leading: Icon(
                  CupertinoIcons.square_stack_3d_down_right,
                  color: Theme.of(context).accentColor,
                ),
                title: Text(
                  'More apps',
                ),
                onTap: () {
                  launchURL(
                      'https://play.google.com/store/search?q=pub%3AIkram%20Hasan&c=apps');
                },
              ),
              Divider(color: Colors.grey),
              SizedBox(height: 34),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Close',
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
