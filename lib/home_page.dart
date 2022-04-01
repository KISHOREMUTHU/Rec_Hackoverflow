import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:rec_hackoverflow/blood_bank/blood_bak_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'bmi_pages/bmi_page.dart';
import 'google_login_configs_provider/google_sign_in_configs_app.dart';
import 'rent_app/scroll_categories.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Widget> scrolls = [
      singleRentScroll(size, "Splits Training",
          "https://play.google.com/store/apps/details?id=splits.splitstraining.dothesplits.splitsin30days"),
      singleRentScroll(size, 'Nike Training Club',
          "https://play.google.com/store/apps/details?id=com.nike.ntc"),
      singleRentScroll(size, 'SixPacks in 30 days',
          "https://play.google.com/store/apps/details?id=sixpack.sixpackabs.absworkout"),
    ];

    Color? color = const Color(0xFF78fe04);
    User? user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: color),
        title: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/download.jpg'),
                ),
                const SizedBox(width: 10),
                Text(
                  'DocBook',
                  style: GoogleFonts.montserrat(color: color),
                ),
              ],
            ),
          ],
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
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: color,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: ClipOval(
                        child: Image.network(user!.photoURL.toString())),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text(
                      "Welcome !!!",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                        color: Theme.of(context).primaryColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Center(
                              child: Text(
                                user.displayName.toString(),
                                textAlign: TextAlign.start,
                                style: GoogleFonts.montserrat(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.74,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      _launchURL("https://www.cowin.gov.in/");
                    },
                    child: ListTile(
                      title: Text(
                        'Book Covid Vaccine Slots',
                        style: GoogleFonts.montserrat(
                          color: color,
                        ),
                      ),
                      leading: Icon(
                        Icons.control_point,
                        color: color,
                      ),
                      trailing: Icon(Icons.arrow_right, color: color, size: 32),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Divider(
                      color: color,
                      thickness: 1,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BloodBankDatsets()));
                    },
                    child: ListTile(
                      title: Text(
                        'Search Blood Banks',
                        style: GoogleFonts.montserrat(
                          color: color,
                        ),
                      ),
                      leading: Icon(
                        Icons.local_hospital,
                        color: color,
                      ),
                      trailing: Icon(Icons.arrow_right, color: color, size: 32),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Divider(
                      color: color,
                      thickness: 1,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BmiCalculator()));
                    },
                    child: ListTile(
                      title: Text(
                        'Check your BMI',
                        style: GoogleFonts.montserrat(
                          color: color,
                        ),
                      ),
                      leading: Icon(Icons.check_box, color: color),
                      trailing: Icon(Icons.arrow_right, color: color, size: 32),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Divider(
                      color: color,
                      thickness: 1,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        physics: const ScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Theme.of(context).primaryColor,
            width: size.width,
            height: 30,
          ),
          customDivider("News of the Day"),
          Product_Carousel(context),
          Container(
            color: Theme.of(context).primaryColor,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 15,
              ),
              child: Text(
                'Workout',
                textAlign: TextAlign.start,
                style: GoogleFonts.nunito(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: const Padding(
              padding: EdgeInsets.only(right: 200.0),
              child: Divider(
                thickness: 2,
                color: Color(0xFF78fe04),
              ),
            ),
          ),
          Container(
            width: size.width,
            color: Theme.of(context).primaryColor,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 300),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: scrolls.length,
                itemBuilder: (context, index) {
                  return scrolls[index];
                },
              ),
            ),
          ),
          Container(
            height: 30,
            color: Theme.of(context).primaryColor,
          ),
          Container(
            color: Theme.of(context).primaryColor,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 15,
              ),
              child: Text(
                'Shop By Category',
                textAlign: TextAlign.start,
                style: GoogleFonts.nunito(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: const Padding(
              padding: EdgeInsets.only(right: 200.0),
              child: Divider(
                thickness: 2,
                color: Color(0xFF78fe04),
              ),
            ),
          ),
          const ScrollableCategories(),
          Container(
            color: Theme.of(context).primaryColor,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 15,
              ),
              child: Text(
                'Health Blogs',
                textAlign: TextAlign.start,
                style: GoogleFonts.nunito(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: const Padding(
              padding: EdgeInsets.only(right: 200.0),
              child: Divider(
                thickness: 2,
                color: Color(0xFF78fe04),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SafeArea(
                            child: SizedBox.fromSize(
                              child: const WebView(
                                initialUrl: "https://www.nerdfitness.com/blog/",
                                javascriptMode: JavascriptMode.unrestricted,
                              ),
                            ),
                          )));
            },
            child: Container(
              color: Theme.of(context).primaryColor,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    'Tap Here ...',
                    style: GoogleFonts.nunito(
                      color: color,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  customDivider(String title) {
    Color? color = const Color(0xFF78fe04);
    return Container(
      color: Theme.of(context).primaryColor,
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: color,
              height: 10,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: color,
              ),
              borderRadius: BorderRadius.circular(13),
              color: Theme.of(context).primaryColor,
            ),
            child: Center(
              child: Text(
                title,
                textAlign: TextAlign.start,
                style: GoogleFonts.nunito(
                  color: color,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: color,
              height: 10,
            ),
          ),
        ],
      ),
    );
  }

  List topImageCarousel = [
    "assets/news1.jpg",
    "assets/news2.jpg",
    "assets/news3.jpg",
    "assets/news4.jpg",
    "assets/news5.jpg",
  ];

  // ignore: non_constant_identifier_names
  Product_Carousel(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Theme.of(context).primaryColor,
          height: 230.0,
          child: CarouselSlider.builder(
            itemCount: topImageCarousel.length,
            options: CarouselOptions(
              pageSnapping: true,
              height: 200,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 2000),
              viewportFraction: 0.8,
            ),
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SafeArea(
                                child: SizedBox.fromSize(
                                  child: const WebView(
                                    initialUrl:
                                        "https://www.hindustantimes.com/india-news/india-crosses-landmark-of-900-million-covid-vaccinations-says-health-minister-101633163053518.html",
                                    javascriptMode: JavascriptMode.unrestricted,
                                  ),
                                ),
                              )));
                },
                child: Container(
                  margin: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage(
                          topImageCarousel[index],
                        ),
                        fit: BoxFit.cover,
                      )),
                ),
              );
            },
          ),
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     for (int i = 0; i < 5; i++)
        //       Container(
        //         width: 8,
        //         height: 8,
        //         margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
        //         decoration: BoxDecoration(
        //             shape: BoxShape.circle,
        //             color: i == _ImageCarouselIndex
        //                 ? Color.fromRGBO(0, 0, 0, 0.9)
        //                 : Color.fromRGBO(0, 0, 0, 0.4)),
        //       ),
        //   ],
        // ),
      ],
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

  Widget singleRentScroll(Size size, String title, String navigate) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          _launchURL(navigate);
        },
        child: Container(
          height: 250,
          width: 180,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  offset: const Offset(0, 25),
                  blurRadius: 25,
                  spreadRadius: -10)
            ],
            // border: Border.all(color: Theme.of(context).secondaryHeaderColor),
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/workout.jpg"),
                    ),
                    color: Theme.of(context).primaryColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(5.0),
                        topRight: Radius.circular(5.0))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 8.0),
                child: Text(
                  title,
                  style: GoogleFonts.nunito(
                    color: const Color(0xFF78fe04),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 100, bottom: 8),
                child: Divider(
                  color: Colors.blueGrey,
                  thickness: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.nunito(color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: "WorkOut",
                          style: GoogleFonts.nunito(
                              color: Theme.of(context).secondaryHeaderColor,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget singleCategory(Size size, String image, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Theme.of(context).secondaryHeaderColor,
                  blurRadius: 0.1),
            ],
            color: Theme.of(context).primaryColor,
            // border: Border.all(
            //   color: Theme.of(context).secondaryHeaderColor,
            // ),
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          width: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child:
                    Image.asset("assets/location.jpg", width: 100, height: 50),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 5, right: 5),
                child: Center(
                  child: Text(
                    text,
                    textAlign: TextAlign.start,
                    style: GoogleFonts.mukta(
                      color: Theme.of(context).secondaryHeaderColor,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
