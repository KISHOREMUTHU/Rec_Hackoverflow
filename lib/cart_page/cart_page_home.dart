import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rec_hackoverflow/cart_page/single_cart_product.dart';

import '../video_consultation/app_colors.dart';
import '../your_orders/order_home.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  var user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    var firestoreDb =
        FirebaseFirestore.instance.collection(user!.uid + "_cart").snapshots();
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: color),
        title: Text(
          'Your Cart',
          style: GoogleFonts.montserrat(color: color),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.check, color: color),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const OrderPage()));
              }),
        ],
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
