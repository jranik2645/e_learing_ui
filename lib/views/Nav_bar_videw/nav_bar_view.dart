
import 'package:e_learing_project/utils/colors.dart';
import 'package:e_learing_project/views/HomeScreen/home_screen.dart';
import 'package:flutter/material.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({super.key});

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
    int currentIndex=0;

      List<Widget>screens=[

          const HomeScreen(),
        const Center(
           child: Text('My Learning'),
        ),
        const Center(
          child: Text('Whitelist'),
        ),
        const Center(
          child: Text('Settings'),
        ),
      ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
           body: screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: AppColor.PriamyColor,
               unselectedItemColor: Colors.black,
               showUnselectedLabels: true,
                  type: BottomNavigationBarType.fixed,
                  currentIndex: currentIndex,
                onTap: (value){
                 setState(() {
                   currentIndex=value;
                 });
                },
          items:const [
             BottomNavigationBarItem(
                  activeIcon: Icon(Icons.star),
                 icon: Icon(Icons.star_border, ),label: 'Featured'),
            BottomNavigationBarItem(icon: Icon(Icons.play_circle_fill_outlined),label: 'My Learning'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Whitelist'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Setting')
          ],
      ),
    );
  }
}
