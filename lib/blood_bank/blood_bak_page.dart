import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'blood_bank_search.dart';

class BloodBankDatsets extends StatefulWidget {
  const BloodBankDatsets({Key? key}) : super(key: key);

  @override
  _BloodBankDatsetsState createState() => _BloodBankDatsetsState();
}

class _BloodBankDatsetsState extends State<BloodBankDatsets> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Colors.red,
          iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
          title: Text(
            'Search Blood Banks',
            style: GoogleFonts.montserrat(
              color: Theme.of(context).primaryColor,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Theme.of(context).primaryColor),
              onPressed: () {
                showSearch(context: context, delegate: BloodBankSearch());
              },
            ),
          ],
        ),
        body: Container(
          height: size.height,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
