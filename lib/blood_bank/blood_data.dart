import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../video_consultation/app_colors.dart';
import 'blood_bank_search.dart';

var bloodData = <BloodBank>[
  BloodBank(
      name: "Government  Head quarters Hospital",
      state: "Tamil Nadu",
      district: "Ariyalur",
      city: "Ariyalur",
      address: "Perambalur Road, Ariyalur",
      pincode: "621704",
      contact: "044 22209150,044 24910754,044 22350241",
      available: "Yes")
];

class LocationButtonWidget extends StatelessWidget {
  final String? url;

  LocationButtonWidget({Key? key, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Color color = Color(0xFF0492c2);
    return Center(
      child: Container(
        height: 80,
        width: 250,
        decoration: BoxDecoration(
            border: Border.all(color: color),
            borderRadius: BorderRadius.circular(29)),
        //color: Colors.redAccent,
        padding: EdgeInsets.all(4),
        child: OutlinedButton.icon(
          onPressed: () {
            _launchURL(url!);
          },
          icon: Icon(Icons.location_on, color: color),
          label: Text('Get More Info ',
              style: GoogleFonts.montserrat(
                color: Theme.of(context).secondaryHeaderColor,
                fontSize: 22,
              )),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                Theme.of(context).primaryColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(
                  color: color,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _launchURL(String place) async {
    var url = place;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
