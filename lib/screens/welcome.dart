import 'package:auranails/screens/beautician_page.dart';
import 'package:auranails/screens/booking_page.dart';
import 'package:auranails/screens/home_page.dart';
import 'package:flutter/material.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  static MaterialPageRoute get route => MaterialPageRoute(
        builder: (context) => const WelcomeScreen(),
      );
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  PageController _pageController = PageController();
  List<Widget> _screens = [
    HomePage(),
    BeauticainPage(),
    BookingPage(),
  ];
  void _onPageChanged(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  int _selectIndex = 0;
  void _ontapped(int selectedIndex) {
    // print(selectedIndex);
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _ontapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectIndex == 0 ? Colors.blue : Colors.grey,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                color: _selectIndex == 0 ? Colors.blue : Colors.grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
              color: _selectIndex == 1 ? Colors.blue : Colors.grey,
            ),
            title: Text(
              'Beautician',
              style: TextStyle(
                color: _selectIndex == 1 ? Colors.blue : Colors.grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.event_seat,
              color: _selectIndex == 2 ? Colors.blue : Colors.grey,
            ),
            title: Text(
              'Booking',
              style: TextStyle(
                color: _selectIndex == 2 ? Colors.blue : Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
