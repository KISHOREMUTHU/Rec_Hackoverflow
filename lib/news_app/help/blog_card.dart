import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../view/article_view.dart';

class BlogCard extends StatelessWidget {
  final String imageUrl, title, description, url;

  // ignore: use_key_in_widget_constructors
  const BlogCard(
      {required this.imageUrl,
      required this.title,
      required this.description,
      required this.url});

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_null_comparison

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ArticleView(
                      articleUrl: url,
                    )));
      },
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).secondaryHeaderColor.withAlpha(400),
                blurRadius: 5,
              )
            ],
          ),
          child: Column(
            children: [
              // ignore: unnecessary_null_comparison
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: GoogleFonts.nunito(
                      color: Colors.greenAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  description,
                  style: GoogleFonts.nunito(
                    color: Theme.of(context).secondaryHeaderColor,
                    fontSize: 14,
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
