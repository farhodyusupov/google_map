// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:geocoding/geocoding.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:flutter/services.dart';
// class LocationPage extends StatefulWidget {
//   @override
//   _LocationPageState createState() => _LocationPageState();
// }
//
// class _LocationPageState extends State<LocationPage> {
//   Position _currentPosition;
//   String _currentAddress;
//   final Geolocator geolocator = Geolocator();
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _getCurrentLocation();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("Location"),
//         ),
//         body:SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Container(
//                   decoration: BoxDecoration(
//                     color: Theme.of(context).canvasColor,
//                   ),
//                   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                   child: Column(
//                     children: <Widget>[
//                       Row(
//                         children: <Widget>[
//                           Icon(Icons.location_on),
//                           SizedBox(
//                             width: 8,
//                           ),
//                           Expanded(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: <Widget>[
//                                 Text(
//                                   'Location',
//                                   style: Theme.of(context).textTheme.caption,
//                                 ),
//                                 if (_currentPosition != null &&
//                                     _currentAddress != null)
//                                   Text(_currentAddress,
//                                       style:
//                                       Theme.of(context).textTheme.bodyText2),
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             width: 8,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//   _getCurrentLocation() {
//     Geolocator
//         .getCurrentPosition(desiredAccuracy: LocationAccuracy.best, forceAndroidLocationManager: true)
//         .then((Position position) {
//       setState(() {
//         _currentPosition = position;
//         _getAddressFromLatLng();
//       });
//     }).catchError((e) {
//       print(e);
//     });
//   }
//
//   _getAddressFromLatLng() async {
//     try {
//       List<Placemark> placemarks = await placemarkFromCoordinates(
//           _currentPosition.latitude,
//           _currentPosition.longitude
//       );
//
//       Placemark place = placemarks[0];
//
//       setState(() {
//         _currentAddress = "${place.locality}, ${place.postalCode}, ${place.country}";
//       });
//     } catch (e) {
//       print(e);
//     }
//   }
// }
