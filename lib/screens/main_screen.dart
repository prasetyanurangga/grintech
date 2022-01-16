import 'package:flutter/material.dart';
import 'package:grintech/constant/dimens.dart';
import 'package:grintech/page_routes.dart';
import 'package:grintech/screens/main_fragments/home_fragment.dart';
import 'package:grintech/screens/main_fragments/on_boarding_fragment.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _selectedNavbar = 0;
  PageController pageController = PageController();

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
      pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  void scrollListener() {
    setState(() {
        _selectedNavbar = (pageController.page ?? 0.0).toInt();
      });
  }

  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
      keepPage: true,
    )..addListener(scrollListener);
    super.initState();
  }

  Widget _buildBody(){
    return SafeArea(
      child: PageView(
        controller: pageController,
        children:[
          HomeFragment(),
          Container(),
          Container(),
          OnBoardingFragment()
        ]
      )
    );
  }

  Widget _buildBottomBar(){
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined),
          title: Text('Schedule'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail),
          title: Text('Ticket'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('OnBoard'),
        ),
      ],
      backgroundColor: Theme.of(context).colorScheme.secondary,
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedNavbar,
      selectedItemColor: Theme.of(context).colorScheme.primary,
      unselectedItemColor: Colors.white,
      showUnselectedLabels: true,
      onTap: _changeSelectedNavBar,
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: _buildBody(),
      bottomNavigationBar: _buildBottomBar()
    );
  }
}
