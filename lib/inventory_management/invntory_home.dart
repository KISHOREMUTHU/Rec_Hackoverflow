import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'product_details.dart';

class InventoryManagement extends StatefulWidget {
  const InventoryManagement({Key? key}) : super(key: key);

  @override
  _InventoryManagementState createState() => _InventoryManagementState();
}

class _InventoryManagementState extends State<InventoryManagement> {
  @override
  Widget build(BuildContext context) {
    Size? size = MediaQuery.of(context).size;
    List<Widget> rentProducts = [
      singleProductScroll(
          size,
          'assets/pulse_oximeter.png',
          'Blood glucose meter',
          '500',
          'OxyCon',
          'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
          'blue',
          'Oxygen'),
      singleProductScroll(
          size,
          'assets/pill_splitter.png',
          'Pill Splitter',
          '1000',
          'OxyCon',
          'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
          'blue',
          'Oxygen'),
      singleProductScroll(
          size,
          'assets/non_contact_thermomemter.png',
          'Non-con Thermometer',
          '700',
          'OxyCon',
          'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
          'blue',
          'Oxygen'),
      singleProductScroll(
          size,
          'assets/surgical_stand.png',
          'Surgical Stand',
          '2000',
          'OxyCon',
          'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
          'blue',
          'Oxygen'),
      singleProductScroll(
          size,
          'assets/ortho_shoes.png',
          'Ortho Shoes',
          '1000',
          'OxyCon',
          'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
          'blue',
          'Oxygen'),
      singleProductScroll(
          size,
          'assets/weighing_scale.png',
          'Weighing Scale',
          '700',
          'OxyCon',
          'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
          'blue',
          'Oxygen'),
      singleProductScroll(
          size,
          'assets/walking_stick.png',
          'Walking stick',
          '500',
          'OxyCon',
          'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
          'blue',
          'Oxygen'),
      singleProductScroll(
          size,
          'assets/oxygen_cylinder.png',
          'Oxygen Cylinder',
          '1000',
          'OxyCon',
          'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
          'blue',
          'Oxygen'),
      singleProductScroll(
          size,
          'assets/non_contact_thermomemter.png',
          'Non-con Thermometer',
          '700',
          'OxyCon',
          'The stands are used for hanging saline, glucose bottles, blood bags and different medicines. These premium quality Saline Stands are sturdy tubular structures, mounted on castors for easy movement. ',
          'blue',
          'Oxygen'),
    ];
    Color? color = const Color(0xFF78fe04);
    User? user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: color),
        title: Text(
          'Your Inventory',
          style: GoogleFonts.montserrat(color: color),
        ),
      ),
      body: ListView(
        physics: const ScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Theme.of(context).primaryColor,
            width: size.width,
            height: 30,
          ),
          Container(
            color: Theme.of(context).primaryColor,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 15,
              ),
              child: Text(
                'Covid 19 Products',
                textAlign: TextAlign.start,
                style: GoogleFonts.nunito(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: const Padding(
              padding: EdgeInsets.only(right: 200.0),
              child: Divider(
                thickness: 2,
                color: Color(0xFF78fe04),
              ),
            ),
          ),
          Container(
            width: size.width,
            color: Theme.of(context).primaryColor,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 300),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: rentProducts.length,
                itemBuilder: (context, index) {
                  return rentProducts[index];
                },
              ),
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            width: size.width,
            height: 30,
          ),
          Container(
            color: Theme.of(context).primaryColor,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 15,
              ),
              child: Text(
                'Maternal Products',
                textAlign: TextAlign.start,
                style: GoogleFonts.nunito(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: const Padding(
              padding: EdgeInsets.only(right: 200.0),
              child: Divider(
                thickness: 2,
                color: Color(0xFF78fe04),
              ),
            ),
          ),
          Container(
            width: size.width,
            color: Theme.of(context).primaryColor,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 300),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: rentProducts.length,
                itemBuilder: (context, index) {
                  return rentProducts[index];
                },
              ),
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            width: size.width,
            height: 30,
          ),
          Container(
            color: Theme.of(context).primaryColor,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 15,
              ),
              child: Text(
                'Surgical Implants',
                textAlign: TextAlign.start,
                style: GoogleFonts.nunito(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: const Padding(
              padding: EdgeInsets.only(right: 200.0),
              child: Divider(
                thickness: 2,
                color: Color(0xFF78fe04),
              ),
            ),
          ),
          Container(
            width: size.width,
            color: Theme.of(context).primaryColor,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 300),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: rentProducts.length,
                itemBuilder: (context, index) {
                  return rentProducts[index];
                },
              ),
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            width: size.width,
            height: 30,
          ),
          Container(
            color: Theme.of(context).primaryColor,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 15,
              ),
              child: Text(
                'Buy ONly Products',
                textAlign: TextAlign.start,
                style: GoogleFonts.nunito(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: const Padding(
              padding: EdgeInsets.only(right: 200.0),
              child: Divider(
                thickness: 2,
                color: Color(0xFF78fe04),
              ),
            ),
          ),
          Container(
            width: size.width,
            color: Theme.of(context).primaryColor,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 300),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: rentProducts.length,
                itemBuilder: (context, index) {
                  return rentProducts[index];
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  customDivider(String title) {
    Color? color = const Color(0xFF78fe04);
    return Container(
      color: Theme.of(context).primaryColor,
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: color,
              height: 10,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: color,
              ),
              borderRadius: BorderRadius.circular(13),
              color: Theme.of(context).primaryColor,
            ),
            child: Center(
              child: Text(
                title,
                textAlign: TextAlign.start,
                style: GoogleFonts.nunito(
                  color: color,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: color,
              height: 10,
            ),
          ),
        ],
      ),
    );
  }

  Widget singleProductScroll(Size size, String? image, String name, String cost,
      String brand, String description, String color, String category) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => ProductDetails(
                        productBrand: brand,
                        productId: "1",
                        productName: name,
                        productCost: cost,
                        productAvailability: "Yes",
                        productMaterial: "Fuchsia",
                        productImage: image,
                        productLaunchDate: "01/04/2022",
                        productCategory: category,
                        productColor: color,
                        productSummary: description,
                      )));
        },
        child: Container(
          height: 250,
          width: 180,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  offset: const Offset(0, 25),
                  blurRadius: 25,
                  spreadRadius: -10)
            ],
            // border: Border.all(color: Theme.of(context).secondaryHeaderColor),
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image!),
                    ),
                    color: Theme.of(context).primaryColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(5.0),
                        topRight: Radius.circular(5.0))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 8.0),
                child: Text(
                  name,
                  style: GoogleFonts.nunito(
                    color: const Color(0xFF78fe04),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 100, bottom: 8),
                child: Divider(
                  color: Colors.blueGrey,
                  thickness: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.nunito(color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: "Rs." + cost + "/-",
                          style: GoogleFonts.nunito(
                              color: Theme.of(context).secondaryHeaderColor,
                              fontWeight: FontWeight.bold)),
                    ],
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
