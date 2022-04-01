import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../braces/braces_products.dart';

class Covid extends StatefulWidget {
  const Covid({Key? key}) : super(key: key);

  @override
  _CovidState createState() => _CovidState();
}

class _CovidState extends State<Covid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: color),
        title: Column(
          children: [
            Row(
              children: [
                Text(
                  'Covid',
                  style: GoogleFonts.montserrat(color: color),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
