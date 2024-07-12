import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kafiil_test/feature/home_feature/countries_feature/countries_view.dart';
import 'package:kafiil_test/feature/home_feature/services_feature/services_view.dart';
import 'package:kafiil_test/feature/home_feature/who_feature/who_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final List<Widget> screens = [
    const WhoView(),
    const CountriesView(),
    const ServicesView(),
  ];
  late int _currentIndex;
  @override
  void initState() {
    _currentIndex = 0;super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: const Color(0xFF1DBF73),
        unselectedItemColor: const Color(0xFFC3C5C8),
        items: const [
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.circleUser),label: 'Who Am I',),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.earthAmericas),label: 'Countries'),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.cartShopping),label: 'Services'),
        ],
      ),
      body: SafeArea(child: screens[_currentIndex]),
    );
  }
}
