import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../braces/braces_products.dart';

class Dental extends StatefulWidget {
  const Dental({Key? key}) : super(key: key);

  @override
  _DentalState createState() => _DentalState();
}

class _DentalState extends State<Dental> {
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
                  'Dental',
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
