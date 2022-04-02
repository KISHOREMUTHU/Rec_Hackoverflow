import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../video_consultation/app_colors.dart';
import 'blood_data.dart';

class BloodBank {
  final String? name;
  final String? state;
  final String? district;
  final String? city;
  final String? address;
  final String? pincode;
  final String? contact;
  final String? available;

  BloodBank({
    this.name,
    this.state,
    this.district,
    this.city,
    this.address,
    this.contact,
    this.pincode,
    this.available,
  });
}

List<BloodBank> loadBloodBank() {
  var hospital = <BloodBank>[
  BloodBank(
  name: "G.B Pant Hospital",
  state: "Andaman and Nicobar Islands",
  district: "https:\/\/goo.gl\/maps\/DcpcMQpHX7ht9kJp7",
  city: "Port Blair",
  address: "Atlanta Point",
  pincode: "",
  contact: "03192 230628",
  available: "Yes"),
  BloodBank(
  name: "Rajiv Gandhi Government General Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BQ1SSUoFWwV9CbsKA",
  city: "Chennai",
  address: "General Hospital Road\\nPark Town,\\nChennai, Tamil Nadu ",
  pincode: "600003",
  contact: "044 2530 5711,  044 2530 5000",
  available: "Yes"),
  BloodBank(
  name: "The Institute of Child Health and Hospital for Children",
  state: "Tamil Nadu",
  district: "https://g.page/ICHandHC?share",
  city: "Chennai",
  address: "Halls Road, Egmore, Chennai",
  pincode: "600008",
  contact: "044 28191132  044 2819 2138",
  available: "Yes"),
  BloodBank(
  name: "Government Kilpauk Medical College Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/691SWjf8EosEdzvD6",
  city: "Chennai",
  address:
  "Government Kilpauk Medical College and Hospital,822, Poonamallee High Rd, Kilpauk, Chennai ",
  pincode: "600010",
  contact: "044 28364955",
  available: "Yes"),
  BloodBank(
  name: "Southern Railway Headquarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/FfAtSmbCBxi8JwFv5",
  city: "Chennai",
  address: "Ayanavaram,Chennai, Tamil Nadu ",
  pincode: "600023",
  contact: "044 2674 1624",
  available: "Yes"),
  BloodBank(
  name: "ESIC Hospital And Occupational Diseases Centre Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/AZxKgj6piAosiDyd8",
  city: "Chennai",
  address: "Ashok Pillar Main Road, K.K. Nagar,Chennai ",
  pincode: "600078",
  contact: "044 2489 3714",
  available: "Yes"),
  BloodBank(
  name: "Apollo Hospital Enterprises Limited Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/ALVaCVcupCK9G4mn6",
  city: "Chennai",
  address:
  "No:21, Greams Lane, Off Greams Road, Thousand Lights West, Thousand Lights, Chennai",
  pincode: "600006",
  contact: "044 2829 4870,  044 2829 0200",
  available: "Yes"),
  BloodBank(
  name: "Jeevan Blood Bank and Research Centre",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MP3bvB4K4TuvdgyT8",
  city: "Chennai",
  address:
  "2/11, Wheatcrofts Road, Nungambakkam,Chennai, Tamil Nadu 600034",
  pincode: "600034",
  contact: "0435 20220,044 2826 3113",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Madras Medical Mission(Institute of Cardio Vascular Diseses)",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/7CY4fUGGNrNWk7WC8",
  city: "Chennai",
  address: "No. 4 Dr.Jayalalitha Nagar, Mogapair",
  pincode: "600050",
  contact: "044 2656 1801",
  available: "Yes"),
  BloodBank(
  name: "Kanchi Kamakoti Child Trust Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MGM2S6rj9we3r6pP6",
  city: "Chennai",
  address: "12 A, Nageshwara Road, Nungambakkam, Chennai",
  pincode: "600034",
  contact: "044 42001800, Extn 205",
  available: "Yes"),
  BloodBank(
  name: "Vijaya Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MidKKrCfk1Xj4CoW6",
  city: "Chennai",
  address: "New No: 434 (OId No: 180), N.S.K Salai, Vadapalani",
  pincode: "600026",
  contact: "044 24881392, 044 24842931, 044 24802221, 044 24802165",
  available: "Yes"),
  BloodBank(
  name: "Government  Head quarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BWoN2LiPMYy39fvr7",
  city: "Ariyalur",
  address: "Perambalur Road, Ariyalur",
  pincode: "621704",
  contact: "044 22209150,044 24910754,044 22350241",
  available: "Yes"),
  BloodBank(
  name: "Rajiv Gandhi Government General Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BQ1SSUoFWwV9CbsKA",
  city: "Chennai",
  address: "General Hospital Road\\nPark Town,\\nChennai, Tamil Nadu ",
  pincode: "600003",
  contact: "044 2530 5711,  044 2530 5000",
  available: "Yes"),
  BloodBank(
  name: "The Institute of Child Health and Hospital for Children",
  state: "Tamil Nadu",
  district: "https://g.page/ICHandHC?share",
  city: "Chennai",
  address: "Halls Road, Egmore, Chennai",
  pincode: "600008",
  contact: "044 28191132  044 2819 2138",
  available: "Yes"),
  BloodBank(
  name: "Government Kilpauk Medical College Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/691SWjf8EosEdzvD6",
  city: "Chennai",
  address:
  "Government Kilpauk Medical College and Hospital,822, Poonamallee High Rd, Kilpauk, Chennai ",
  pincode: "600010",
  contact: "044 28364955",
  available: "Yes"),
  BloodBank(
  name: "Southern Railway Headquarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/FfAtSmbCBxi8JwFv5",
  city: "Chennai",
  address: "Ayanavaram,Chennai, Tamil Nadu ",
  pincode: "600023",
  contact: "044 2674 1624",
  available: "Yes"),
  BloodBank(
  name: "ESIC Hospital And Occupational Diseases Centre Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/AZxKgj6piAosiDyd8",
  city: "Chennai",
  address: "Ashok Pillar Main Road, K.K. Nagar,Chennai ",
  pincode: "600078",
  contact: "044 2489 3714",
  available: "Yes"),
  BloodBank(
  name: "Apollo Hospital Enterprises Limited Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/ALVaCVcupCK9G4mn6",
  city: "Chennai",
  address:
  "No:21, Greams Lane, Off Greams Road, Thousand Lights West, Thousand Lights, Chennai",
  pincode: "600006",
  contact: "044 2829 4870,  044 2829 0200",
  available: "Yes"),
  BloodBank(
  name: "Jeevan Blood Bank and Research Centre",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MP3bvB4K4TuvdgyT8",
  city: "Chennai",
  address:
  "2/11, Wheatcrofts Road, Nungambakkam,Chennai, Tamil Nadu 600034",
  pincode: "600034",
  contact: "0435 20220,044 2826 3113",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Madras Medical Mission(Institute of Cardio Vascular Diseses)",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/7CY4fUGGNrNWk7WC8",
  city: "Chennai",
  address: "No. 4 Dr.Jayalalitha Nagar, Mogapair",
  pincode: "600050",
  contact: "044 2656 1801",
  available: "Yes"),
  BloodBank(
  name: "Kanchi Kamakoti Child Trust Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MGM2S6rj9we3r6pP6",
  city: "Chennai",
  address: "12 A, Nageshwara Road, Nungambakkam, Chennai",
  pincode: "600034",
  contact: "044 42001800, Extn 205",
  available: "Yes"),
  BloodBank(
  name: "Vijaya Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MidKKrCfk1Xj4CoW6",
  city: "Chennai",
  address: "New No: 434 (OId No: 180), N.S.K Salai, Vadapalani",
  pincode: "600026",
  contact: "044 24881392, 044 24842931, 044 24802221, 044 24802165",
  available: "Yes"),
  BloodBank(
  name: "Government  Head quarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BWoN2LiPMYy39fvr7",
  city: "Ariyalur",
  address: "Perambalur Road, Ariyalur",
  pincode: "621704",
  contact: "044 22209150,044 24910754,044 22350241",
  available: "Yes"),
  BloodBank(
  name: "Rajiv Gandhi Government General Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BQ1SSUoFWwV9CbsKA",
  city: "Chennai",
  address: "General Hospital Road\\nPark Town,\\nChennai, Tamil Nadu ",
  pincode: "600003",
  contact: "044 2530 5711,  044 2530 5000",
  available: "Yes"),
  BloodBank(
  name: "The Institute of Child Health and Hospital for Children",
  state: "Tamil Nadu",
  district: "https://g.page/ICHandHC?share",
  city: "Chennai",
  address: "Halls Road, Egmore, Chennai",
  pincode: "600008",
  contact: "044 28191132  044 2819 2138",
  available: "Yes"),
  BloodBank(
  name: "Government Kilpauk Medical College Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/691SWjf8EosEdzvD6",
  city: "Chennai",
  address:
  "Government Kilpauk Medical College and Hospital,822, Poonamallee High Rd, Kilpauk, Chennai ",
  pincode: "600010",
  contact: "044 28364955",
  available: "Yes"),
  BloodBank(
  name: "Southern Railway Headquarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/FfAtSmbCBxi8JwFv5",
  city: "Chennai",
  address: "Ayanavaram,Chennai, Tamil Nadu ",
  pincode: "600023",
  contact: "044 2674 1624",
  available: "Yes"),
  BloodBank(
  name: "ESIC Hospital And Occupational Diseases Centre Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/AZxKgj6piAosiDyd8",
  city: "Chennai",
  address: "Ashok Pillar Main Road, K.K. Nagar,Chennai ",
  pincode: "600078",
  contact: "044 2489 3714",
  available: "Yes"),
  BloodBank(
  name: "Apollo Hospital Enterprises Limited Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/ALVaCVcupCK9G4mn6",
  city: "Chennai",
  address:
  "No:21, Greams Lane, Off Greams Road, Thousand Lights West, Thousand Lights, Chennai",
  pincode: "600006",
  contact: "044 2829 4870,  044 2829 0200",
  available: "Yes"),
  BloodBank(
  name: "Jeevan Blood Bank and Research Centre",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MP3bvB4K4TuvdgyT8",
  city: "Chennai",
  address:
  "2/11, Wheatcrofts Road, Nungambakkam,Chennai, Tamil Nadu 600034",
  pincode: "600034",
  contact: "0435 20220,044 2826 3113",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Madras Medical Mission(Institute of Cardio Vascular Diseses)",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/7CY4fUGGNrNWk7WC8",
  city: "Chennai",
  address: "No. 4 Dr.Jayalalitha Nagar, Mogapair",
  pincode: "600050",
  contact: "044 2656 1801",
  available: "Yes"),
  BloodBank(
  name: "Kanchi Kamakoti Child Trust Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MGM2S6rj9we3r6pP6",
  city: "Chennai",
  address: "12 A, Nageshwara Road, Nungambakkam, Chennai",
  pincode: "600034",
  contact: "044 42001800, Extn 205",
  available: "Yes"),
  BloodBank(
  name: "Vijaya Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MidKKrCfk1Xj4CoW6",
  city: "Chennai",
  address: "New No: 434 (OId No: 180), N.S.K Salai, Vadapalani",
  pincode: "600026",
  contact: "044 24881392, 044 24842931, 044 24802221, 044 24802165",
  available: "Yes"),
  BloodBank(
  name: "Government  Head quarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BWoN2LiPMYy39fvr7",
  city: "Ariyalur",
  address: "Perambalur Road, Ariyalur",
  pincode: "621704",
  contact: "044 22209150,044 24910754,044 22350241",
  available: "Yes"),
  BloodBank(
  name: "Rajiv Gandhi Government General Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BQ1SSUoFWwV9CbsKA",
  city: "Chennai",
  address: "General Hospital Road\\nPark Town,\\nChennai, Tamil Nadu ",
  pincode: "600003",
  contact: "044 2530 5711,  044 2530 5000",
  available: "Yes"),
  BloodBank(
  name: "The Institute of Child Health and Hospital for Children",
  state: "Tamil Nadu",
  district: "https://g.page/ICHandHC?share",
  city: "Chennai",
  address: "Halls Road, Egmore, Chennai",
  pincode: "600008",
  contact: "044 28191132  044 2819 2138",
  available: "Yes"),
  BloodBank(
  name: "Government Kilpauk Medical College Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/691SWjf8EosEdzvD6",
  city: "Chennai",
  address:
  "Government Kilpauk Medical College and Hospital,822, Poonamallee High Rd, Kilpauk, Chennai ",
  pincode: "600010",
  contact: "044 28364955",
  available: "Yes"),
  BloodBank(
  name: "Southern Railway Headquarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/FfAtSmbCBxi8JwFv5",
  city: "Chennai",
  address: "Ayanavaram,Chennai, Tamil Nadu ",
  pincode: "600023",
  contact: "044 2674 1624",
  available: "Yes"),
  BloodBank(
  name: "ESIC Hospital And Occupational Diseases Centre Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/AZxKgj6piAosiDyd8",
  city: "Chennai",
  address: "Ashok Pillar Main Road, K.K. Nagar,Chennai ",
  pincode: "600078",
  contact: "044 2489 3714",
  available: "Yes"),
  BloodBank(
  name: "Apollo Hospital Enterprises Limited Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/ALVaCVcupCK9G4mn6",
  city: "Chennai",
  address:
  "No:21, Greams Lane, Off Greams Road, Thousand Lights West, Thousand Lights, Chennai",
  pincode: "600006",
  contact: "044 2829 4870,  044 2829 0200",
  available: "Yes"),
  BloodBank(
  name: "Jeevan Blood Bank and Research Centre",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MP3bvB4K4TuvdgyT8",
  city: "Chennai",
  address:
  "2/11, Wheatcrofts Road, Nungambakkam,Chennai, Tamil Nadu 600034",
  pincode: "600034",
  contact: "0435 20220,044 2826 3113",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Madras Medical Mission(Institute of Cardio Vascular Diseses)",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/7CY4fUGGNrNWk7WC8",
  city: "Chennai",
  address: "No. 4 Dr.Jayalalitha Nagar, Mogapair",
  pincode: "600050",
  contact: "044 2656 1801",
  available: "Yes"),
  BloodBank(
  name: "Kanchi Kamakoti Child Trust Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MGM2S6rj9we3r6pP6",
  city: "Chennai",
  address: "12 A, Nageshwara Road, Nungambakkam, Chennai",
  pincode: "600034",
  contact: "044 42001800, Extn 205",
  available: "Yes"),
  BloodBank(
  name: "Vijaya Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MidKKrCfk1Xj4CoW6",
  city: "Chennai",
  address: "New No: 434 (OId No: 180), N.S.K Salai, Vadapalani",
  pincode: "600026",
  contact: "044 24881392, 044 24842931, 044 24802221, 044 24802165",
  available: "Yes"),
  BloodBank(
  name: "Government  Head quarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BWoN2LiPMYy39fvr7",
  city: "Ariyalur",
  address: "Perambalur Road, Ariyalur",
  pincode: "621704",
  contact: "044 22209150,044 24910754,044 22350241",
  available: "Yes"),
  BloodBank(
  name: "Rajiv Gandhi Government General Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BQ1SSUoFWwV9CbsKA",
  city: "Chennai",
  address: "General Hospital Road\\nPark Town,\\nChennai, Tamil Nadu ",
  pincode: "600003",
  contact: "044 2530 5711,  044 2530 5000",
  available: "Yes"),
  BloodBank(
  name: "The Institute of Child Health and Hospital for Children",
  state: "Tamil Nadu",
  district: "https://g.page/ICHandHC?share",
  city: "Chennai",
  address: "Halls Road, Egmore, Chennai",
  pincode: "600008",
  contact: "044 28191132  044 2819 2138",
  available: "Yes"),
  BloodBank(
  name: "Government Kilpauk Medical College Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/691SWjf8EosEdzvD6",
  city: "Chennai",
  address:
  "Government Kilpauk Medical College and Hospital,822, Poonamallee High Rd, Kilpauk, Chennai ",
  pincode: "600010",
  contact: "044 28364955",
  available: "Yes"),
  BloodBank(
  name: "Southern Railway Headquarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/FfAtSmbCBxi8JwFv5",
  city: "Chennai",
  address: "Ayanavaram,Chennai, Tamil Nadu ",
  pincode: "600023",
  contact: "044 2674 1624",
  available: "Yes"),
  BloodBank(
  name: "ESIC Hospital And Occupational Diseases Centre Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/AZxKgj6piAosiDyd8",
  city: "Chennai",
  address: "Ashok Pillar Main Road, K.K. Nagar,Chennai ",
  pincode: "600078",
  contact: "044 2489 3714",
  available: "Yes"),
  BloodBank(
  name: "Apollo Hospital Enterprises Limited Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/ALVaCVcupCK9G4mn6",
  city: "Chennai",
  address:
  "No:21, Greams Lane, Off Greams Road, Thousand Lights West, Thousand Lights, Chennai",
  pincode: "600006",
  contact: "044 2829 4870,  044 2829 0200",
  available: "Yes"),
  BloodBank(
  name: "Jeevan Blood Bank and Research Centre",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MP3bvB4K4TuvdgyT8",
  city: "Chennai",
  address:
  "2/11, Wheatcrofts Road, Nungambakkam,Chennai, Tamil Nadu 600034",
  pincode: "600034",
  contact: "0435 20220,044 2826 3113",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Madras Medical Mission(Institute of Cardio Vascular Diseses)",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/7CY4fUGGNrNWk7WC8",
  city: "Chennai",
  address: "No. 4 Dr.Jayalalitha Nagar, Mogapair",
  pincode: "600050",
  contact: "044 2656 1801",
  available: "Yes"),
  BloodBank(
  name: "Kanchi Kamakoti Child Trust Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MGM2S6rj9we3r6pP6",
  city: "Chennai",
  address: "12 A, Nageshwara Road, Nungambakkam, Chennai",
  pincode: "600034",
  contact: "044 42001800, Extn 205",
  available: "Yes"),
  BloodBank(
  name: "Vijaya Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MidKKrCfk1Xj4CoW6",
  city: "Chennai",
  address: "New No: 434 (OId No: 180), N.S.K Salai, Vadapalani",
  pincode: "600026",
  contact: "044 24881392, 044 24842931, 044 24802221, 044 24802165",
  available: "Yes"),
  BloodBank(
  name: "Government  Head quarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BWoN2LiPMYy39fvr7",
  city: "Ariyalur",
  address: "Perambalur Road, Ariyalur",
  pincode: "621704",
  contact: "044 22209150,044 24910754,044 22350241",
  available: "Yes"),
  BloodBank(
  name: "Rajiv Gandhi Government General Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BQ1SSUoFWwV9CbsKA",
  city: "Chennai",
  address: "General Hospital Road\\nPark Town,\\nChennai, Tamil Nadu ",
  pincode: "600003",
  contact: "044 2530 5711,  044 2530 5000",
  available: "Yes"),
  BloodBank(
  name: "The Institute of Child Health and Hospital for Children",
  state: "Tamil Nadu",
  district: "https://g.page/ICHandHC?share",
  city: "Chennai",
  address: "Halls Road, Egmore, Chennai",
  pincode: "600008",
  contact: "044 28191132  044 2819 2138",
  available: "Yes"),
  BloodBank(
  name: "Government Kilpauk Medical College Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/691SWjf8EosEdzvD6",
  city: "Chennai",
  address:
  "Government Kilpauk Medical College and Hospital,822, Poonamallee High Rd, Kilpauk, Chennai ",
  pincode: "600010",
  contact: "044 28364955",
  available: "Yes"),
  BloodBank(
  name: "Southern Railway Headquarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/FfAtSmbCBxi8JwFv5",
  city: "Chennai",
  address: "Ayanavaram,Chennai, Tamil Nadu ",
  pincode: "600023",
  contact: "044 2674 1624",
  available: "Yes"),
  BloodBank(
  name: "ESIC Hospital And Occupational Diseases Centre Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/AZxKgj6piAosiDyd8",
  city: "Chennai",
  address: "Ashok Pillar Main Road, K.K. Nagar,Chennai ",
  pincode: "600078",
  contact: "044 2489 3714",
  available: "Yes"),
  BloodBank(
  name: "Apollo Hospital Enterprises Limited Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/ALVaCVcupCK9G4mn6",
  city: "Chennai",
  address:
  "No:21, Greams Lane, Off Greams Road, Thousand Lights West, Thousand Lights, Chennai",
  pincode: "600006",
  contact: "044 2829 4870,  044 2829 0200",
  available: "Yes"),
  BloodBank(
  name: "Jeevan Blood Bank and Research Centre",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MP3bvB4K4TuvdgyT8",
  city: "Chennai",
  address:
  "2/11, Wheatcrofts Road, Nungambakkam,Chennai, Tamil Nadu 600034",
  pincode: "600034",
  contact: "0435 20220,044 2826 3113",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Madras Medical Mission(Institute of Cardio Vascular Diseses)",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/7CY4fUGGNrNWk7WC8",
  city: "Chennai",
  address: "No. 4 Dr.Jayalalitha Nagar, Mogapair",
  pincode: "600050",
  contact: "044 2656 1801",
  available: "Yes"),
  BloodBank(
  name: "Kanchi Kamakoti Child Trust Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MGM2S6rj9we3r6pP6",
  city: "Chennai",
  address: "12 A, Nageshwara Road, Nungambakkam, Chennai",
  pincode: "600034",
  contact: "044 42001800, Extn 205",
  available: "Yes"),
  BloodBank(
  name: "Vijaya Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MidKKrCfk1Xj4CoW6",
  city: "Chennai",
  address: "New No: 434 (OId No: 180), N.S.K Salai, Vadapalani",
  pincode: "600026",
  contact: "044 24881392, 044 24842931, 044 24802221, 044 24802165",
  available: "Yes"),
  BloodBank(
  name: "Government  Head quarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BWoN2LiPMYy39fvr7",
  city: "Ariyalur",
  address: "Perambalur Road, Ariyalur",
  pincode: "621704",
  contact: "044 22209150,044 24910754,044 22350241",
  available: "Yes"),
  BloodBank(
  name: "Rajiv Gandhi Government General Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BQ1SSUoFWwV9CbsKA",
  city: "Chennai",
  address: "General Hospital Road\\nPark Town,\\nChennai, Tamil Nadu ",
  pincode: "600003",
  contact: "044 2530 5711,  044 2530 5000",
  available: "Yes"),
  BloodBank(
  name: "The Institute of Child Health and Hospital for Children",
  state: "Tamil Nadu",
  district: "https://g.page/ICHandHC?share",
  city: "Chennai",
  address: "Halls Road, Egmore, Chennai",
  pincode: "600008",
  contact: "044 28191132  044 2819 2138",
  available: "Yes"),
  BloodBank(
  name: "Government Kilpauk Medical College Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/691SWjf8EosEdzvD6",
  city: "Chennai",
  address:
  "Government Kilpauk Medical College and Hospital,822, Poonamallee High Rd, Kilpauk, Chennai ",
  pincode: "600010",
  contact: "044 28364955",
  available: "Yes"),
  BloodBank(
  name: "Southern Railway Headquarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/FfAtSmbCBxi8JwFv5",
  city: "Chennai",
  address: "Ayanavaram,Chennai, Tamil Nadu ",
  pincode: "600023",
  contact: "044 2674 1624",
  available: "Yes"),
  BloodBank(
  name: "ESIC Hospital And Occupational Diseases Centre Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/AZxKgj6piAosiDyd8",
  city: "Chennai",
  address: "Ashok Pillar Main Road, K.K. Nagar,Chennai ",
  pincode: "600078",
  contact: "044 2489 3714",
  available: "Yes"),
  BloodBank(
  name: "Apollo Hospital Enterprises Limited Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/ALVaCVcupCK9G4mn6",
  city: "Chennai",
  address:
  "No:21, Greams Lane, Off Greams Road, Thousand Lights West, Thousand Lights, Chennai",
  pincode: "600006",
  contact: "044 2829 4870,  044 2829 0200",
  available: "Yes"),
  BloodBank(
  name: "Jeevan Blood Bank and Research Centre",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MP3bvB4K4TuvdgyT8",
  city: "Chennai",
  address:
  "2/11, Wheatcrofts Road, Nungambakkam,Chennai, Tamil Nadu 600034",
  pincode: "600034",
  contact: "0435 20220,044 2826 3113",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Madras Medical Mission(Institute of Cardio Vascular Diseses)",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/7CY4fUGGNrNWk7WC8",
  city: "Chennai",
  address: "No. 4 Dr.Jayalalitha Nagar, Mogapair",
  pincode: "600050",
  contact: "044 2656 1801",
  available: "Yes"),
  BloodBank(
  name: "Kanchi Kamakoti Child Trust Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MGM2S6rj9we3r6pP6",
  city: "Chennai",
  address: "12 A, Nageshwara Road, Nungambakkam, Chennai",
  pincode: "600034",
  contact: "044 42001800, Extn 205",
  available: "Yes"),
  BloodBank(
  name: "Vijaya Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MidKKrCfk1Xj4CoW6",
  city: "Chennai",
  address: "New No: 434 (OId No: 180), N.S.K Salai, Vadapalani",
  pincode: "600026",
  contact: "044 24881392, 044 24842931, 044 24802221, 044 24802165",
  available: "Yes"),
  BloodBank(
  name: "Government  Head quarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BWoN2LiPMYy39fvr7",
  city: "Ariyalur",
  address: "Perambalur Road, Ariyalur",
  pincode: "621704",
  contact: "044 22209150,044 24910754,044 22350241",
  available: "Yes"),
  BloodBank(
  name: "Rajiv Gandhi Government General Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BQ1SSUoFWwV9CbsKA",
  city: "Chennai",
  address: "General Hospital Road\\nPark Town,\\nChennai, Tamil Nadu ",
  pincode: "600003",
  contact: "044 2530 5711,  044 2530 5000",
  available: "Yes"),
  BloodBank(
  name: "The Institute of Child Health and Hospital for Children",
  state: "Tamil Nadu",
  district: "https://g.page/ICHandHC?share",
  city: "Chennai",
  address: "Halls Road, Egmore, Chennai",
  pincode: "600008",
  contact: "044 28191132  044 2819 2138",
  available: "Yes"),
  BloodBank(
  name: "Government Kilpauk Medical College Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/691SWjf8EosEdzvD6",
  city: "Chennai",
  address:
  "Government Kilpauk Medical College and Hospital,822, Poonamallee High Rd, Kilpauk, Chennai ",
  pincode: "600010",
  contact: "044 28364955",
  available: "Yes"),
  BloodBank(
  name: "Southern Railway Headquarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/FfAtSmbCBxi8JwFv5",
  city: "Chennai",
  address: "Ayanavaram,Chennai, Tamil Nadu ",
  pincode: "600023",
  contact: "044 2674 1624",
  available: "Yes"),
  BloodBank(
  name: "ESIC Hospital And Occupational Diseases Centre Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/AZxKgj6piAosiDyd8",
  city: "Chennai",
  address: "Ashok Pillar Main Road, K.K. Nagar,Chennai ",
  pincode: "600078",
  contact: "044 2489 3714",
  available: "Yes"),
  BloodBank(
  name: "Apollo Hospital Enterprises Limited Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/ALVaCVcupCK9G4mn6",
  city: "Chennai",
  address:
  "No:21, Greams Lane, Off Greams Road, Thousand Lights West, Thousand Lights, Chennai",
  pincode: "600006",
  contact: "044 2829 4870,  044 2829 0200",
  available: "Yes"),
  BloodBank(
  name: "Jeevan Blood Bank and Research Centre",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MP3bvB4K4TuvdgyT8",
  city: "Chennai",
  address:
  "2/11, Wheatcrofts Road, Nungambakkam,Chennai, Tamil Nadu 600034",
  pincode: "600034",
  contact: "0435 20220,044 2826 3113",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Madras Medical Mission(Institute of Cardio Vascular Diseses)",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/7CY4fUGGNrNWk7WC8",
  city: "Chennai",
  address: "No. 4 Dr.Jayalalitha Nagar, Mogapair",
  pincode: "600050",
  contact: "044 2656 1801",
  available: "Yes"),
  BloodBank(
  name: "Kanchi Kamakoti Child Trust Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MGM2S6rj9we3r6pP6",
  city: "Chennai",
  address: "12 A, Nageshwara Road, Nungambakkam, Chennai",
  pincode: "600034",
  contact: "044 42001800, Extn 205",
  available: "Yes"),
  BloodBank(
  name: "Vijaya Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MidKKrCfk1Xj4CoW6",
  city: "Chennai",
  address: "New No: 434 (OId No: 180), N.S.K Salai, Vadapalani",
  pincode: "600026",
  contact: "044 24881392, 044 24842931, 044 24802221, 044 24802165",
  available: "Yes"),
  BloodBank(
  name: "Government  Head quarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BWoN2LiPMYy39fvr7",
  city: "Ariyalur",
  address: "Perambalur Road, Ariyalur",
  pincode: "621704",
  contact: "044 22209150,044 24910754,044 22350241",
  available: "Yes"),
  BloodBank(
  name: "Rajiv Gandhi Government General Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BQ1SSUoFWwV9CbsKA",
  city: "Chennai",
  address: "General Hospital Road\\nPark Town,\\nChennai, Tamil Nadu ",
  pincode: "600003",
  contact: "044 2530 5711,  044 2530 5000",
  available: "Yes"),
  BloodBank(
  name: "The Institute of Child Health and Hospital for Children",
  state: "Tamil Nadu",
  district: "https://g.page/ICHandHC?share",
  city: "Chennai",
  address: "Halls Road, Egmore, Chennai",
  pincode: "600008",
  contact: "044 28191132  044 2819 2138",
  available: "Yes"),
  BloodBank(
  name: "Government Kilpauk Medical College Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/691SWjf8EosEdzvD6",
  city: "Chennai",
  address:
  "Government Kilpauk Medical College and Hospital,822, Poonamallee High Rd, Kilpauk, Chennai ",
  pincode: "600010",
  contact: "044 28364955",
  available: "Yes"),
  BloodBank(
  name: "Southern Railway Headquarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/FfAtSmbCBxi8JwFv5",
  city: "Chennai",
  address: "Ayanavaram,Chennai, Tamil Nadu ",
  pincode: "600023",
  contact: "044 2674 1624",
  available: "Yes"),
  BloodBank(
  name: "ESIC Hospital And Occupational Diseases Centre Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/AZxKgj6piAosiDyd8",
  city: "Chennai",
  address: "Ashok Pillar Main Road, K.K. Nagar,Chennai ",
  pincode: "600078",
  contact: "044 2489 3714",
  available: "Yes"),
  BloodBank(
  name: "Apollo Hospital Enterprises Limited Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/ALVaCVcupCK9G4mn6",
  city: "Chennai",
  address:
  "No:21, Greams Lane, Off Greams Road, Thousand Lights West, Thousand Lights, Chennai",
  pincode: "600006",
  contact: "044 2829 4870,  044 2829 0200",
  available: "Yes"),
  BloodBank(
  name: "Jeevan Blood Bank and Research Centre",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MP3bvB4K4TuvdgyT8",
  city: "Chennai",
  address:
  "2/11, Wheatcrofts Road, Nungambakkam,Chennai, Tamil Nadu 600034",
  pincode: "600034",
  contact: "0435 20220,044 2826 3113",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Madras Medical Mission(Institute of Cardio Vascular Diseses)",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/7CY4fUGGNrNWk7WC8",
  city: "Chennai",
  address: "No. 4 Dr.Jayalalitha Nagar, Mogapair",
  pincode: "600050",
  contact: "044 2656 1801",
  available: "Yes"),
  BloodBank(
  name: "Kanchi Kamakoti Child Trust Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MGM2S6rj9we3r6pP6",
  city: "Chennai",
  address: "12 A, Nageshwara Road, Nungambakkam, Chennai",
  pincode: "600034",
  contact: "044 42001800, Extn 205",
  available: "Yes"),
  BloodBank(
  name: "Vijaya Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MidKKrCfk1Xj4CoW6",
  city: "Chennai",
  address: "New No: 434 (OId No: 180), N.S.K Salai, Vadapalani",
  pincode: "600026",
  contact: "044 24881392, 044 24842931, 044 24802221, 044 24802165",
  available: "Yes"),
  BloodBank(
  name: "Government  Head quarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BWoN2LiPMYy39fvr7",
  city: "Ariyalur",
  address: "Perambalur Road, Ariyalur",
  pincode: "621704",
  contact: "044 22209150,044 24910754,044 22350241",
  available: "Yes"),
  BloodBank(
  name: "Rajiv Gandhi Government General Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BQ1SSUoFWwV9CbsKA",
  city: "Chennai",
  address: "General Hospital Road\\nPark Town,\\nChennai, Tamil Nadu ",
  pincode: "600003",
  contact: "044 2530 5711,  044 2530 5000",
  available: "Yes"),
  BloodBank(
  name: "The Institute of Child Health and Hospital for Children",
  state: "Tamil Nadu",
  district: "https://g.page/ICHandHC?share",
  city: "Chennai",
  address: "Halls Road, Egmore, Chennai",
  pincode: "600008",
  contact: "044 28191132  044 2819 2138",
  available: "Yes"),
  BloodBank(
  name: "Government Kilpauk Medical College Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/691SWjf8EosEdzvD6",
  city: "Chennai",
  address:
  "Government Kilpauk Medical College and Hospital,822, Poonamallee High Rd, Kilpauk, Chennai ",
  pincode: "600010",
  contact: "044 28364955",
  available: "Yes"),
  BloodBank(
  name: "Southern Railway Headquarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/FfAtSmbCBxi8JwFv5",
  city: "Chennai",
  address: "Ayanavaram,Chennai, Tamil Nadu ",
  pincode: "600023",
  contact: "044 2674 1624",
  available: "Yes"),
  BloodBank(
  name: "ESIC Hospital And Occupational Diseases Centre Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/AZxKgj6piAosiDyd8",
  city: "Chennai",
  address: "Ashok Pillar Main Road, K.K. Nagar,Chennai ",
  pincode: "600078",
  contact: "044 2489 3714",
  available: "Yes"),
  BloodBank(
  name: "Apollo Hospital Enterprises Limited Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/ALVaCVcupCK9G4mn6",
  city: "Chennai",
  address:
  "No:21, Greams Lane, Off Greams Road, Thousand Lights West, Thousand Lights, Chennai",
  pincode: "600006",
  contact: "044 2829 4870,  044 2829 0200",
  available: "Yes"),
  BloodBank(
  name: "Jeevan Blood Bank and Research Centre",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MP3bvB4K4TuvdgyT8",
  city: "Chennai",
  address:
  "2/11, Wheatcrofts Road, Nungambakkam,Chennai, Tamil Nadu 600034",
  pincode: "600034",
  contact: "0435 20220,044 2826 3113",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Madras Medical Mission(Institute of Cardio Vascular Diseses)",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/7CY4fUGGNrNWk7WC8",
  city: "Chennai",
  address: "No. 4 Dr.Jayalalitha Nagar, Mogapair",
  pincode: "600050",
  contact: "044 2656 1801",
  available: "Yes"),
  BloodBank(
  name: "Kanchi Kamakoti Child Trust Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MGM2S6rj9we3r6pP6",
  city: "Chennai",
  address: "12 A, Nageshwara Road, Nungambakkam, Chennai",
  pincode: "600034",
  contact: "044 42001800, Extn 205",
  available: "Yes"),
  BloodBank(
  name: "Vijaya Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MidKKrCfk1Xj4CoW6",
  city: "Chennai",
  address: "New No: 434 (OId No: 180), N.S.K Salai, Vadapalani",
  pincode: "600026",
  contact: "044 24881392, 044 24842931, 044 24802221, 044 24802165",
  available: "Yes"),
  BloodBank(
  name: "Government  Head quarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BWoN2LiPMYy39fvr7",
  city: "Ariyalur",
  address: "Perambalur Road, Ariyalur",
  pincode: "621704",
  contact: "044 22209150,044 24910754,044 22350241",
  available: "Yes"),
  BloodBank(
  name: "Rajiv Gandhi Government General Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BQ1SSUoFWwV9CbsKA",
  city: "Chennai",
  address: "General Hospital Road\\nPark Town,\\nChennai, Tamil Nadu ",
  pincode: "600003",
  contact: "044 2530 5711,  044 2530 5000",
  available: "Yes"),
  BloodBank(
  name: "The Institute of Child Health and Hospital for Children",
  state: "Tamil Nadu",
  district: "https://g.page/ICHandHC?share",
  city: "Chennai",
  address: "Halls Road, Egmore, Chennai",
  pincode: "600008",
  contact: "044 28191132  044 2819 2138",
  available: "Yes"),
  BloodBank(
  name: "Government Kilpauk Medical College Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/691SWjf8EosEdzvD6",
  city: "Chennai",
  address:
  "Government Kilpauk Medical College and Hospital,822, Poonamallee High Rd, Kilpauk, Chennai ",
  pincode: "600010",
  contact: "044 28364955",
  available: "Yes"),
  BloodBank(
  name: "Southern Railway Headquarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/FfAtSmbCBxi8JwFv5",
  city: "Chennai",
  address: "Ayanavaram,Chennai, Tamil Nadu ",
  pincode: "600023",
  contact: "044 2674 1624",
  available: "Yes"),
  BloodBank(
  name: "ESIC Hospital And Occupational Diseases Centre Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/AZxKgj6piAosiDyd8",
  city: "Chennai",
  address: "Ashok Pillar Main Road, K.K. Nagar,Chennai ",
  pincode: "600078",
  contact: "044 2489 3714",
  available: "Yes"),
  BloodBank(
  name: "Apollo Hospital Enterprises Limited Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/ALVaCVcupCK9G4mn6",
  city: "Chennai",
  address:
  "No:21, Greams Lane, Off Greams Road, Thousand Lights West, Thousand Lights, Chennai",
  pincode: "600006",
  contact: "044 2829 4870,  044 2829 0200",
  available: "Yes"),
  BloodBank(
  name: "Jeevan Blood Bank and Research Centre",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MP3bvB4K4TuvdgyT8",
  city: "Chennai",
  address:
  "2/11, Wheatcrofts Road, Nungambakkam,Chennai, Tamil Nadu 600034",
  pincode: "600034",
  contact: "0435 20220,044 2826 3113",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Madras Medical Mission(Institute of Cardio Vascular Diseses)",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/7CY4fUGGNrNWk7WC8",
  city: "Chennai",
  address: "No. 4 Dr.Jayalalitha Nagar, Mogapair",
  pincode: "600050",
  contact: "044 2656 1801",
  available: "Yes"),
  BloodBank(
  name: "Kanchi Kamakoti Child Trust Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MGM2S6rj9we3r6pP6",
  city: "Chennai",
  address: "12 A, Nageshwara Road, Nungambakkam, Chennai",
  pincode: "600034",
  contact: "044 42001800, Extn 205",
  available: "Yes"),
  BloodBank(
  name: "Vijaya Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MidKKrCfk1Xj4CoW6",
  city: "Chennai",
  address: "New No: 434 (OId No: 180), N.S.K Salai, Vadapalani",
  pincode: "600026",
  contact: "044 24881392, 044 24842931, 044 24802221, 044 24802165",
  available: "Yes"),
  BloodBank(
  name: "Government  Head quarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BWoN2LiPMYy39fvr7",
  city: "Ariyalur",
  address: "Perambalur Road, Ariyalur",
  pincode: "621704",
  contact: "044 22209150,044 24910754,044 22350241",
  available: "Yes"),
  BloodBank(
  name: "Rajiv Gandhi Government General Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BQ1SSUoFWwV9CbsKA",
  city: "Chennai",
  address: "General Hospital Road\\nPark Town,\\nChennai, Tamil Nadu ",
  pincode: "600003",
  contact: "044 2530 5711,  044 2530 5000",
  available: "Yes"),
  BloodBank(
  name: "The Institute of Child Health and Hospital for Children",
  state: "Tamil Nadu",
  district: "https://g.page/ICHandHC?share",
  city: "Chennai",
  address: "Halls Road, Egmore, Chennai",
  pincode: "600008",
  contact: "044 28191132  044 2819 2138",
  available: "Yes"),
  BloodBank(
  name: "Government Kilpauk Medical College Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/691SWjf8EosEdzvD6",
  city: "Chennai",
  address:
  "Government Kilpauk Medical College and Hospital,822, Poonamallee High Rd, Kilpauk, Chennai ",
  pincode: "600010",
  contact: "044 28364955",
  available: "Yes"),
  BloodBank(
  name: "Southern Railway Headquarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/FfAtSmbCBxi8JwFv5",
  city: "Chennai",
  address: "Ayanavaram,Chennai, Tamil Nadu ",
  pincode: "600023",
  contact: "044 2674 1624",
  available: "Yes"),
  BloodBank(
  name: "ESIC Hospital And Occupational Diseases Centre Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/AZxKgj6piAosiDyd8",
  city: "Chennai",
  address: "Ashok Pillar Main Road, K.K. Nagar,Chennai ",
  pincode: "600078",
  contact: "044 2489 3714",
  available: "Yes"),
  BloodBank(
  name: "Apollo Hospital Enterprises Limited Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/ALVaCVcupCK9G4mn6",
  city: "Chennai",
  address:
  "No:21, Greams Lane, Off Greams Road, Thousand Lights West, Thousand Lights, Chennai",
  pincode: "600006",
  contact: "044 2829 4870,  044 2829 0200",
  available: "Yes"),
  BloodBank(
  name: "Jeevan Blood Bank and Research Centre",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MP3bvB4K4TuvdgyT8",
  city: "Chennai",
  address:
  "2/11, Wheatcrofts Road, Nungambakkam,Chennai, Tamil Nadu 600034",
  pincode: "600034",
  contact: "0435 20220,044 2826 3113",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Madras Medical Mission(Institute of Cardio Vascular Diseses)",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/7CY4fUGGNrNWk7WC8",
  city: "Chennai",
  address: "No. 4 Dr.Jayalalitha Nagar, Mogapair",
  pincode: "600050",
  contact: "044 2656 1801",
  available: "Yes"),
  BloodBank(
  name: "Kanchi Kamakoti Child Trust Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MGM2S6rj9we3r6pP6",
  city: "Chennai",
  address: "12 A, Nageshwara Road, Nungambakkam, Chennai",
  pincode: "600034",
  contact: "044 42001800, Extn 205",
  available: "Yes"),
  BloodBank(
  name: "Vijaya Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MidKKrCfk1Xj4CoW6",
  city: "Chennai",
  address: "New No: 434 (OId No: 180), N.S.K Salai, Vadapalani",
  pincode: "600026",
  contact: "044 24881392, 044 24842931, 044 24802221, 044 24802165",
  available: "Yes"),
  BloodBank(
  name: "Government  Head quarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BWoN2LiPMYy39fvr7",
  city: "Ariyalur",
  address: "Perambalur Road, Ariyalur",
  pincode: "621704",
  contact: "044 22209150,044 24910754,044 22350241",
  available: "Yes"),
  BloodBank(
  name: "Rajiv Gandhi Government General Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BQ1SSUoFWwV9CbsKA",
  city: "Chennai",
  address: "General Hospital Road\\nPark Town,\\nChennai, Tamil Nadu ",
  pincode: "600003",
  contact: "044 2530 5711,  044 2530 5000",
  available: "Yes"),
  BloodBank(
  name: "The Institute of Child Health and Hospital for Children",
  state: "Tamil Nadu",
  district: "https://g.page/ICHandHC?share",
  city: "Chennai",
  address: "Halls Road, Egmore, Chennai",
  pincode: "600008",
  contact: "044 28191132  044 2819 2138",
  available: "Yes"),
  BloodBank(
  name: "Government Kilpauk Medical College Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/691SWjf8EosEdzvD6",
  city: "Chennai",
  address:
  "Government Kilpauk Medical College and Hospital,822, Poonamallee High Rd, Kilpauk, Chennai ",
  pincode: "600010",
  contact: "044 28364955",
  available: "Yes"),
  BloodBank(
  name: "Southern Railway Headquarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/FfAtSmbCBxi8JwFv5",
  city: "Chennai",
  address: "Ayanavaram,Chennai, Tamil Nadu ",
  pincode: "600023",
  contact: "044 2674 1624",
  available: "Yes"),
  BloodBank(
  name: "ESIC Hospital And Occupational Diseases Centre Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/AZxKgj6piAosiDyd8",
  city: "Chennai",
  address: "Ashok Pillar Main Road, K.K. Nagar,Chennai ",
  pincode: "600078",
  contact: "044 2489 3714",
  available: "Yes"),
  BloodBank(
  name: "Apollo Hospital Enterprises Limited Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/ALVaCVcupCK9G4mn6",
  city: "Chennai",
  address:
  "No:21, Greams Lane, Off Greams Road, Thousand Lights West, Thousand Lights, Chennai",
  pincode: "600006",
  contact: "044 2829 4870,  044 2829 0200",
  available: "Yes"),
  BloodBank(
  name: "Jeevan Blood Bank and Research Centre",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MP3bvB4K4TuvdgyT8",
  city: "Chennai",
  address:
  "2/11, Wheatcrofts Road, Nungambakkam,Chennai, Tamil Nadu 600034",
  pincode: "600034",
  contact: "0435 20220,044 2826 3113",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Madras Medical Mission(Institute of Cardio Vascular Diseses)",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/7CY4fUGGNrNWk7WC8",
  city: "Chennai",
  address: "No. 4 Dr.Jayalalitha Nagar, Mogapair",
  pincode: "600050",
  contact: "044 2656 1801",
  available: "Yes"),
  BloodBank(
  name: "Kanchi Kamakoti Child Trust Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MGM2S6rj9we3r6pP6",
  city: "Chennai",
  address: "12 A, Nageshwara Road, Nungambakkam, Chennai",
  pincode: "600034",
  contact: "044 42001800, Extn 205",
  available: "Yes"),
  BloodBank(
  name: "Vijaya Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MidKKrCfk1Xj4CoW6",
  city: "Chennai",
  address: "New No: 434 (OId No: 180), N.S.K Salai, Vadapalani",
  pincode: "600026",
  contact: "044 24881392, 044 24842931, 044 24802221, 044 24802165",
  available: "Yes"),
  BloodBank(
  name: "Government  Head quarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BWoN2LiPMYy39fvr7",
  city: "Ariyalur",
  address: "Perambalur Road, Ariyalur",
  pincode: "621704",
  contact: "044 22209150,044 24910754,044 22350241",
  available: "Yes"),
  BloodBank(
  name: "Rajiv Gandhi Government General Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BQ1SSUoFWwV9CbsKA",
  city: "Chennai",
  address: "General Hospital Road\\nPark Town,\\nChennai, Tamil Nadu ",
  pincode: "600003",
  contact: "044 2530 5711,  044 2530 5000",
  available: "Yes"),
  BloodBank(
  name: "The Institute of Child Health and Hospital for Children",
  state: "Tamil Nadu",
  district: "https://g.page/ICHandHC?share",
  city: "Chennai",
  address: "Halls Road, Egmore, Chennai",
  pincode: "600008",
  contact: "044 28191132  044 2819 2138",
  available: "Yes"),
  BloodBank(
  name: "Government Kilpauk Medical College Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/691SWjf8EosEdzvD6",
  city: "Chennai",
  address:
  "Government Kilpauk Medical College and Hospital,822, Poonamallee High Rd, Kilpauk, Chennai ",
  pincode: "600010",
  contact: "044 28364955",
  available: "Yes"),
  BloodBank(
  name: "Southern Railway Headquarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/FfAtSmbCBxi8JwFv5",
  city: "Chennai",
  address: "Ayanavaram,Chennai, Tamil Nadu ",
  pincode: "600023",
  contact: "044 2674 1624",
  available: "Yes"),
  BloodBank(
  name: "ESIC Hospital And Occupational Diseases Centre Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/AZxKgj6piAosiDyd8",
  city: "Chennai",
  address: "Ashok Pillar Main Road, K.K. Nagar,Chennai ",
  pincode: "600078",
  contact: "044 2489 3714",
  available: "Yes"),
  BloodBank(
  name: "Apollo Hospital Enterprises Limited Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/ALVaCVcupCK9G4mn6",
  city: "Chennai",
  address:
  "No:21, Greams Lane, Off Greams Road, Thousand Lights West, Thousand Lights, Chennai",
  pincode: "600006",
  contact: "044 2829 4870,  044 2829 0200",
  available: "Yes"),
  BloodBank(
  name: "Jeevan Blood Bank and Research Centre",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MP3bvB4K4TuvdgyT8",
  city: "Chennai",
  address:
  "2/11, Wheatcrofts Road, Nungambakkam,Chennai, Tamil Nadu 600034",
  pincode: "600034",
  contact: "0435 20220,044 2826 3113",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Madras Medical Mission(Institute of Cardio Vascular Diseses)",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/7CY4fUGGNrNWk7WC8",
  city: "Chennai",
  address: "No. 4 Dr.Jayalalitha Nagar, Mogapair",
  pincode: "600050",
  contact: "044 2656 1801",
  available: "Yes"),
  BloodBank(
  name: "Kanchi Kamakoti Child Trust Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MGM2S6rj9we3r6pP6",
  city: "Chennai",
  address: "12 A, Nageshwara Road, Nungambakkam, Chennai",
  pincode: "600034",
  contact: "044 42001800, Extn 205",
  available: "Yes"),
  BloodBank(
  name: "Vijaya Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MidKKrCfk1Xj4CoW6",
  city: "Chennai",
  address: "New No: 434 (OId No: 180), N.S.K Salai, Vadapalani",
  pincode: "600026",
  contact: "044 24881392, 044 24842931, 044 24802221, 044 24802165",
  available: "Yes"),
  BloodBank(
  name: "Government  Head quarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BWoN2LiPMYy39fvr7",
  city: "Ariyalur",
  address: "Perambalur Road, Ariyalur",
  pincode: "621704",
  contact: "044 22209150,044 24910754,044 22350241",
  available: "Yes"),
  BloodBank(
  name: "Rajiv Gandhi Government General Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BQ1SSUoFWwV9CbsKA",
  city: "Chennai",
  address: "General Hospital Road\\nPark Town,\\nChennai, Tamil Nadu ",
  pincode: "600003",
  contact: "044 2530 5711,  044 2530 5000",
  available: "Yes"),
  BloodBank(
  name: "The Institute of Child Health and Hospital for Children",
  state: "Tamil Nadu",
  district: "https://g.page/ICHandHC?share",
  city: "Chennai",
  address: "Halls Road, Egmore, Chennai",
  pincode: "600008",
  contact: "044 28191132  044 2819 2138",
  available: "Yes"),
  BloodBank(
  name: "Government Kilpauk Medical College Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/691SWjf8EosEdzvD6",
  city: "Chennai",
  address:
  "Government Kilpauk Medical College and Hospital,822, Poonamallee High Rd, Kilpauk, Chennai ",
  pincode: "600010",
  contact: "044 28364955",
  available: "Yes"),
  BloodBank(
  name: "Southern Railway Headquarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/FfAtSmbCBxi8JwFv5",
  city: "Chennai",
  address: "Ayanavaram,Chennai, Tamil Nadu ",
  pincode: "600023",
  contact: "044 2674 1624",
  available: "Yes"),
  BloodBank(
  name: "ESIC Hospital And Occupational Diseases Centre Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/AZxKgj6piAosiDyd8",
  city: "Chennai",
  address: "Ashok Pillar Main Road, K.K. Nagar,Chennai ",
  pincode: "600078",
  contact: "044 2489 3714",
  available: "Yes"),
  BloodBank(
  name: "Apollo Hospital Enterprises Limited Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/ALVaCVcupCK9G4mn6",
  city: "Chennai",
  address:
  "No:21, Greams Lane, Off Greams Road, Thousand Lights West, Thousand Lights, Chennai",
  pincode: "600006",
  contact: "044 2829 4870,  044 2829 0200",
  available: "Yes"),
  BloodBank(
  name: "Jeevan Blood Bank and Research Centre",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MP3bvB4K4TuvdgyT8",
  city: "Chennai",
  address:
  "2/11, Wheatcrofts Road, Nungambakkam,Chennai, Tamil Nadu 600034",
  pincode: "600034",
  contact: "0435 20220,044 2826 3113",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Madras Medical Mission(Institute of Cardio Vascular Diseses)",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/7CY4fUGGNrNWk7WC8",
  city: "Chennai",
  address: "No. 4 Dr.Jayalalitha Nagar, Mogapair",
  pincode: "600050",
  contact: "044 2656 1801",
  available: "Yes"),
  BloodBank(
  name: "Kanchi Kamakoti Child Trust Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MGM2S6rj9we3r6pP6",
  city: "Chennai",
  address: "12 A, Nageshwara Road, Nungambakkam, Chennai",
  pincode: "600034",
  contact: "044 42001800, Extn 205",
  available: "Yes"),
  BloodBank(
  name: "Vijaya Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MidKKrCfk1Xj4CoW6",
  city: "Chennai",
  address: "New No: 434 (OId No: 180), N.S.K Salai, Vadapalani",
  pincode: "600026",
  contact: "044 24881392, 044 24842931, 044 24802221, 044 24802165",
  available: "Yes"),
  BloodBank(
  name: "Government  Head quarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BWoN2LiPMYy39fvr7",
  city: "Ariyalur",
  address: "Perambalur Road, Ariyalur",
  pincode: "621704",
  contact: "044 22209150,044 24910754,044 22350241",
  available: "Yes"),
  BloodBank(
  name: "Rajiv Gandhi Government General Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BQ1SSUoFWwV9CbsKA",
  city: "Chennai",
  address: "General Hospital Road\\nPark Town,\\nChennai, Tamil Nadu ",
  pincode: "600003",
  contact: "044 2530 5711,  044 2530 5000",
  available: "Yes"),
  BloodBank(
  name: "The Institute of Child Health and Hospital for Children",
  state: "Tamil Nadu",
  district: "https://g.page/ICHandHC?share",
  city: "Chennai",
  address: "Halls Road, Egmore, Chennai",
  pincode: "600008",
  contact: "044 28191132  044 2819 2138",
  available: "Yes"),
  BloodBank(
  name: "Government Kilpauk Medical College Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/691SWjf8EosEdzvD6",
  city: "Chennai",
  address:
  "Government Kilpauk Medical College and Hospital,822, Poonamallee High Rd, Kilpauk, Chennai ",
  pincode: "600010",
  contact: "044 28364955",
  available: "Yes"),
  BloodBank(
  name: "Southern Railway Headquarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/FfAtSmbCBxi8JwFv5",
  city: "Chennai",
  address: "Ayanavaram,Chennai, Tamil Nadu ",
  pincode: "600023",
  contact: "044 2674 1624",
  available: "Yes"),
  BloodBank(
  name: "ESIC Hospital And Occupational Diseases Centre Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/AZxKgj6piAosiDyd8",
  city: "Chennai",
  address: "Ashok Pillar Main Road, K.K. Nagar,Chennai ",
  pincode: "600078",
  contact: "044 2489 3714",
  available: "Yes"),
  BloodBank(
  name: "Apollo Hospital Enterprises Limited Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/ALVaCVcupCK9G4mn6",
  city: "Chennai",
  address:
  "No:21, Greams Lane, Off Greams Road, Thousand Lights West, Thousand Lights, Chennai",
  pincode: "600006",
  contact: "044 2829 4870,  044 2829 0200",
  available: "Yes"),
  BloodBank(
  name: "Jeevan Blood Bank and Research Centre",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MP3bvB4K4TuvdgyT8",
  city: "Chennai",
  address:
  "2/11, Wheatcrofts Road, Nungambakkam,Chennai, Tamil Nadu 600034",
  pincode: "600034",
  contact: "0435 20220,044 2826 3113",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Madras Medical Mission(Institute of Cardio Vascular Diseses)",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/7CY4fUGGNrNWk7WC8",
  city: "Chennai",
  address: "No. 4 Dr.Jayalalitha Nagar, Mogapair",
  pincode: "600050",
  contact: "044 2656 1801",
  available: "Yes"),
  BloodBank(
  name: "Kanchi Kamakoti Child Trust Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MGM2S6rj9we3r6pP6",
  city: "Chennai",
  address: "12 A, Nageshwara Road, Nungambakkam, Chennai",
  pincode: "600034",
  contact: "044 42001800, Extn 205",
  available: "Yes"),
  BloodBank(
  name: "Vijaya Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MidKKrCfk1Xj4CoW6",
  city: "Chennai",
  address: "New No: 434 (OId No: 180), N.S.K Salai, Vadapalani",
  pincode: "600026",
  contact: "044 24881392, 044 24842931, 044 24802221, 044 24802165",
  available: "Yes"),
  BloodBank(
  name: "Government  Head quarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BWoN2LiPMYy39fvr7",
  city: "Ariyalur",
  address: "Perambalur Road, Ariyalur",
  pincode: "621704",
  contact: "044 22209150,044 24910754,044 22350241",
  available: "Yes"),
  BloodBank(
  name: "Rajiv Gandhi Government General Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BQ1SSUoFWwV9CbsKA",
  city: "Chennai",
  address: "General Hospital Road\\nPark Town,\\nChennai, Tamil Nadu ",
  pincode: "600003",
  contact: "044 2530 5711,  044 2530 5000",
  available: "Yes"),
  BloodBank(
  name: "The Institute of Child Health and Hospital for Children",
  state: "Tamil Nadu",
  district: "https://g.page/ICHandHC?share",
  city: "Chennai",
  address: "Halls Road, Egmore, Chennai",
  pincode: "600008",
  contact: "044 28191132  044 2819 2138",
  available: "Yes"),
  BloodBank(
  name: "Government Kilpauk Medical College Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/691SWjf8EosEdzvD6",
  city: "Chennai",
  address:
  "Government Kilpauk Medical College and Hospital,822, Poonamallee High Rd, Kilpauk, Chennai ",
  pincode: "600010",
  contact: "044 28364955",
  available: "Yes"),
  BloodBank(
  name: "Southern Railway Headquarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/FfAtSmbCBxi8JwFv5",
  city: "Chennai",
  address: "Ayanavaram,Chennai, Tamil Nadu ",
  pincode: "600023",
  contact: "044 2674 1624",
  available: "Yes"),
  BloodBank(
  name: "ESIC Hospital And Occupational Diseases Centre Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/AZxKgj6piAosiDyd8",
  city: "Chennai",
  address: "Ashok Pillar Main Road, K.K. Nagar,Chennai ",
  pincode: "600078",
  contact: "044 2489 3714",
  available: "Yes"),
  BloodBank(
  name: "Apollo Hospital Enterprises Limited Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/ALVaCVcupCK9G4mn6",
  city: "Chennai",
  address:
  "No:21, Greams Lane, Off Greams Road, Thousand Lights West, Thousand Lights, Chennai",
  pincode: "600006",
  contact: "044 2829 4870,  044 2829 0200",
  available: "Yes"),
  BloodBank(
  name: "Jeevan Blood Bank and Research Centre",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MP3bvB4K4TuvdgyT8",
  city: "Chennai",
  address:
  "2/11, Wheatcrofts Road, Nungambakkam,Chennai, Tamil Nadu 600034",
  pincode: "600034",
  contact: "0435 20220,044 2826 3113",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Madras Medical Mission(Institute of Cardio Vascular Diseses)",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/7CY4fUGGNrNWk7WC8",
  city: "Chennai",
  address: "No. 4 Dr.Jayalalitha Nagar, Mogapair",
  pincode: "600050",
  contact: "044 2656 1801",
  available: "Yes"),
  BloodBank(
  name: "Kanchi Kamakoti Child Trust Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MGM2S6rj9we3r6pP6",
  city: "Chennai",
  address: "12 A, Nageshwara Road, Nungambakkam, Chennai",
  pincode: "600034",
  contact: "044 42001800, Extn 205",
  available: "Yes"),
  BloodBank(
  name: "Vijaya Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MidKKrCfk1Xj4CoW6",
  city: "Chennai",
  address: "New No: 434 (OId No: 180), N.S.K Salai, Vadapalani",
  pincode: "600026",
  contact: "044 24881392, 044 24842931, 044 24802221, 044 24802165",
  available: "Yes"),
  BloodBank(
  name: "Government  Head quarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BWoN2LiPMYy39fvr7",
  city: "Ariyalur",
  address: "Perambalur Road, Ariyalur",
  pincode: "621704",
  contact: "044 22209150,044 24910754,044 22350241",
  available: "Yes"),
  BloodBank(
  name: "Rajiv Gandhi Government General Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BQ1SSUoFWwV9CbsKA",
  city: "Chennai",
  address: "General Hospital Road\\nPark Town,\\nChennai, Tamil Nadu ",
  pincode: "600003",
  contact: "044 2530 5711,  044 2530 5000",
  available: "Yes"),
  BloodBank(
  name: "The Institute of Child Health and Hospital for Children",
  state: "Tamil Nadu",
  district: "https://g.page/ICHandHC?share",
  city: "Chennai",
  address: "Halls Road, Egmore, Chennai",
  pincode: "600008",
  contact: "044 28191132  044 2819 2138",
  available: "Yes"),
  BloodBank(
  name: "Government Kilpauk Medical College Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/691SWjf8EosEdzvD6",
  city: "Chennai",
  address:
  "Government Kilpauk Medical College and Hospital,822, Poonamallee High Rd, Kilpauk, Chennai ",
  pincode: "600010",
  contact: "044 28364955",
  available: "Yes"),
  BloodBank(
  name: "Southern Railway Headquarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/FfAtSmbCBxi8JwFv5",
  city: "Chennai",
  address: "Ayanavaram,Chennai, Tamil Nadu ",
  pincode: "600023",
  contact: "044 2674 1624",
  available: "Yes"),
  BloodBank(
  name: "ESIC Hospital And Occupational Diseases Centre Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/AZxKgj6piAosiDyd8",
  city: "Chennai",
  address: "Ashok Pillar Main Road, K.K. Nagar,Chennai ",
  pincode: "600078",
  contact: "044 2489 3714",
  available: "Yes"),
  BloodBank(
  name: "Apollo Hospital Enterprises Limited Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/ALVaCVcupCK9G4mn6",
  city: "Chennai",
  address:
  "No:21, Greams Lane, Off Greams Road, Thousand Lights West, Thousand Lights, Chennai",
  pincode: "600006",
  contact: "044 2829 4870,  044 2829 0200",
  available: "Yes"),
  BloodBank(
  name: "Jeevan Blood Bank and Research Centre",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MP3bvB4K4TuvdgyT8",
  city: "Chennai",
  address:
  "2/11, Wheatcrofts Road, Nungambakkam,Chennai, Tamil Nadu 600034",
  pincode: "600034",
  contact: "0435 20220,044 2826 3113",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Madras Medical Mission(Institute of Cardio Vascular Diseses)",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/7CY4fUGGNrNWk7WC8",
  city: "Chennai",
  address: "No. 4 Dr.Jayalalitha Nagar, Mogapair",
  pincode: "600050",
  contact: "044 2656 1801",
  available: "Yes"),
  BloodBank(
  name: "Kanchi Kamakoti Child Trust Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MGM2S6rj9we3r6pP6",
  city: "Chennai",
  address: "12 A, Nageshwara Road, Nungambakkam, Chennai",
  pincode: "600034",
  contact: "044 42001800, Extn 205",
  available: "Yes"),
  BloodBank(
  name: "Vijaya Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MidKKrCfk1Xj4CoW6",
  city: "Chennai",
  address: "New No: 434 (OId No: 180), N.S.K Salai, Vadapalani",
  pincode: "600026",
  contact: "044 24881392, 044 24842931, 044 24802221, 044 24802165",
  available: "Yes"),
  BloodBank(
  name: "Government  Head quarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BWoN2LiPMYy39fvr7",
  city: "Ariyalur",
  address: "Perambalur Road, Ariyalur",
  pincode: "621704",
  contact: "044 22209150,044 24910754,044 22350241",
  available: "Yes"),
  BloodBank(
  name: "Rajiv Gandhi Government General Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BQ1SSUoFWwV9CbsKA",
  city: "Chennai",
  address: "General Hospital Road\\nPark Town,\\nChennai, Tamil Nadu ",
  pincode: "600003",
  contact: "044 2530 5711,  044 2530 5000",
  available: "Yes"),
  BloodBank(
  name: "The Institute of Child Health and Hospital for Children",
  state: "Tamil Nadu",
  district: "https://g.page/ICHandHC?share",
  city: "Chennai",
  address: "Halls Road, Egmore, Chennai",
  pincode: "600008",
  contact: "044 28191132  044 2819 2138",
  available: "Yes"),
  BloodBank(
  name: "Government Kilpauk Medical College Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/691SWjf8EosEdzvD6",
  city: "Chennai",
  address:
  "Government Kilpauk Medical College and Hospital,822, Poonamallee High Rd, Kilpauk, Chennai ",
  pincode: "600010",
  contact: "044 28364955",
  available: "Yes"),
  BloodBank(
  name: "Southern Railway Headquarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/FfAtSmbCBxi8JwFv5",
  city: "Chennai",
  address: "Ayanavaram,Chennai, Tamil Nadu ",
  pincode: "600023",
  contact: "044 2674 1624",
  available: "Yes"),
  BloodBank(
  name: "ESIC Hospital And Occupational Diseases Centre Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/AZxKgj6piAosiDyd8",
  city: "Chennai",
  address: "Ashok Pillar Main Road, K.K. Nagar,Chennai ",
  pincode: "600078",
  contact: "044 2489 3714",
  available: "Yes"),
  BloodBank(
  name: "Apollo Hospital Enterprises Limited Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/ALVaCVcupCK9G4mn6",
  city: "Chennai",
  address:
  "No:21, Greams Lane, Off Greams Road, Thousand Lights West, Thousand Lights, Chennai",
  pincode: "600006",
  contact: "044 2829 4870,  044 2829 0200",
  available: "Yes"),
  BloodBank(
  name: "Jeevan Blood Bank and Research Centre",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MP3bvB4K4TuvdgyT8",
  city: "Chennai",
  address:
  "2/11, Wheatcrofts Road, Nungambakkam,Chennai, Tamil Nadu 600034",
  pincode: "600034",
  contact: "0435 20220,044 2826 3113",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Madras Medical Mission(Institute of Cardio Vascular Diseses)",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/7CY4fUGGNrNWk7WC8",
  city: "Chennai",
  address: "No. 4 Dr.Jayalalitha Nagar, Mogapair",
  pincode: "600050",
  contact: "044 2656 1801",
  available: "Yes"),
  BloodBank(
  name: "Kanchi Kamakoti Child Trust Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MGM2S6rj9we3r6pP6",
  city: "Chennai",
  address: "12 A, Nageshwara Road, Nungambakkam, Chennai",
  pincode: "600034",
  contact: "044 42001800, Extn 205",
  available: "Yes"),
  BloodBank(
  name: "Vijaya Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MidKKrCfk1Xj4CoW6",
  city: "Chennai",
  address: "New No: 434 (OId No: 180), N.S.K Salai, Vadapalani",
  pincode: "600026",
  contact: "044 24881392, 044 24842931, 044 24802221, 044 24802165",
  available: "Yes"),
  BloodBank(
  name: "Government  Head quarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BWoN2LiPMYy39fvr7",
  city: "Ariyalur",
  address: "Perambalur Road, Ariyalur",
  pincode: "621704",
  contact: "044 22209150,044 24910754,044 22350241",
  available: "Yes"),
  BloodBank(
  name: "Rajiv Gandhi Government General Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BQ1SSUoFWwV9CbsKA",
  city: "Chennai",
  address: "General Hospital Road\\nPark Town,\\nChennai, Tamil Nadu ",
  pincode: "600003",
  contact: "044 2530 5711,  044 2530 5000",
  available: "Yes"),
  BloodBank(
  name: "The Institute of Child Health and Hospital for Children",
  state: "Tamil Nadu",
  district: "https://g.page/ICHandHC?share",
  city: "Chennai",
  address: "Halls Road, Egmore, Chennai",
  pincode: "600008",
  contact: "044 28191132  044 2819 2138",
  available: "Yes"),
  BloodBank(
  name: "Government Kilpauk Medical College Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/691SWjf8EosEdzvD6",
  city: "Chennai",
  address:
  "Government Kilpauk Medical College and Hospital,822, Poonamallee High Rd, Kilpauk, Chennai ",
  pincode: "600010",
  contact: "044 28364955",
  available: "Yes"),
  BloodBank(
  name: "Southern Railway Headquarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/FfAtSmbCBxi8JwFv5",
  city: "Chennai",
  address: "Ayanavaram,Chennai, Tamil Nadu ",
  pincode: "600023",
  contact: "044 2674 1624",
  available: "Yes"),
  BloodBank(
  name: "ESIC Hospital And Occupational Diseases Centre Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/AZxKgj6piAosiDyd8",
  city: "Chennai",
  address: "Ashok Pillar Main Road, K.K. Nagar,Chennai ",
  pincode: "600078",
  contact: "044 2489 3714",
  available: "Yes"),
  BloodBank(
  name: "Apollo Hospital Enterprises Limited Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/ALVaCVcupCK9G4mn6",
  city: "Chennai",
  address:
  "No:21, Greams Lane, Off Greams Road, Thousand Lights West, Thousand Lights, Chennai",
  pincode: "600006",
  contact: "044 2829 4870,  044 2829 0200",
  available: "Yes"),
  BloodBank(
  name: "Jeevan Blood Bank and Research Centre",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MP3bvB4K4TuvdgyT8",
  city: "Chennai",
  address:
  "2/11, Wheatcrofts Road, Nungambakkam,Chennai, Tamil Nadu 600034",
  pincode: "600034",
  contact: "0435 20220,044 2826 3113",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Madras Medical Mission(Institute of Cardio Vascular Diseses)",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/7CY4fUGGNrNWk7WC8",
  city: "Chennai",
  address: "No. 4 Dr.Jayalalitha Nagar, Mogapair",
  pincode: "600050",
  contact: "044 2656 1801",
  available: "Yes"),
  BloodBank(
  name: "Kanchi Kamakoti Child Trust Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MGM2S6rj9we3r6pP6",
  city: "Chennai",
  address: "12 A, Nageshwara Road, Nungambakkam, Chennai",
  pincode: "600034",
  contact: "044 42001800, Extn 205",
  available: "Yes"),
  BloodBank(
  name: "Vijaya Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MidKKrCfk1Xj4CoW6",
  city: "Chennai",
  address: "New No: 434 (OId No: 180), N.S.K Salai, Vadapalani",
  pincode: "600026",
  contact: "044 24881392, 044 24842931, 044 24802221, 044 24802165",
  available: "Yes"),
  BloodBank(
  name: "Government  Head quarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BWoN2LiPMYy39fvr7",
  city: "Ariyalur",
  address: "Perambalur Road, Ariyalur",
  pincode: "621704",
  contact: "044 22209150,044 24910754,044 22350241",
  available: "Yes"),
  BloodBank(
  name: "Rajiv Gandhi Government General Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BQ1SSUoFWwV9CbsKA",
  city: "Chennai",
  address: "General Hospital Road\\nPark Town,\\nChennai, Tamil Nadu ",
  pincode: "600003",
  contact: "044 2530 5711,  044 2530 5000",
  available: "Yes"),
  BloodBank(
  name: "The Institute of Child Health and Hospital for Children",
  state: "Tamil Nadu",
  district: "https://g.page/ICHandHC?share",
  city: "Chennai",
  address: "Halls Road, Egmore, Chennai",
  pincode: "600008",
  contact: "044 28191132  044 2819 2138",
  available: "Yes"),
  BloodBank(
  name: "Government Kilpauk Medical College Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/691SWjf8EosEdzvD6",
  city: "Chennai",
  address:
  "Government Kilpauk Medical College and Hospital,822, Poonamallee High Rd, Kilpauk, Chennai ",
  pincode: "600010",
  contact: "044 28364955",
  available: "Yes"),
  BloodBank(
  name: "Southern Railway Headquarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/FfAtSmbCBxi8JwFv5",
  city: "Chennai",
  address: "Ayanavaram,Chennai, Tamil Nadu ",
  pincode: "600023",
  contact: "044 2674 1624",
  available: "Yes"),
  BloodBank(
  name: "ESIC Hospital And Occupational Diseases Centre Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/AZxKgj6piAosiDyd8",
  city: "Chennai",
  address: "Ashok Pillar Main Road, K.K. Nagar,Chennai ",
  pincode: "600078",
  contact: "044 2489 3714",
  available: "Yes"),
  BloodBank(
  name: "Apollo Hospital Enterprises Limited Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/ALVaCVcupCK9G4mn6",
  city: "Chennai",
  address:
  "No:21, Greams Lane, Off Greams Road, Thousand Lights West, Thousand Lights, Chennai",
  pincode: "600006",
  contact: "044 2829 4870,  044 2829 0200",
  available: "Yes"),
  BloodBank(
  name: "Jeevan Blood Bank and Research Centre",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MP3bvB4K4TuvdgyT8",
  city: "Chennai",
  address:
  "2/11, Wheatcrofts Road, Nungambakkam,Chennai, Tamil Nadu 600034",
  pincode: "600034",
  contact: "0435 20220,044 2826 3113",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Madras Medical Mission(Institute of Cardio Vascular Diseses)",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/7CY4fUGGNrNWk7WC8",
  city: "Chennai",
  address: "No. 4 Dr.Jayalalitha Nagar, Mogapair",
  pincode: "600050",
  contact: "044 2656 1801",
  available: "Yes"),
  BloodBank(
  name: "Kanchi Kamakoti Child Trust Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MGM2S6rj9we3r6pP6",
  city: "Chennai",
  address: "12 A, Nageshwara Road, Nungambakkam, Chennai",
  pincode: "600034",
  contact: "044 42001800, Extn 205",
  available: "Yes"),
  BloodBank(
  name: "Vijaya Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MidKKrCfk1Xj4CoW6",
  city: "Chennai",
  address: "New No: 434 (OId No: 180), N.S.K Salai, Vadapalani",
  pincode: "600026",
  contact: "044 24881392, 044 24842931, 044 24802221, 044 24802165",
  available: "Yes"),
  BloodBank(
  name: "Government  Head quarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BWoN2LiPMYy39fvr7",
  city: "Ariyalur",
  address: "Perambalur Road, Ariyalur",
  pincode: "621704",
  contact: "044 22209150,044 24910754,044 22350241",
  available: "Yes"),
  BloodBank(
  name: "Rajiv Gandhi Government General Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/BQ1SSUoFWwV9CbsKA",
  city: "Chennai",
  address: "General Hospital Road\\nPark Town,\\nChennai, Tamil Nadu ",
  pincode: "600003",
  contact: "044 2530 5711,  044 2530 5000",
  available: "Yes"),
  BloodBank(
  name: "The Institute of Child Health and Hospital for Children",
  state: "Tamil Nadu",
  district: "https://g.page/ICHandHC?share",
  city: "Chennai",
  address: "Halls Road, Egmore, Chennai",
  pincode: "600008",
  contact: "044 28191132  044 2819 2138",
  available: "Yes"),
  BloodBank(
  name: "Government Kilpauk Medical College Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/691SWjf8EosEdzvD6",
  city: "Chennai",
  address:
  "Government Kilpauk Medical College and Hospital,822, Poonamallee High Rd, Kilpauk, Chennai ",
  pincode: "600010",
  contact: "044 28364955",
  available: "Yes"),
  BloodBank(
  name: "Southern Railway Headquarters Hospital",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/FfAtSmbCBxi8JwFv5",
  city: "Chennai",
  address: "Ayanavaram,Chennai, Tamil Nadu ",
  pincode: "600023",
  contact: "044 2674 1624",
  available: "Yes"),
  BloodBank(
  name: "ESIC Hospital And Occupational Diseases Centre Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/AZxKgj6piAosiDyd8",
  city: "Chennai",
  address: "Ashok Pillar Main Road, K.K. Nagar,Chennai ",
  pincode: "600078",
  contact: "044 2489 3714",
  available: "Yes"),
  BloodBank(
  name: "Apollo Hospital Enterprises Limited Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/ALVaCVcupCK9G4mn6",
  city: "Chennai",
  address:
  "No:21, Greams Lane, Off Greams Road, Thousand Lights West, Thousand Lights, Chennai",
  pincode: "600006",
  contact: "044 2829 4870,  044 2829 0200",
  available: "Yes"),
  BloodBank(
  name: "Jeevan Blood Bank and Research Centre",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MP3bvB4K4TuvdgyT8",
  city: "Chennai",
  address:
  "2/11, Wheatcrofts Road, Nungambakkam,Chennai, Tamil Nadu 600034",
  pincode: "600034",
  contact: "0435 20220,044 2826 3113",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Apollo Speciality Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/87dfVUbQKAE7NSQm6",
  city: "Chennai",
  address:
  "4th Floor, Geo Tower, Old No.319, New No.465, Anna Salai, Nandanam, Chennai",
  pincode: "600035",
  contact: "044 24347288, 044 24331741, 044 24336119",
  available: "Yes"),
  BloodBank(
  name: "Madras Medical Mission(Institute of Cardio Vascular Diseses)",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/7CY4fUGGNrNWk7WC8",
  city: "Chennai",
  address: "No. 4 Dr.Jayalalitha Nagar, Mogapair",
  pincode: "600050",
  contact: "044 2656 1801",
  available: "Yes"),
  BloodBank(
  name: "Kanchi Kamakoti Child Trust Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MGM2S6rj9we3r6pP6",
  city: "Chennai",
  address: "12 A, Nageshwara Road, Nungambakkam, Chennai",
  pincode: "600034",
  contact: "044 42001800, Extn 205",
  available: "Yes"),
  BloodBank(
  name: "Vijaya Hospital Blood Bank",
  state: "Tamil Nadu",
  district: "https://goo.gl/maps/MidKKrCfk1Xj4CoW6",
  city: "Chennai",
  address: "New No: 434 (OId No: 180), N.S.K Salai, Vadapalani",
  pincode: "600026",
  contact: "044 24881392, 044 24842931, 044 24802221, 044 24802165",
  available: "Yes"),
  BloodBank(
  name: "I.N.H.S. Dhanvantri",
  state: "Andaman and Nicobar Islands",
  district: "https:\/\/goo.gl\/maps\/NFyQviP9cS8X56fY9",
  city: "Port Blair",
  address: "Minni Bay",
  pincode: "",
  contact: "03192 248759",
  available: "Yes"),
  BloodBank(
  name: "Pillar Health Centre",
  state: "Andaman and Nicobar Islands",
  district: "https:\/\/goo.gl\/maps\/5cM2dyBYTSMvUpac9",
  city: "Port Blair",
  address: "Junglighat,Lamba Line, P.B. No.526",
  pincode: "",
  contact: "03192 233193, 03192 233993",
  available: "Yes"),
  BloodBank(
  name: "A.P.Vidya Vidhana Parishad Community Hospital Blood Bank",
  state: "Andhra Pradesh",
  district: "https:\/\/goo.gl\/maps\/AXsJKogCXrHuF8376",
  city: "Gudur",
  address: "Hospital Road",
  pincode: "",
  contact: "08624 251804",
  available: "Yes"),
  BloodBank(
  name: "A.S.N. Raju Charitable Trust Blood Bank",
  state: "Andhra Pradesh",
  district: "https:\/\/goo.gl\/maps\/Ue9cDqNWQ5FzCW4T8",
  city: "Bhimavaram",
  address: "Door No. 24-1-1, R.K. Plaza (Sarovar Complex), J.P. Road",
  pincode: "",
  contact: "0886 222558",
  available: "Yes"),
  BloodBank(
  name: "Alluri Sita Rama Raju Acadamy of Medical Sciences Blood Bank",
  state: "Andhra Pradesh",
  district: "https:\/\/goo.gl\/maps\/ubivQH4BE5qaZxm29",
  city: "Eluru",
  address: "Ground Floor, Hospital Block, NH5",
  pincode: "",
  contact: "08812 244484",
  available: "Yes"),
  BloodBank(
  name: "Anil Neerukunda Hospital Blood Bank",
  state: "Andhra Pradesh",
  district: "https:\/\/goo.gl\/maps\/deRnzVvrWevt5QJM8",
  city: "Visakhapatnam",
  address: "Sangi Valasa, Bheemunipatnam (M)",
  pincode: "",
  contact: "08933 226961, 08933 226900",
  available: "Yes"),
  BloodBank(
  name: "Apollo Hospitals Heart and Kidney Centre Blood Bank",
  state: "Andhra Pradesh",
  district: "https:\/\/goo.gl\/maps\/fPwnguisyrigtowU9",
  city: "Visakhapatnam",
  address: "Apollo Hospitals Entps. , 10-50-80, Heart and Kidney Center, 1st Floor, Waltair Main Road",
  pincode: "",
  contact: "0891 252619, 0891 252622",
  available: "Yes"),
  BloodBank(
  name: "APVVP Area Hospital Blood Bank",
  state: "Andhra Pradesh",
  district: "https:\/\/goo.gl\/maps\/i4URS9jYJLxPN1nk8",
  city: "Proddutur",
  address: "Area Hospital Premises, Ground Floor",
  pincode: "",
  contact: "08562 253342, 08562 253154",
  available: "Yes"),
  BloodBank(
  name: "S.P.S.R Nellore",
  state: "Andhra Pradesh",
  district: "https:\/\/goo.gl\/maps\/weaA4ABq56cRd3pv7",
  city: "Kavali",
  address: "APVVP Area Hospital Blood Bank, Kavali, S.P.S.R Nellore",
  pincode: "",
  contact: "08626 240167",
  available: "Yes"),
  BloodBank(
  name: "APVVP Community Hospital",
  state: "Andhra Pradesh",
  district: "https:\/\/goo.gl\/maps\/vPG6SMe7gTBpcTQ59",
  city: "Madanapally",
  address: "Area Hospital Premises",
  pincode: "",
  contact: "08572 22087",
  available: "Yes"),
  BloodBank(
  name: "APVVP District Hospital Blood Bank",
  state: "Andhra Pradesh",
  district: "https:\/\/goo.gl\/maps\/qQ7DTTYH263dU2HF6",
  city: "Tenali",
  address: "Ground Floor, Hospital Premises, Chenchupet",
  pincode: "",
  contact: "08644 228850",
  available: "Yes"),
  BloodBank(
  name: "APVVP NT Rama Rao Vaidyalayam Blood Bank",
  state: "Andhra Pradesh",
  district: "https:\/\/goo.gl\/maps\/mva1Jqp8mcb9iRKU9",
  city: "Anakapalle",
  address: "Poolbagh Road",
  pincode: "",
  contact: "08924 223340",
  available: "Yes"),
  BloodBank(
  name: "AS Raja Voluntary Blood Bank",
  state: "Andhra Pradesh",
  district: "https:\/\/g.page\/asrajabloodbank?share",
  city: "Visakhapatnam",
  address: "AS Raja Voluntary Blood Bank, D.No. 10-50-11\/7, 1st Floor, Virasi Centre, Waltair Main Road",
  pincode: "",
  contact: "0891 2543436, 0891 5563436",
  available: "Yes"),
  BloodBank(
  name: "ASN Raju Charitable Trust Blood Bank",
  state: "Andhra Pradesh",
  district: "https:\/\/goo.gl\/maps\/VCHmRZZFGMWsMf9i6",
  city: "Palakollu",
  address: "H.No. 15-5-4 and 16, I st and II nd Floor, Sri Satya Sai Complex, Bank Street",
  pincode: "",
  contact: "0886 222558",
  available: "Yes"),
  BloodBank(
  name: "Belif Blood Bank",
  state: "Andhra Pradesh",
  district: "https:\/\/goo.gl\/maps\/8oiYpEVNtiHNzLw18",
  city: "Ongole",
  address: "Sai Complex III Floor, Addanki Bus Stop Centre, Kurnool Road",
  pincode: "",
  contact: "0859 2222345",
  available: "Yes"),
  BloodBank(
  name: "Bethesda Blood Bank (A Unit of Bethesda Homes Voluntary Organisation)",
  state: "Andhra Pradesh",
  district: "https:\/\/goo.gl\/maps\/dySPitJJ4kDdb2UZ6",
  city: "Vijayawada",
  address: "D.No. 29-10-2, Ground Floor, Narasimharao Naidu Street, Suryaraopet",
  pincode: "",
  contact: "0866 2435888",
  available: "Yes"),
  BloodBank(
  name: "Bhimavaram Hospitals Limited Blood Bank",
  state: "Andhra Pradesh",
  district: "https:\/\/goo.gl\/maps\/LLrVACWtvkQTxdF8A",
  city: "Bhimavaram",
  address: "64\/6A, 6B\/7A & 7B, I st Floor, Opp. SRKR Eng. Col., Juvvalapalem Road",
  pincode: "",
  contact: "08814 221111, 08814 221122, 08814 221133, 08814 221100",
  available: "Yes"),
  BloodBank(
  name: "Blood Bank Aayush Hospital",
  state: "Andhra Pradesh",
  district: "https:\/\/goo.gl\/maps\/nFKkLuG8fqNFJ8D79",
  city: "Vijayawada",
  address: "Aayush NRI LEPL Health Care Pvt. ., First Floor, D. No. 40-13-3 & 3A, Ring Road, Sri Ramachandra Nagar, Vijayawada",
  pincode: "",
  contact: "0866 2541414",
  available: "Yes"),
  BloodBank(
  name: "District Co-ordinator of Hospital Services Blood Bank",
  state: "Andhra Pradesh",
  district: "https:\/\/goo.gl\/maps\/eWnRqBaFMoFHdNLD7",
  city: "Machilipatnam",
  address: "Ground Floor, District Hospital Premises",
  pincode: "",
  contact: "08672 222302",
  available: "Yes"),
  BloodBank(
  name: "District Head Quarter Hospital Blood Bank",
  state: "Andhra Pradesh",
  district: "https:\/\/goo.gl\/maps\/Wi1oH2tGxScbG7rN6",
  city: "Chittoor",
  address: "1st Floor, District Head Quarter Hospital Premises",
  pincode: "",
  contact: "08572 22087",
  available: "Yes"),
  BloodBank(
  name: "District Hospital Blood Bank",
  state: "Andhra Pradesh",
  district: "https:\/\/goo.gl\/maps\/zK7D8aJkYbnuRTam6",
  city: "Rajahmundry",
  address: "1st Floor, District Hospital Premises",
  pincode: "",
  contact: "0866 2440044, 0883 2428555",
  available: "Yes"),
  BloodBank(
  name: "Dr. Anji Reddy Multispeciality Hospitals Pvt",
  state: "Andhra Pradesh",
  district: "https:\/\/g.page\/AnjireddyHospital?share",
  city: "Piduguralla",
  address: "D. No. 7-320",
  pincode: "",
  contact: "08649 254001, 08649 254002",
  available: "Yes"),
  BloodBank(
  name: "Dr. Pinnamaneni Siddartha Inst. of Medical Sci. and Res. Foundation Blood Bank",
  state: "Andhra Pradesh",
  district: "https:\/\/goo.gl\/maps\/f9P2YG6PQPd6zvHk6",
  city: "Gannavaram Mandal",
  address: "Siddhartha Nagar Chinoutpalli (V), Gannavaram Mandal",
  pincode: "",
  contact: "08676 257311, 08676 257317",
  available: "Yes"),
  ];
  return hospital;
}

