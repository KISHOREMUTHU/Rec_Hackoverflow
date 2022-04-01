// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../video_consultation/app_colors.dart';
import '../help/article_model.dart';
import '../help/blog_card.dart';
import '../help/news.dart';

class HealthNewsPage extends StatefulWidget {
  const HealthNewsPage({Key? key}) : super(key: key);

  @override
  _HealthNewsPageState createState() => _HealthNewsPageState();
}

class _HealthNewsPageState extends State<HealthNewsPage> {
  List<ArticleModel> articles = <ArticleModel>[];
  bool _loading = true;
  @override
  void initState() {
    super.initState();
    getNewsForApp();
  }

  getNewsForApp() async {
    HealthNews healthNewsClass = HealthNews();
    await healthNewsClass.getNews();
    articles = healthNewsClass.healthNews;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        ),
        body: _loading
            ? const Center(
                child: CircularProgressIndicator(
                backgroundColor: Colors.greenAccent,
              ))
            : SingleChildScrollView(
                physics: const ScrollPhysics(),
                child: Column(
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: articles.length,
                        itemBuilder: (context, index) {
                          return BlogCard(
                            title: articles[index].title!,
                            description: articles[index].description!,
                            imageUrl: articles[index].urlToImage!,
                            url: articles[index].url!,
                          );
                        }),
                  ],
                ),
              ),
      ),
    );
  }
}
