import 'package:expense_management_app/pages/home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int myCurrentIndex = 0;
  List pages = const [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Theme.of(context).iconTheme.color!.withOpacity(0.5),
                blurRadius: 25,
                offset: const Offset(8, 20)),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            selectedItemColor: Theme.of(context).iconTheme.color,
            selectedLabelStyle:
                GoogleFonts.poppins(fontWeight: FontWeight.w500),
            unselectedLabelStyle: GoogleFonts.poppins(),
            unselectedItemColor:
                Theme.of(context).iconTheme.color!.withOpacity(0.5),
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              setState(() {
                myCurrentIndex = value;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_rounded),
                  label: "Home",
                  tooltip: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart_rounded),
                  label: "Stats",
                  tooltip: "Stats"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_circle_rounded),
                  label: "Add",
                  tooltip: "Add"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.history_rounded),
                  label: "History",
                  tooltip: "History")
            ],
            currentIndex: myCurrentIndex,
          ),
        ),
      ),
      body: pages[myCurrentIndex],
    );
  }
}
