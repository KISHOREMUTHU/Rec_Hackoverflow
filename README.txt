# DocBook

A Multi - Functional Flutter Application to perform online consultation of doctors, renting and buying of medical instruments, connect to nearby blood banks, and other functionalities.

## Functionalities

 - Book slots for vaccinations.
 - Rent home-medical equipment’s
 - Buy home-medical equipment’s
 - To establish connection with nearby blood banks
 - Medicine reminders
 - Consult doctors through video conference
 - See updated news in medical field. 
 - To classify skin diseases based on user image

## Tech Stack 

 - Flutter
 - Firebase
 - Python
 - Agora 
 - Video API (free API) 
 - Blood Bank Directory (csv file) 
 - Razor Pay API (Payment Gateway Integration)
 - Tensorflow lite
 - Blockchain

## Login Page 

 - The application starts with a login page, where the user logs in through their verified mobile number. After the user is logged in, the app gets navigated to the home page.

## Home page

 - This page provides a walkthrough of all the services and features, that  are available inside the app.

## Medical Equipment's Renting

 - The app consists of a renting and buying section, where users can purchase medicinal equipment for temporary and permanent use.
 - Once the user chooses the buy/rent option, it directly goes to the payment gateway using RazorPay API, which has been integrated to perform a faster and more secure transaction.

## Health News Feed

 - On this page, people can get to know all the current updates in the field of medicine.

## Online Doctor Consultation Section

 - On this page, people can book their slots and consult the doctors, who are available and registered into the app.
 - Once the user picks a doctor, the user can check the available slots and then pick a slot, which is convenient to them.
 - Once the desired slot is picked, the user has to pay the booking fee. Once the fee is paid, he can get the video conferencing link, and he can consult the doctor at the given allotted time.

## Prescription Record Monitor System

 - On this page, people can record their medicinal prescriptions, in order to take the correct medication at the right time.
 - Here when the user records his prescription he will get notification to take the medicine at the time he sets.
 - This is due to the enabling of local notifications for alerting the user to take the prescribed medicine at the right time.

## Skin diseases classification system

 - On this page, users can classify their skin diseases by turning on their camera.
 - The skin diseases is classified by our pre-defined models using tensorflow lite.