class BloodBankSearch extends SearchDelegate<BloodBank> {
  @override
  List<Widget> buildActions(BuildContext context) {
    Size? size = MediaQuery.of(context).size;
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(
            context,
            BloodBank(
                name: "",
                state: "",
                district: "",
                city: "",
                address: "",
                pincode: "",
                contact: "",
                available: ""));
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    Size? size = MediaQuery.of(context).size;
    final myList = query.isEmpty
        ? loadBloodBank()
        : loadBloodBank()
            .where((p) =>
                p.name!.toLowerCase().startsWith(query) ||
                p.name!.toLowerCase().contains(query) ||
                p.pincode!.toLowerCase().startsWith(query) ||
                p.city!.toLowerCase().contains(query) ||
                p.city!.toLowerCase().startsWith(query))
            .toList();

    return myList.isEmpty
        ? const Center(
            child: Text(
            'No Results Found...',
            style: TextStyle(fontSize: 20, color: Colors.red),
          ))
        : ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              final BloodBank listItem = myList[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SingleBloodBank(
                              name: listItem.name!,
                              state: listItem.state!,
                              district: listItem.district!.toString(),
                              available: listItem.available!,
                              pincode: listItem.pincode!.toString(),
                              address: listItem.address!,
                              contact: listItem.contact!,
                              city: listItem.city!)));
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Theme.of(context).primaryColor,
                          border: Border.all(color: color),
                          boxShadow: [
                            BoxShadow(
                                color: Theme.of(context)
                                    .secondaryHeaderColor
                                    .withAlpha(100),
                                blurRadius: 10.0),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    width: size.width * 0.6,
                                    child: Text(
                                      listItem.name!,
                                      style: GoogleFonts.montserrat(
                                          color: color,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    listItem.city!,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 17, color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: Container(
                                width: 90,
                                height: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(45),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/blood.png"),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
              );
            },
            itemCount: myList.length,
          );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final myList = query.isEmpty
        ? loadBloodBank()
        : loadBloodBank()
            .where((p) =>
                p.name!.toLowerCase().startsWith(query) ||
                p.name!.toLowerCase().contains(query) ||
                p.state!.startsWith(query) ||
                p.state!.toLowerCase().startsWith(query) ||
                p.available!.startsWith(query) ||
                p.district!.toLowerCase().startsWith(query) ||
                p.district!.startsWith(query) ||
                p.contact!.toLowerCase().startsWith(query) ||
                p.contact!.startsWith(query) ||
                p.address!.toLowerCase().startsWith(query) ||
                p.address!.startsWith(query) ||
                p.pincode!.toLowerCase().startsWith(query) ||
                p.city!.toLowerCase().contains(query) ||
                p.city!.toLowerCase().startsWith(query))
            .toList();

    return myList.isEmpty
        ? Center(
            child: Text(
            'No Results Found...',
            style: TextStyle(fontSize: 20, color: Colors.red),
          ))
        : ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              final BloodBank listItem = myList[index];
              return GestureDetector(
                onTap: () {
                  print(listItem.name);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SingleBloodBank(
                              name: listItem.name!,
                              state: listItem.state!,
                              district: listItem.district!.toString(),
                              available: listItem.available!,
                              pincode: listItem.pincode!.toString(),
                              address: listItem.address!,
                              contact: listItem.contact!,
                              city: listItem.city!)));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 10,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            color: Theme.of(context).primaryColor,
                            border: Border.all(color: color),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withAlpha(100),
                                  blurRadius: 10.0),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.57,
                                      child: Text(
                                        listItem.name!,
                                        style: GoogleFonts.montserrat(
                                            color: color,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      listItem.city!,
                                      style: GoogleFonts.montserrat(
                                          fontSize: 17, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: Container(
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(45),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/blood.png"),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              );
            },
            itemCount: myList.length,
          );
  }
}

class SingleBloodBank extends StatelessWidget {
  final String? name;
  final String? state;
  final String? district;
  final String? city;
  final String? address;
  final String? pincode;
  final String? contact;
  final String? available;

