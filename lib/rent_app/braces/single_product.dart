import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'braces_products.dart';
import 'product_details.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "productId": "1",
      "productName": "Generic Arm Brace",
      "productCost": "Rs.199/- for 1mo",
      "productBrand": "Brace",
      "productCategory": "Medicinal",
      "productColor": "fuchsia",
      "productMaterial": "Frozen",
      "productImage": "assets/braces/brace1.jpg",
      "productAvailability": "All Countries",
      "productLaunchDate": "30-01-2022",
      "productSummary": "Stretchy strap helps easy adjustment."
    },
    {
      "productId": "1",
      "productName": "Generic Arm Brace",
      "productCost": "Rs.199/- for 1mo",
      "productBrand": "Brace",
      "productCategory": "Medicinal",
      "productColor": "fuchsia",
      "productMaterial": "Frozen",
      "productImage": "assets/braces/brace1.jpg",
      "productAvailability": "All Countries",
      "productLaunchDate": "30-01-2022",
      "productSummary": "Stretchy strap helps easy adjustment."
    },
    {
      "productId": "1",
      "productName": "Generic Arm Brace",
      "productCost": "Rs.199/- for 1mo",
      "productBrand": "Brace",
      "productCategory": "Medicinal",
      "productColor": "fuchsia",
      "productMaterial": "Frozen",
      "productImage": "assets/braces/brace1.jpg",
      "productAvailability": "All Countries",
      "productLaunchDate": "30-01-2022",
      "productSummary": "Stretchy strap helps easy adjustment."
    },
    {
      "productId": "1",
      "productName": "Generic Arm Brace",
      "productCost": "Rs.199/- for 1mo",
      "productBrand": "Brace",
      "productCategory": "Medicinal",
      "productColor": "fuchsia",
      "productMaterial": "Frozen",
      "productImage": "assets/braces/brace1.jpg",
      "productAvailability": "All Countries",
      "productLaunchDate": "30-01-2022",
      "productSummary": "Stretchy strap helps easy adjustment."
    },
    {
      "productId": "1",
      "productName": "Generic Arm Brace",
      "productCost": "Rs.199/- for 1mo",
      "productBrand": "Brace",
      "productCategory": "Medicinal",
      "productColor": "fuchsia",
      "productMaterial": "Frozen",
      "productImage": "assets/braces/brace1.jpg",
      "productAvailability": "All Countries",
      "productLaunchDate": "30-01-2022",
      "productSummary": "Stretchy strap helps easy adjustment."
    },
    {
      "productId": "1",
      "productName": "Generic Arm Brace",
      "productCost": "Rs.199/- for 1mo",
      "productBrand": "Brace",
      "productCategory": "Medicinal",
      "productColor": "fuchsia",
      "productMaterial": "Frozen",
      "productImage": "assets/braces/brace1.jpg",
      "productAvailability": "All Countries",
      "productLaunchDate": "30-01-2022",
      "productSummary": "Stretchy strap helps easy adjustment."
    },
    {
      "productId": "1",
      "productName": "Generic Arm Brace",
      "productCost": "Rs.199/- for 1mo",
      "productBrand": "Brace",
      "productCategory": "Medicinal",
      "productColor": "fuchsia",
      "productMaterial": "Frozen",
      "productImage": "assets/braces/brace1.jpg",
      "productAvailability": "All Countries",
      "productLaunchDate": "30-01-2022",
      "productSummary": "Stretchy strap helps easy adjustment."
    },
    {
      "productId": "1",
      "productName": "Generic Arm Brace",
      "productCost": "Rs.199/- for 1mo",
      "productBrand": "Brace",
      "productCategory": "Medicinal",
      "productColor": "fuchsia",
      "productMaterial": "Frozen",
      "productImage": "assets/braces/brace1.jpg",
      "productAvailability": "All Countries",
      "productLaunchDate": "30-01-2022",
      "productSummary": "Stretchy strap helps easy adjustment."
    },
    {
      "productId": "1",
      "productName": "Generic Arm Brace",
      "productCost": "Rs.199/- for 1mo",
      "productBrand": "Brace",
      "productCategory": "Medicinal",
      "productColor": "fuchsia",
      "productMaterial": "Frozen",
      "productImage": "assets/braces/brace1.jpg",
      "productAvailability": "All Countries",
      "productLaunchDate": "30-01-2022",
      "productSummary": "Stretchy strap helps easy adjustment."
    },
    {
      "productId": "1",
      "productName": "Generic Arm Brace",
      "productCost": "Rs.199/- for 1mo",
      "productBrand": "Brace",
      "productCategory": "Medicinal",
      "productColor": "fuchsia",
      "productMaterial": "Frozen",
      "productImage": "assets/braces/brace1.jpg",
      "productAvailability": "All Countries",
      "productLaunchDate": "30-01-2022",
      "productSummary": "Stretchy strap helps easy adjustment."
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
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

class SingleProduct extends StatelessWidget {
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

  const SingleProduct(
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
          child: Hero(
            tag: productName!,
            child: Material(
              child: InkWell(
                onTap: () {
                  // Passing the values to the product details page
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => ProductDetails(
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
      ),
    );
  }
}
