import 'package:expense_management_app/constants/title_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  final BuildContext context; // Add a context parameter

  MyThemes(this.context);

  ThemeData get darkTheme {
    return ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade900,
        colorScheme: const ColorScheme.dark(),
        primaryColor: Colors.black,
        appBarTheme: AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.grey.shade900,
            foregroundColor: Colors.white,
            titleTextStyle: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: titleSize)),
        useMaterial3: true,
        iconTheme: IconThemeData(color: Colors.white)
        // textTheme: GoogleFonts.poppinsTextTheme(
        //   Theme.of(context).textTheme()
        // ),
        );
  }

  ThemeData get lightTheme {
    return ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
            shadowColor: Colors.black,
            centerTitle: true,
            backgroundColor: Colors.white,
            foregroundColor: Colors.grey.shade900,
            titleTextStyle: GoogleFonts.poppins(
                color: Colors.grey.shade900,
                fontWeight: FontWeight.w500,
                fontSize: titleSize)),
        colorScheme: const ColorScheme.light(),
        primaryColor: Colors.white,
        useMaterial3: true,
        iconTheme: IconThemeData(color: Colors.black)
        // textTheme: GoogleFonts.poppinsTextTheme(
        //   Theme.of(context).textTheme,
        // ),
        );
  }
}
