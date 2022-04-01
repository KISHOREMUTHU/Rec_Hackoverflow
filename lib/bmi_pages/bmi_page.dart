import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);
  @override
  _BmiCalculatorState createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  int currentindex = 0;
  String result = "";
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Color? color = const Color(0xFF78fe04);
    return SafeArea(
      child: Builder(
        builder: (BuildContext context) => Scaffold(
          appBar: AppBar(
            title: Text(
              'BMI Calculator',
              style: GoogleFonts.montserrat(
                color: color,
              ),
            ),
            iconTheme: IconThemeData(
              color: color,
            ),
            elevation: 0.2,
            backgroundColor: Theme.of(context).primaryColor,
          ),
          body: Builder(
            builder: (BuildContext context) => Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/muscle.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
/*
                        Row(
                          children: [
                            ratioButton("Man", Colors.blue, 0),
                            ratioButton("Woman", Colors.pink, 1),

                          ],
                        ),
*/
                      const SizedBox(height: 70),
                      const SizedBox(height: 20),
                      Center(
                        child: Text(
                          "Your Height In CM : ",
                          style: GoogleFonts.montserrat(
                            color: Theme.of(context).primaryColor,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        controller: height,
                        style: GoogleFonts.montserrat(
                            color: Theme.of(context).primaryColor),
                        decoration: InputDecoration(
                          hintText: "Height in centimetres",
                          hintStyle: GoogleFonts.montserrat(
                              color: Theme.of(context).primaryColor),
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Center(
                        child: Text(
                          "Your Weight in KG : ",
                          style: GoogleFonts.montserrat(
                            color: Theme.of(context).primaryColor,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        controller: weight,
                        style: GoogleFonts.montserrat(
                            color: Theme.of(context).primaryColor),
                        decoration: InputDecoration(
                          hintText: "Weight in Kilograms",
                          hintStyle: GoogleFonts.montserrat(
                              color: Theme.of(context).primaryColor),
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.grey[500],
                        ),
                        width: double.infinity,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              double h = double.parse(height.value.text);
                              double w = double.parse(weight.value.text);
                              answer(h, w, context);
                            });
                          },
                          child: Text(
                            'Calculate',
                            style: GoogleFonts.montserrat(
                              color: Theme.of(context).primaryColor,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      Center(
                        child: Text(
                          'Your BMI is : ',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          result,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0492c2),
                          ),
                        ),
                      ),
                      const SizedBox(height: 200),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void answer(double height, double weight, BuildContext context) {
    // ignore: unnecessary_null_comparison
    if (height == null) {
      var finalresult = 0;
      setState(() {
        result = finalresult.toStringAsFixed(2);
      });
    } else {
      var finalresult = (10000 * weight / (height * height));
      String bmi = finalresult.toStringAsFixed(2);
      setState(() {
        result = bmi;
      });
      if (finalresult < 18.5) {
        final snackbar = SnackBar(
          content: Text(
            "You are underweight . See our diet suggestions to improve your BMI",
            style: TextStyle(
              fontSize: 18.0,
              color: Theme.of(context).primaryColor,
            ),
          ),
          backgroundColor: Colors.amberAccent,
        );
        // ignore: deprecated_member_use
        Scaffold.of(context).showSnackBar(snackbar);
      }
      if (finalresult > 18.5 && finalresult < 25.0) {
        final snackbar = SnackBar(
          content: Text(
            "You are fit and healthy. See our diet suggestions to maintain your BMI",
            style: TextStyle(
              fontSize: 18.0,
              color: Theme.of(context).primaryColor,
            ),
          ),
          backgroundColor: Colors.greenAccent,
        );
        // ignore: deprecated_member_use
        Scaffold.of(context).showSnackBar(snackbar);
      }
      if (finalresult >= 25.0 && finalresult < 30) {
        final snackbar = SnackBar(
          content: Text(
            "You are overweight . See our diet suggestions to improve your BMI",
            style: TextStyle(
              fontSize: 18.0,
              color: Theme.of(context).primaryColor,
            ),
          ),
          backgroundColor: Colors.orangeAccent,
        );
        // ignore: deprecated_member_use
        Scaffold.of(context).showSnackBar(snackbar);
      }
      if (finalresult >= 30.0) {
        final snackbar = SnackBar(
          content: Text(
            "You are too obese . See our diet suggestions to improve your BMI",
            style: TextStyle(
              fontSize: 18.0,
              color: Theme.of(context).primaryColor,
            ),
          ),
          backgroundColor: Colors.redAccent,
        );
        // ignore: deprecated_member_use
        Scaffold.of(context).showSnackBar(snackbar);
      }
    }
  }

  void changeIndex(int index) {
    setState(() {
      currentindex = index;
    });
  }

  Widget ratioButton(String value, Color color, int index) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12.0),
        height: 80,
        child: FlatButton(
          color: currentindex == index ? color : Colors.grey[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          onPressed: () {
            changeIndex(index);
          },
          child: Text(
            value,
            style: TextStyle(
              color: currentindex == index ? Colors.white : color,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
