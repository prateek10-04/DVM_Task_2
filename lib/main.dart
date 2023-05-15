import 'dart:ui';
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/views/home.dart';
import 'firebase_options.dart';


Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

// Widget other(){
//   return
//     Container(
//       padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 19.0),
//       width: double.infinity,
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment(-1, -0.053),
//           end: Alignment(1, -0.053),
//           colors: <Color>[Color(0xff050505), Color(0xff00020c)],
//           stops: <double>[0, 1],
//         ),
//       ),
//
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//             // autogroupdh5atjz (b3t9GC9RJ3NxCw4NFdH5a)
//             margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
//             width: double.infinity,
//
//             child:
//             Stack(
//               children: [
//                 Positioned(
//                   // group48096070QyE (0:294)
//                   left: 0.0,
//                   top: 0.0,
//                   child:
//                   Align(
//                     child:
//                     SizedBox(
//                       width: 1518.87,
//                       height: 461.4,
//                       child:
//                       Image.network(
//                         'https://w7.pngwing.com/pngs/374/900/png-transparent-computer-icons-christian-cross-icon-design-christian-cross-thumbnail.png',
//                         width: 1518.87,
//                         height: 461.4,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   // usersVDz (0:300)
//                   left: 28.0,
//                   top: 75.0,
//                   child:
//                   Align(
//                     child:
//                     SizedBox(
//                       width: 118.95,
//                       height: 38.0,
//                       child:
//                       Text(
//                         'Users',
//                         style: TextStyle(
//
//                           fontSize: 28.0,
//                           fontWeight: FontWeight.w600,
//                           height: 1.3618164062,
//                           color: Color(0xffffffff),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   // vector77mBW (0:304)
//                   left: 0.0,
//                   top: 0.0,
//                   child:
//                   Align(
//                     child:
//                     SizedBox(
//                       width: 663.27,
//                       height: 174.88,
//                       child:
//                       Image.network(
//                         'https://w7.pngwing.com/pngs/374/900/png-transparent-computer-icons-christian-cross-icon-design-christian-cross-thumbnail.png',
//                         width: 663.27,
//                         height: 174.88,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   // vector781Lk (0:305)
//                   left: 0.0,
//                   top: 0.0,
//                   child:
//                   Align(
//                     child:
//                     SizedBox(
//                       width: 569.96,
//                       height: 144.16,
//                       child:
//                       Image.network(
//                         'https://static.vecteezy.com/system/resources/previews/000/552/683/original/geo-location-pin-vector-icon.jpg',
//                         width: 569.96,
//                         height: 144.16,
//                       ),
//                     ),
//                   ),
//                 ),
//
//                 Positioned(
//                     left: 20.0,
//                     top: 271.0,
//
//                     child: card()
//
//                 ),
//
//
//
//
//
//
//
//                 // Positioned(
//                 //   // tilevyW (0:308)
//                 //   left: 20.0,
//                 //   top: 271.0,
//
//                 //   ClipRect(
//                 //     child:
//                 //     BackdropFilter(
//                 //       filter: ImageFilter.blur(
//                 //         sigmaX: 25.0,
//                 //         sigmaY: 25.0,
//                 //       ),
//                 //       child:
//                 //       Container(
//                 //         padding: EdgeInsets.fromLTRB(21.0, 26.0, 37.0, 27.0),
//                 //         width: 350.0,
//                 //         height: 205.0,
//                 //         decoration: BoxDecoration(
//                 //           border: Border.all(color: Color(0xff7b7b7b)),
//                 //           borderRadius: BorderRadius.circular(20.0),
//                 //           gradient: RadialGradient(
//                 //             center: Alignment(0.804, 1.311),
//                 //             radius: 1.62,
//                 //             colors: <Color>[
//                 //               Color(0x38ffd000),
//                 //               Color(0x38353535)
//                 //             ],
//                 //             stops: <double>[0, 1],
//                 //           ),
//                 //         ),
//                 //         child:
//                 //         Container(
//                 //           // frame480960308Zn (I0:308;487:9269)
//                 //           width: double.infinity,
//                 //           height: double.infinity,
//                 //           child:
//                 //           Column(
//                 //             crossAxisAlignment: CrossAxisAlignment.center,
//                 //             children: [
//                 //               Container(
//                 //                 // group48096063sGU (I0:308;490:9461)
//                 //                 margin: EdgeInsets.fromLTRB(
//                 //                     0.0, 0.0, 0.0, 19.0),
//                 //                 width: double.infinity,
//                 //                 child:
//                 //                 Column(
//                 //                   crossAxisAlignment: CrossAxisAlignment
//                 //                       .start,
//                 //                   children: [
//                 //                     Container(
//                 //                       // verylongeventname1CJk (I0:308;487:9270)
//                 //                       margin: EdgeInsets.fromLTRB(
//                 //                           0.0, 0.0, 0.0, 12.0),
//                 //                       child:
//                 //                       Text(
//                 //                         'Name',
//                 //                         style: TextStyle(
//                 //
//                 //                           fontSize: 20.0,
//                 //                           fontWeight: FontWeight.w700,
//                 //                           height: 1.5,
//                 //                           color: Color(0xffffffff),
//                 //                         ),
//                 //                       ),
//                 //                     ),
//                 //                     Container(
//                 //                       // departmentofvisualmedia6f2 (I0:308;487:9272)
//                 //                       margin: EdgeInsets.fromLTRB(
//                 //                           0.0, 0.0, 0.0, 13.0),
//                 //                       child:
//                 //                       Text(
//                 //                         'email',
//                 //                         style: TextStyle(
//                 //
//                 //                           fontSize: 14.0,
//                 //                           height: 1.5,
//                 //                           color: Color(0xfff8d848),
//                 //                         ),
//                 //                       ),
//                 //                     ),
//                 //                     Container(
//                 //                       // loremipsumdolorsitametconsecte (I0:308;487:9271)
//                 //                       constraints: BoxConstraints(
//                 //                         maxWidth: 330.0,
//                 //                       ),
//                 //                       child:
//                 //                       Text(
//                 //                         'street - suite\ncity - zipcode',
//                 //                         style: TextStyle(
//                 //
//                 //                           fontSize: 16.0,
//                 //                           fontWeight: FontWeight.w300,
//                 //                           height: 1.0625,
//                 //                           color: Color(0xffffffff),
//                 //                         ),
//                 //                       ),
//                 //                     ),
//                 //                   ],
//                 //                 ),
//                 //               ),
//                 //               Container(
//                 //                 // group48096062Zh2 (I0:308;490:9380)
//                 //                 width: double.infinity,
//                 //                 height: 18.0,
//                 //                 child:
//                 //                 Row(
//                 //                   crossAxisAlignment: CrossAxisAlignment
//                 //                       .center,
//                 //                   children: [
//                 //                     Container(
//                 //                       // group48096025hYL (I0:308;487:9273)
//                 //                       margin: EdgeInsets.fromLTRB(
//                 //                           0.0, 0.0, 113.8, 0.0),
//                 //                       height: double.infinity,
//                 //                       child:
//                 //                       Row(
//                 //                         crossAxisAlignment: CrossAxisAlignment
//                 //                             .center,
//                 //                         children: [
//                 //                           Container(
//                 //                             // vectorpN4 (I0:308;487:9275)
//                 //                             margin: EdgeInsets.fromLTRB(
//                 //                                 0.0, 1.0, 8.22, 0.0),
//                 //                             width: 12.0,
//                 //                             height: 15.0,
//                 //                             child:
//                 //                             Image.network(
//                 //                               'https://static.vecteezy.com/system/resources/previews/000/552/683/original/geo-location-pin-vector-icon.jpg',
//                 //                               width: 12.0,
//                 //                               height: 15.0,
//                 //                             ),
//                 //                           ),
//                 //                           Text(
//                 //                             // gymgiCY (I0:308;487:9274)
//                 //                             'Long.',
//                 //                             style: TextStyle(
//                 //
//                 //                               fontSize: 12.0,
//                 //                               height: 1.5,
//                 //                               color: Color(0xffffffff),
//                 //                             ),
//                 //                           ),
//                 //                         ],
//                 //                       ),
//                 //                     ),
//                 //                     Container(
//                 //                       // group48096026FiG (I0:308;487:9276)
//                 //                       height: double.infinity,
//                 //                       child:
//                 //                       Row(
//                 //                         crossAxisAlignment: CrossAxisAlignment
//                 //                             .center,
//                 //                         children: [
//                 //                           Container(
//                 //                             // vector1Be (I0:308;487:9278)
//                 //                             margin: EdgeInsets.fromLTRB(
//                 //                                 0.0, 2.0, 8.22, 0.0),
//                 //                             width: 14.0,
//                 //                             height: 14.0,
//                 //                             child:
//                 //                             Image.network(
//                 //                               'https://www.shutterstock.com/image-vector/clock-icon-watch-time-vector-260nw-1677751930.jpg',
//                 //                               width: 14.0,
//                 //                               height: 14.0,
//                 //                             ),
//                 //                           ),
//                 //                           Text(
//                 //                             // alldayeventW8Q (I0:308;487:9277)
//                 //                             'Lat.',
//                 //                             style: TextStyle(
//                 //
//                 //                               fontSize: 12.0,
//                 //                               height: 1.5,
//                 //                               color: Color(0xffffffff),
//                 //                             ),
//                 //                           ),
//                 //                         ],
//                 //                       ),
//                 //                     ),
//                 //                   ],
//                 //                 ),
//                 //               ),
//                 //             ],
//                 //           ),
//                 //         ),
//                 //       ),
//                 //     ),
//                 //   ),
//                 // ),
//
//
//                 Positioned(
//                   // applestatusbargEU (0:309)
//                   left: 0.0,
//                   top: 0.0,
//                   child:
//                   Container(
//                     width: 1952.63,
//                     height: 48.0,
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                         begin: Alignment(-1, -0.053),
//                         end: Alignment(1, -0.053),
//                         colors: <Color>[Color(0xff050505), Color(0xff00020c)],
//                         stops: <double>[0, 1],
//                       ),
//                     ),
//                     child:
//                     Stack(
//                       children: [
//                         Positioned(
//                           // time9Nx (0:311)
//                           left: 8.3296661377,
//                           top: 8.5,
//                           child:
//                           Align(
//                             child:
//                             SizedBox(
//                               width: 32.0,
//                               height: 21.0,
//                               child:
//                               Text(
//                                 '9:41',
//                                 style: TextStyle(
//
//                                   fontSize: 15.0,
//                                   fontWeight: FontWeight.w400,
//                                   height: 1.4,
//                                   letterSpacing: -0.3199999928,
//                                   color: Color(0xffffffff),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           // iphoneiconsEQQ (0:312)
//                           left: 0.0,
//                           top: 0.0,
//                           child:
//                           Container(
//                             padding: EdgeInsets.fromLTRB(
//                                 1870.31, 10.0, 0.0, 2.03),
//                             width: 1942.31,
//                             height: 37.0,
//                             child:
//                             Container(
//                               // autogroupzkfjiqN (b3uKPuHYfHnHvAwXLZkfJ)
//                               padding: EdgeInsets.fromLTRB(
//                                   0.0, 13.0, 0.0, 0.0),
//                               width: 72.33,
//                               height: double.infinity,
//                               child:
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.end,
//                                 children: [
//                                   Container(
//                                     // iosiconsmallmobilesignalcQx (0:315)
//                                     margin: EdgeInsets.fromLTRB(
//                                         0.0, 0.0, 8.35, 0.3),
//                                     width: 17.0,
//                                     height: 10.67,
//                                     child:
//                                     Image.network(
//                                       'https://static.vecteezy.com/system/resources/previews/000/552/683/original/geo-location-pin-vector-icon.jpg',
//                                       width: 17.0,
//                                       height: 10.67,
//                                     ),
//                                   ),
//                                   Container(
//                                     // iosiconsmallwifivAk (0:317)
//                                     margin: EdgeInsets.fromLTRB(
//                                         0.0, 0.0, 7.38, 0.0),
//                                     width: 15.27,
//                                     height: 10.97,
//                                     child:
//                                     Image.network(
//                                       'https://static.vecteezy.com/system/resources/previews/000/552/683/original/geo-location-pin-vector-icon.jpg',
//                                       width: 15.27,
//                                       height: 10.97,
//                                     ),
//                                   ),
//                                   Container(
//                                     // iosiconsmallbatteryEBS (0:319)
//                                     margin: EdgeInsets.fromLTRB(
//                                         0.0, 0.0, 0.0, 0.63),
//                                     width: 24.33,
//                                     height: 11.33,
//                                     child:
//                                     Image.network(
//                                       'https://static.vecteezy.com/system/resources/previews/000/552/683/original/geo-location-pin-vector-icon.jpg',
//                                       width: 24.33,
//                                       height: 11.33,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   // group48096139uoN (0:320)
//                   left: 36.0,
//                   top: 158.0,
//                   child:
//                   ClipRect(
//                     child:
//                     BackdropFilter(
//                       filter: ImageFilter.blur(
//                         sigmaX: 10.0,
//                         sigmaY: 10.0,
//                       ),
//                       child:
//                       Container(
//                         padding: EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
//                         width: 320.0,
//                         height: 40.0,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: Color(0x72f8d848)),
//                           borderRadius: BorderRadius.circular(10.0),
//                           gradient: LinearGradient(
//                             begin: Alignment(-1, -2.3),
//                             end: Alignment(0.961, 2.3),
//                             colors: <Color>[
//                               Color(0x26a36c00),
//                               Color(0x26d19907)
//                             ],
//                             stops: <double>[0, 1],
//                           ),
//                         ),
//                         child:
//                         Container(
//                           // group48096080viU (0:322)
//                           width: double.infinity,
//                           height: double.infinity,
//                           child:
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Container(
//                                 // vectorgSk (0:324)
//                                 margin: EdgeInsets.fromLTRB(
//                                     0.0, 0.96, 20.56, 0.0),
//                                 width: 12.44,
//                                 height: 12.96,
//                                 child:
//                                 Image.network(
//                                   'https://cdn-icons-png.flaticon.com/512/61/61088.png',
//                                   width: 12.44,
//                                   height: 12.96,
//                                 ),
//                               ),
//                               Container(
//                                 // searchfornamex9N (0:323)
//                                 margin: EdgeInsets.fromLTRB(
//                                     0.0, 0.0, 144.0, 0.0),
//                                 child:
//                                 Text(
//                                   'Search for name...',
//                                   style: TextStyle(
//
//                                     fontSize: 16.0,
//                                     fontWeight: FontWeight.w400,
//                                     height: 1.5,
//                                     color: Color(0xffc0c0c0),
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 // vectorT68 (0:325)
//                                 margin: EdgeInsets.fromLTRB(
//                                     0.0, 0.0, 0.0, 0.0),
//                                 width: 13.0,
//                                 height: 12.99,
//                                 child:
//                                 Image.network(
//                                   'https://w7.pngwing.com/pngs/374/900/png-transparent-computer-icons-christian-cross-icon-design-christian-cross-thumbnail.png',
//                                   width: 10.0,
//                                   height: 9.99,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             // line4Zur (0:306)
//             margin: EdgeInsets.fromLTRB(154.0, 0.0, 154.0, 0.0),
//             width: double.infinity,
//             height: 1.0,
//             decoration: BoxDecoration(
//               color: Color(0x26ffffff),
//             ),
//           ),
//         ],
//       ),
//     );
//
// }

// class others extends StatelessWidget {
//   const others({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }





class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // late Future<List> data1;
  // Future<List> getData() async{
  //   var response= await Dio().get('https://jsonplaceholder.typicode.com/users');
  //   return response.data;
  // }

  // @override
  // void initState() {
  //   data1=getData();
  //
  //   super.initState();
  // }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // print(data1);
    // other();
    return MaterialApp(
      home: HomePage(),
    );
      // home: FutureBuilder<List>(
      //   future: data1, // a previously-obtained Future<String> or null
      //   builder: (context, AsyncSnapshot<List> snapshot) {
      //     if (snapshot.hasData) {
      //       print(snapshot.data);
      //       return
      //         Column(
      //           children: [
      //             Container(
      //               child: ListView.builder(
      //               itemBuilder: (BuildContext context, int index) {
      //                 return Positioned(
      //                   top: 271.0,
      //                     left: 20.0,
      //                     child: card());
      //
      //               }
      //               ),
  //
  //
  //
  //           ),
  //               ],
  //             );
  //
  //         }
  //         return Scaffold();
  //       }
  //       ),
  //
  //
  //
  //   );
  // }
}






  }




