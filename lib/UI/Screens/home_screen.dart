import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/home_screen_body.dart';
import '../widgets/bottom_navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState()  {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 100.0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                "HELLO MOHAMED!",
                style: GoogleFonts.bebasNeue(
                  color: Colors.red[900],
                  fontSize: 22,
                  letterSpacing: 3,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                "Watch your favorite movie here...",
                style: GoogleFonts.abel(
                  color: Colors.white,
                  fontSize: 15,
                  letterSpacing: 1,
                ),
              ),
            )
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage("https://st4.depositphotos.com/21607914/23444/i/450/depositphotos_234445476-stock-photo-lionel-messi-argentina-looks-group.jpg"),
            ),
          )
        ],
      ),
      bottomNavigationBar: bottomNavBar(context),
      body: const HomeScreenContent(),
    );
  }
}

