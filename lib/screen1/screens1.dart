// import 'package:ecommerce_appwith_rest_api/screen1/home_screen1.dart';
// import 'package:flutter/material.dart';

// class Screen1 extends StatefulWidget {
//   const Screen1({super.key});

//   @override
//   State<Screen1> createState() => _Screen1State();
// }

// class _Screen1State extends State<Screen1> {
//   int _currentIndex = 0;
//   final List<Widget> screen = [
//     const HomeScreen1(),
//     Container(),
//     Container(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.white,
//       body: screen[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.red,
//         unselectedItemColor: Colors.green,
//         selectedItemColor: Colors.blue,
//         currentIndex: _currentIndex,

//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         items:  const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//           BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
//         ],
//       ),
//     );
//   }
// }

import 'package:ecommerce_appwith_rest_api/screen1/home_screen1.dart';
import 'package:flutter/material.dart';

class Screens1 extends StatefulWidget {
  const Screens1({super.key});

  @override
  State<Screens1> createState() => _Screens1State();
}

class _Screens1State extends State<Screens1> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const HomeScreen1(),
    Container(),
    Container(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
    );
  }
}
