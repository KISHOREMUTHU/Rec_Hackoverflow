import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stellar_flutter_sdk/stellar_flutter_sdk.dart';

import 'google_login_configs_provider/google_sign_in_configs_app.dart';
import 'google_login_configs_provider/login_page.dart';
import 'navbar_page/navbar_page_provider.dart';
import 'theme_provider/theme_provider_app.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);

        return MaterialApp(
          title: 'DocBook',
          themeMode: themeProvider.themeMode,
          theme: MyThemes.lightTheme,
          darkTheme: MyThemes.darkTheme,
          debugShowCheckedModeBanner: false,
          home: const MyApp(),
        );
      },
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _message = "";
  StellarSDK sdk = StellarSDK.TESTNET;

  @override
  void initState() {
    super.initState();
    KeyPair kp = KeyPair.random();
    _message = "ID:\n" + kp.accountId + "\n\nSEED:\n" + kp.secretSeed;
    print("Blockchain Configured");
    print(_message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const NavBarWidget();
            } else {
              return const LoginPage();
            }
          },
        ),
      ),
    );
  }

  Widget buildLoading() => Stack(
        fit: StackFit.expand,
        children: const [
          Center(child: CircularProgressIndicator()),
        ],
      );
}
