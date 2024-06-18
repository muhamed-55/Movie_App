import 'package:flutter/material.dart';

Theme bottomNavBar(BuildContext context) {
  return Theme(
    data: Theme.of(context).copyWith(
      canvasColor: const Color(0xff181818),
    ),
    child: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined, color: Colors.white70), label: '',),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border, color: Colors.white70), label: '',),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline, color: Colors.white70), label: '',),
      ],
    ),
  );
}
