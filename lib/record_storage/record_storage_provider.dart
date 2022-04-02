import 'dart:io';
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:rec_hackoverflow/video_consultation/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme_provider/theme_provider_app.dart';

class RecordStorage extends StatefulWidget {
  @override
  _RecordStorageState createState() => _RecordStorageState();
}

class _RecordStorageState extends State<RecordStorage> {
  bool search = false;
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  final picker = ImagePicker();
  bool? light;
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    final themeProvider = Provider.of<ThemeProvider>(context);
    themeProvider.isDarkMode ? light = false : light = true;
    return Scaffold(
      appBar: AppBar(
        actions: [
          search == false
              ? IconButton(
                  icon:
                      Icon(Icons.search, color: Theme.of(context).primaryColor),
                  onPressed: () {
                    setState(() {
                      search = !search;
                    });
                  },
                )
              : IconButton(
                  icon:
                      Icon(Icons.cancel, color: Theme.of(context).primaryColor),
                  onPressed: () {
                    setState(() {
                      search = !search;
                    });
                  },
                ),
        ],
        backgroundColor: color,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        title: search == true
            ? TextField(
                style: GoogleFonts.montserrat(
                    color: Theme.of(context).primaryColor),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon:
                      Icon(Icons.search, color: Theme.of(context).primaryColor),
                  hintText: 'Search ... ',
                  hintStyle: GoogleFonts.montserrat(
                      color: Theme.of(context).primaryColor),
                ),
                onChanged: (text) {
                  searchMethod(text);
                },
              )
            : Text(
                'Medical Record Storage',
                style: GoogleFonts.nunito(
                  color: Theme.of(context).primaryColor,
                ),
              ),
      ),
      body: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          // Check for errors
          if (snapshot.hasError) {
            return Center(child: Text('Firebase Init Error'));
          }
          // Once complete, show your application
          if (snapshot.connectionState == ConnectionState.done) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Flexible(
                    child: _buildBody(context),
                  ),
                ],
              ),
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: color,
        onPressed: _takeImage,
        child: Icon(Icons.add_a_photo, color: Theme.of(context).primaryColor),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return StreamBuilder<firebase_storage.ListResult>(
      stream: Stream.fromFuture(
          firebase_storage.FirebaseStorage.instance.ref(user!.email).listAll()),
      builder: (context, snapshot) {
        if (!snapshot.hasData)
          return const Center(child: CircularProgressIndicator());
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data!.items.isEmpty) {
            return Text(
              "Please Add Image",
              style: GoogleFonts.nunito(
                color: Theme.of(context).secondaryHeaderColor,
                fontSize: 24,
              ),
            );
          }
          return _buildList(context, snapshot.data!);
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }

  Widget _buildList(
      BuildContext context, firebase_storage.ListResult snapshot) {
    return ListView(
        padding: const EdgeInsets.only(top: 20.0),
        children: snapshot.items
            .map((data) => _buildListItem(context, data))
            .toList());
  }

  Widget _buildListItem(BuildContext context, firebase_storage.Reference data) {
    return FutureBuilder(
        future: data.getDownloadURL(),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (!snapshot.hasData) return Container();
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SingleImageDetails(
                            name: data.name,
                            url: snapshot.data.toString(),
                            bucket: data.bucket,
                            location: data.fullPath,
                          )));
            },
            child: Padding(
              key: ValueKey(data.name),
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withAlpha(100), blurRadius: 10.0),
                  ],
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            data.name,
                            style: GoogleFonts.nunito(
                                color: Theme.of(context).secondaryHeaderColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.delete,
                              color: Theme.of(context).secondaryHeaderColor,
                            ),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text(
                                        "Do you want to delete this image?",
                                        style: GoogleFonts.nunito(),
                                      ),
                                      actions: [
                                        FlatButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              "No",
                                              style: GoogleFonts.nunito(
                                                  color: Colors.grey),
                                            )),
                                        FlatButton(
                                            onPressed: () async {
                                              await firebase_storage
                                                  .FirebaseStorage.instance
                                                  .ref(data.fullPath)
                                                  .delete();
                                              Navigator.pop(context);
                                              setState(() {});
                                            },
                                            child: Text(
                                              "Yes",
                                              style: GoogleFonts.nunito(
                                                  color: Colors.green.shade900),
                                            ))
                                      ],
                                    );
                                  });
                            })
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(snapshot.data!),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ),
            ),
          );
        });
  }

  Future _takeImage() async {
    // Get image from gallery.
    var pickedFile = await picker.getImage(source: ImageSource.gallery);
    final File imageFile = File(pickedFile!.path);
    _uploadImageToFirebase(imageFile);
  }

  Future<void> _uploadImageToFirebase(File imageFile) async {
    final user = FirebaseAuth.instance.currentUser;
    try {
      // Make random image name.
      int randomNumber = Random().nextInt(100000);
      String imageLocation = '${user!.email!}/image$randomNumber.jpg';

      // Upload image to firebase.
      await firebase_storage.FirebaseStorage.instance
          .ref(imageLocation)
          .putFile(imageFile);
      setState(() {});
    } on FirebaseException catch (e) {
      print(e.code);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.code),
            );
          });
    } catch (e) {
      print(e);
    }
  }

  void searchMethod(String text) {}
}

class SingleImageDetails extends StatelessWidget {
  final String? name;
  final String? url;
  final String? location;
  final String? bucket;

  const SingleImageDetails(
      {Key? key, this.name, this.url, this.location, this.bucket})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green.shade900,
          iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
          title: Text(name!,
              style: GoogleFonts.montserrat(
                  color: Theme.of(context).primaryColor))),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Center(
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context)
                                  .secondaryHeaderColor
                                  .withAlpha(100),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: Image.network(url!)),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                  child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Center(
                  child: Text(
                    name!,
                    style: GoogleFonts.nunito(
                      fontSize: 20,
                      color: Theme.of(context).secondaryHeaderColor,
                    ),
                  ),
                ),
              )),
              SizedBox(height: 20),
              Center(
                child: GestureDetector(
                  onTap: () {
                    _launchURL(url!);
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Center(
                      child: Text(
                        url!,
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          color: Colors.blue,
                        ),
                      ),
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

  _launchURL(String place) async {
    var url = place;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