  const SingleBloodBank({
    this.name,
    this.state,
    this.district,
    this.city,
    this.address,
    this.contact,
    this.pincode,
    this.available,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: IconButton(
                        icon: Icon(Icons.arrow_back, color: color, size: 30),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                ),
                //SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Center(
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/blood.png'),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 10),
                    child: Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Center(
                          child: Text(
                            name!,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                                fontSize: 32,
                                color: color,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Center(
                      child: Text(
                        city!,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          fontSize: 24,
                          color: Theme.of(context).secondaryHeaderColor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Card(
                      elevation: 10,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            border: Border.all(color: color)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Address      ',
                                      style: GoogleFonts.montserrat(
                                          color: Colors.grey,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Text(
                                        address!,
                                        style: GoogleFonts.montserrat(
                                            fontSize: 22, color: color),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Pin Code     ',
                                      style: GoogleFonts.montserrat(
                                          color: Colors.grey,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Text(
                                        pincode!,
                                        style: GoogleFonts.montserrat(
                                            fontSize: 22, color: color),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Available    ',
                                      style: GoogleFonts.montserrat(
                                          color: Colors.grey,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Text(
                                        available!,
                                        style: GoogleFonts.montserrat(
                                            fontSize: 22, color: color),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Contact       ',
                                      style: GoogleFonts.montserrat(
                                          color: Colors.grey,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.52,
                                      child: Text(
                                        contact!,
                                        style: GoogleFonts.montserrat(
                                            fontSize: 22, color: color),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                LocationButtonWidget(
                  url: district!,
                ),
              ],
            ),
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

class OxygenBankSearch extends SearchDelegate<BloodBank> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(
            context,
            BloodBank(
                name: "",
                state: "",
                district: "",
                city: "",
                address: "",
                pincode: "",
                contact: "",
                available: ""));
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final myList = query.isEmpty
        ? loadBloodBank()
        : loadBloodBank()
            .where((p) =>
                p.name!.toLowerCase().startsWith(query) ||
                p.name!.toLowerCase().contains(query) ||
                p.pincode!.toLowerCase().startsWith(query) ||
                p.city!.toLowerCase().contains(query) ||
                p.city!.toLowerCase().startsWith(query))
            .toList();

    return myList.isEmpty
        ? const Center(
            child: Text(
            'No Results Found...',
            style: TextStyle(fontSize: 20, color: Colors.red),
          ))
        : ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              final BloodBank listItem = myList[index];
              return MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SingleOxygenBank(
                              name: listItem.name!,
                              state: listItem.state!,
                              district: listItem.district!.toString(),
                              available: listItem.available!,
                              pincode: listItem.pincode.toString(),
                              address: listItem.address!,
                              contact: listItem.contact!,
                              city: listItem.city!)));
                },
                child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Theme.of(context)
                                  .secondaryHeaderColor
                                  .withAlpha(100),
                              blurRadius: 10.0),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  width: 160,
                                  child: Text(
                                    listItem.name!,
                                    style: GoogleFonts.montserrat(
                                        color: Color(0xFF0492c2),
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  listItem.city!,
                                  style: GoogleFonts.montserrat(
                                      fontSize: 17, color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  listItem.pincode!,
                                  style: GoogleFonts.montserrat(
                                      fontSize: 17,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(45),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/cylinder.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              );
            },
            itemCount: myList.length,
          );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final myList = query.isEmpty
        ? loadBloodBank()
        : loadBloodBank()
            .where((p) =>
                p.name!.toLowerCase().startsWith(query) ||
                p.name!.toLowerCase().contains(query) ||
                p.state!.startsWith(query) ||
                p.state!.toLowerCase().startsWith(query) ||
                p.available!.startsWith(query) ||
                p.district!.toLowerCase().startsWith(query) ||
                p.district!.startsWith(query) ||
                p.contact!.toLowerCase().startsWith(query) ||
                p.contact!.startsWith(query) ||
                p.address!.toLowerCase().startsWith(query) ||
                p.address!.startsWith(query) ||
                p.pincode!.toLowerCase().startsWith(query) ||
                p.city!.toLowerCase().contains(query) ||
                p.city!.toLowerCase().startsWith(query))
            .toList();

    return myList.isEmpty
        ? const Center(
            child: Text(
            'No Results Found...',
            style: TextStyle(fontSize: 20, color: Colors.red),
          ))
        : ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              final BloodBank listItem = myList[index];
              return MaterialButton(
                onPressed: () {
                  print(listItem.name);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SingleBloodBank(
                              name: listItem.name,
                              state: listItem.state,
                              district: listItem.district.toString(),
                              available: listItem.available,
                              pincode: listItem.pincode.toString(),
                              address: listItem.address,
                              contact: listItem.contact,
                              city: listItem.city)));
                },
                child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withAlpha(100),
                              blurRadius: 10.0),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  width: 160,
                                  child: Text(
                                    listItem.name!,
                                    style: GoogleFonts.montserrat(
                                        color: Color(0xFF0492c2),
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  listItem.city!,
                                  style: GoogleFonts.montserrat(
                                      fontSize: 17, color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  listItem.pincode!,
                                  style: GoogleFonts.montserrat(
                                      fontSize: 17,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(45),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/cylinder.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              );
            },
            itemCount: myList.length,
          );
  }
}

class SingleOxygenBank extends StatelessWidget {
  final String? name;
  final String? state;
  final String? district;
  final String? city;
  final String? address;
  final String? pincode;
  final String? contact;
  final String? available;

  const SingleOxygenBank({
    this.name,
    this.state,
    this.district,
    this.city,
    this.address,
    this.contact,
    this.pincode,
    this.available,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: IconButton(
                        icon: Icon(Icons.arrow_back,
                            color: Theme.of(context).secondaryHeaderColor,
                            size: 30),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                ),
                //SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Center(
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/cylinder.jpg'),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 10),
                    child: Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Center(
                          child: Text(
                            name!,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                                fontSize: 32,
                                color: Color(0xFF0492c2),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Center(
                      child: Text(
                        city!,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          fontSize: 24,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Theme.of(context).primaryColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 2,
                            blurRadius: 1,
                            offset: Offset(0, 3),
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Address      ',
                                    style: GoogleFonts.montserrat(
                                        color: Theme.of(context)
                                            .secondaryHeaderColor,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.50,
                                    child: Text(
                                      address!,
                                      style: GoogleFonts.montserrat(
                                          fontSize: 22,
                                          color: Colors.blue.shade900),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Pin Code     ',
                                    style: GoogleFonts.montserrat(
                                        color: Theme.of(context)
                                            .secondaryHeaderColor,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.50,
                                    child: Text(
                                      pincode!,
                                      style: GoogleFonts.montserrat(
                                          fontSize: 22,
                                          color: Colors.blue.shade900),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Available    ',
                                    style: GoogleFonts.montserrat(
                                        color: Theme.of(context)
                                            .secondaryHeaderColor,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.50,
                                    child: Text(
                                      available!,
                                      style: GoogleFonts.montserrat(
                                          fontSize: 22,
                                          color: Colors.blue.shade900),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Contact       ',
                                    style: GoogleFonts.montserrat(
                                        color: Theme.of(context)
                                            .secondaryHeaderColor,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.52,
                                    child: Text(
                                      contact!,
                                      style: GoogleFonts.montserrat(
                                          fontSize: 22,
                                          color: Colors.blue.shade900),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                LocationButtonWidget(
                  url: district,
                ),
              ],
            ),
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
