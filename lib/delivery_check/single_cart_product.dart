import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../video_consultation/app_colors.dart';
import 'cart_product_details.dart';

class CartProducts extends StatefulWidget {
  const CartProducts({Key? key}) : super(key: key);

  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var productList = [];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return SingleCartProduct(
            productBrand: productList[index]['productBrand']!,
            productName: productList[index]['productName']!,
            productId: productList[index]['productId']!,
            productCost: productList[index]['productCost']!,
            productCategory: productList[index]['productCategory']!,
            productColor: productList[index]['productColor']!,
            productMaterial: productList[index]['productMaterial']!,
            productImage: productList[index]['productImage']!,
            productAvailability: productList[index]['productAvailability']!,
            productLaunchDate: productList[index]['productLaunchDate']!,
            productSummary: productList[index]['productSummary']!,
          );
        });
  }
}

class SingleCartProduct extends StatelessWidget {
  final String? productId;
  final String? productName;
  final String? productCost;
  final String? productBrand;
  final String? productCategory;
  final String? productColor;
  final String? productMaterial;
  final String? productImage;
  final String? productAvailability;
  final String? productLaunchDate;
  final String? productSummary;

  const SingleCartProduct(
      {Key? key,
      this.productId,
      this.productName,
      this.productCost,
      this.productBrand,
      this.productCategory,
      this.productColor,
      this.productMaterial,
      this.productImage,
      this.productAvailability,
      this.productLaunchDate,
      this.productSummary})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 3),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(10),
              blurRadius: 1,
            ),
          ],
        ),
        child: Card(
          child: Material(
            child: InkWell(
              onTap: () {
                // Passing the values to the product details page
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => CartProductDetails(
                              productBrand: productBrand,
                              productId: productId,
                              productName: productName,
                              productCost: productCost,
                              productAvailability: productAvailability,
                              productMaterial: productMaterial,
                              productImage: productImage,
                              productLaunchDate: productLaunchDate,
                              productCategory: productCategory,
                              productColor: productColor,
                              productSummary: productSummary,
                            )));
              },
              child: GridTile(
                footer: Container(
                  color: Colors.white.withAlpha(100),
                  child: ListTile(
                    title: Text(
                      productName!,
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      productCost!,
                      style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                child: Image.asset(
                  productImage!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
