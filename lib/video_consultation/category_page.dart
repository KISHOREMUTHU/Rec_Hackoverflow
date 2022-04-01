import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyCategoryPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'avenir',
      ),
    );
  }
}

class MyCategoryPage extends StatefulWidget {
  const MyCategoryPage({Key? key}) : super(key: key);

  @override
  State<MyCategoryPage> createState() => _MyCategoryPageState();
}

class _MyCategoryPageState extends State<MyCategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: CustomPaint(
                painter: MyPainter(),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 14, right: 20, top: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Select a Category and Doctor",
                          style: GoogleFonts.montserrat(
                            fontSize: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 130,
                          margin: const EdgeInsets.only(top: 10),
                          child: ListView(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            children: [
                              containerCategory("pic6.png", "Cardiology"),
                              containerCategory("pic3.png", "Opthalmology"),
                              containerCategory("pic4.png", "Oncology"),
                              containerCategory("pic7.png", "Ortho"),
                              containerCategory("pic2.png", "MRI Scan"),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Doctors",
                          style: GoogleFonts.montserrat(
                            fontSize: 30,
                            color: color,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 450,
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Column(
                              children: [
                                docCreate("doc1.png", "Ellie Edwards"),
                                docCreate("doc2.png", "Greg Anderson"),
                                docCreate("doc3.png", "Matt Parker"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget containerCategory(String imgName, String title) {
    return SizedBox(
      width: 135,
      child: Column(
        children: [
          Image.asset("assets/images/category/$imgName"),
          Text(
            title,
            style: GoogleFonts.montserrat(
              color: Theme.of(context).secondaryHeaderColor,
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }

  Widget docCreate(String imgName, String name) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          color: color,
        ),
        child: Container(
          padding: const EdgeInsets.all(7),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 70,
                height: 90,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/docimg/$imgName"),
                  fit: BoxFit.cover,
                )),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      "Dr.$name",
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 50,
                    child: Text(
                      "Description About The Doctor",
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: Theme.of(context).primaryColor,
                      ),
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = path2Color;
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width * 0.3, 0);
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.03,
        size.width * 0.42, size.height * 0.17);
    path.quadraticBezierTo(
        size.width * 0.35, size.height * 0.32, 0, size.height * 0.29);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
