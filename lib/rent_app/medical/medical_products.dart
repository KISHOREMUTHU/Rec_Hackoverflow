import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../braces/braces_products.dart';

class Medical extends StatefulWidget {
  const Medical({Key? key}) : super(key: key);

  @override
  _MedicalState createState() => _MedicalState();
}

class _MedicalState extends State<Medical> {
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
                  'Medical',
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
