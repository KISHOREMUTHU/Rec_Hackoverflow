import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../google_login_configs_provider/google_sign_in_configs_app.dart';
import '../video_consultation/app_colors.dart';

class AddNewProductPage extends StatefulWidget {
  const AddNewProductPage({Key? key}) : super(key: key);

  @override
  _AddNewProductPageState createState() => _AddNewProductPageState();
}

class _AddNewProductPageState extends State<AddNewProductPage> {
  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: color),
          title: Text(
            'Add New Product',
            style: GoogleFonts.montserrat(color: color),
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.logout, color: color),
                onPressed: () {
                  final provider =
                      Provider.of<GoogleSignInProvider>(context, listen: false);
                  provider.logout();
                }),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: color,
          onPressed: () {},
          child: const Center(
            child: Icon(
              Icons.add,
            ),
          ),
        ),
      ),
    );
  }
}
