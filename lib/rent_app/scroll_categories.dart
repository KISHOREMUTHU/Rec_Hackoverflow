import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'braces/braces_products.dart';
import 'data.dart';

class ScrollableCategories extends StatelessWidget {
  const ScrollableCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 500,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 4,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (index == 0) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Braces()));
                      }
                      if (index == 1) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Braces()));
                      }
                      if (index == 2) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Braces()));
                      }
                      if (index == 4) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Braces()));
                      }
                      if (index == 3) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Braces()));
                      }
                    },
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Theme.of(context).secondaryHeaderColor,
                              blurRadius: 0.1),
                        ],
                        color: Theme.of(context).primaryColor,
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
                            child: SvgPicture.asset(categoriesImg[index],
                                width: 100, height: 50),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8, left: 5, right: 5),
                            child: Center(
                              child: Text(
                                categories[index],
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
                ],
              ),
            );
          }),
    );
  }
}
