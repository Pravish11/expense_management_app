import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageNotFound extends StatefulWidget {
  const PageNotFound({super.key});

  @override
  State<PageNotFound> createState() => _PageNotFoundState();
}

class _PageNotFoundState extends State<PageNotFound> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page Not Found")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,
                  bottom: MediaQuery.of(context).size.height * 0.05),
              child: const Image(
                image: AssetImage("assets/images/error.png"),
              ),
            ),
            Text(
              "Sorry, the page has not been found.",
              style: GoogleFonts.poppins(fontSize: 18),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
