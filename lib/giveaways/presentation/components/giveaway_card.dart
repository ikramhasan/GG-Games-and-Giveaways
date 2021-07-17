import 'package:flutter/material.dart';
import 'package:free_games_giveaways/giveaways/data/models/giveaway.dart';

import '../giveaway_details_page.dart';

class GiveawayCard extends StatelessWidget {
  const GiveawayCard({Key? key, required this.giveaway}) : super(key: key);

  final Giveaway giveaway;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => GiveawayDetailsPage(giveaway: giveaway),
            ),
          );
        },
        child: Ink(
          //height: 212,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6),
                  topRight: Radius.circular(6),
                ),
                child: Image.network(
                  giveaway.image,
                  height: 150,
                  width: MediaQuery.of(context).size.width - 32 - 8,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      giveaway.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(giveaway.description),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
