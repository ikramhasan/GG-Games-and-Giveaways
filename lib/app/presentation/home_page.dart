import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../free_games/presentation/free_games/free_games_page.dart';
import '../../giveaways/presentation/giveaways_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItemPosition = 0;
  final _pageController = PageController();

  void _onPageChanged(int index) {
    setState(
      () => _selectedItemPosition = index,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            child: PageView(
              controller: _pageController,
              onPageChanged: _onPageChanged,
              children: <Widget>[
                const GiveawaysPage(),
                FreeGamesPage(),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).canvasColor.withOpacity(0),
                    Theme.of(context).canvasColor,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SnakeNavigationBar.color(
          behaviour: SnakeBarBehaviour.floating,
          snakeShape: SnakeShape.rectangle,
          padding: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          unselectedItemColor: Theme.of(context).accentColor,
          selectedItemColor: Colors.white,
          showSelectedLabels: true,
          backgroundColor: Theme.of(context).cardColor,
          selectedLabelStyle:
              GoogleFonts.merriweather(fontWeight: FontWeight.w900, shadows: [
            const BoxShadow(
              //color: Colors.black,
              blurRadius: 13.0,
              spreadRadius: 5.0,
            ),
          ]),
          items: [
            BottomNavigationBarItem(
              icon: Container(
                decoration: _selectedItemPosition == 1
                    ? BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade900.withOpacity(0.3),
                            blurRadius: 10.0,
                            spreadRadius: 4.0),
                      ])
                    : null,
                child: const FaIcon(FontAwesomeIcons.gift),
              ),
              label: 'Giveaways',
            ),
            BottomNavigationBarItem(
              icon: Container(
                decoration: _selectedItemPosition == 0
                    ? BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade900.withOpacity(0.3),
                            blurRadius: 10.0,
                            spreadRadius: 4.0),
                      ])
                    : null,
                child: const FaIcon(FontAwesomeIcons.gamepad),
              ),
              label: 'Free Games',
            ),
          ],
          currentIndex: _selectedItemPosition,
          onTap: (index) {
            setState(
              () => _selectedItemPosition = index,
            );
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 200),
              curve: Curves.linear,
            );
          }),
    );
  }
}
