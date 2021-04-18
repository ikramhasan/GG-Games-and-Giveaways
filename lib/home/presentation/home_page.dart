import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: AnimatedContainer(
        duration: const Duration(seconds: 1),
        child: PageView(
          controller: _pageController,
          onPageChanged: _onPageChanged,
          children: const <Widget>[
            Center(
              child: Text('Free Games'),
            ),
            Center(
              child: Text('Giveaways'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SnakeNavigationBar.color(
          behaviour: SnakeBarBehaviour.floating,
          snakeShape: SnakeShape.rectangle,
          padding: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          unselectedItemColor: Theme.of(context).accentColor,
          selectedItemColor: Theme.of(context).canvasColor,
          showSelectedLabels: true,
          selectedLabelStyle: GoogleFonts.montserrat(),
          //showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.games_rounded),
              label: 'Free Games',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.date_range),
              label: 'Giveaways',
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
