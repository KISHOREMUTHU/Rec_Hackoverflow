import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../video_consultation/app_colors.dart';
import 'single_cart_product.dart';

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({Key? key}) : super(key: key);

  @override
  _DeliveryPageState createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  @override
  Widget build(BuildContext context) {
    var firestoreDb =
        FirebaseFirestore.instance.collection("overall_cart").snapshots();
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: color),
        title: Text(
          'Deliveries to do',
          style: GoogleFonts.montserrat(color: color),
        ),
      ),
      body: StreamBuilder(
        stream: firestoreDb,
        builder: (context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return Container();
          } else {
            return GridView.builder(
                itemCount: snapshot.data.docs.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return SingleCartProduct(
                    productBrand: snapshot.data.docs[index]['brand']!,
                    productName: snapshot.data.docs[index]['name']!, //
                    productId: snapshot.data.docs[index]['id']!, //
                    productCost: snapshot.data.docs[index]['cost']!, //
                    productCategory: snapshot.data.docs[index]['category']!,
                    productColor: snapshot.data.docs[index]['color']!,
                    productMaterial: snapshot.data.docs[index]['material']!,
                    productImage: snapshot.data.docs[index]['image']!,
                    productAvailability: snapshot.data.docs[index]
                        ['available']!,
                    productLaunchDate: snapshot.data.docs[index]['launchDate']!,
                    productSummary: snapshot.data.docs[index]['description']!,

                    // "id": widget.productId,
                    //"cost": widget.productCost,
                    //"name": widget.productName,
                  );
                });
          }
        },
      ),
    );
  }
}
