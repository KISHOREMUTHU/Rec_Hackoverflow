import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../braces/braces_products.dart';

class Surgical extends StatefulWidget {
  const Surgical({Key? key}) : super(key: key);

  @override
  _SurgicalState createState() => _SurgicalState();
}

class _SurgicalState extends State<Surgical> {
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
                  'Surgical',
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
