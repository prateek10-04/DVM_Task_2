import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_cli/flutterfire_cli.dart';
import 'package:fluttertoast/fluttertoast.dart';


class card extends StatelessWidget {
  Color pressed=Colors.white;

  final String name;
   final String email;
   final String street;
   final String suite;
   final String city;
   final String zipcode;
   final String lng;
   final String lat;
  card({Key? key, required this.name, required this.email, required this.street, required this.suite, required this.city, required this.zipcode, required this.lng, required this.lat}) : super(key: key);

  // Future adduser(String name,
  //  String email,
  //  String street,
  //  String suite,
  //  String city,
  //  String zipcode,
  //  String lng,
  //  String lat) async{
  //   await FirebaseFirestore.instance.collection('details').add({
  //     'name':name,
  //     'email':email,
  //     'street':street,
  //     'suite':suite,
  //     'city':city,
  //     'zipcode':zipcode,
  //     'lng':lng,
  //     'lat':lat
  //   });
  // }

void changeButtonColor(bool isPressed) {


pressed = isPressed ? Colors.amber : Colors.white;

}

   void addDataToFirestore() async {
     QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore.instance
         .collection('sample')
         .where('name', isEqualTo: name)
         .where('email', isEqualTo: email)
         .get();

     if (snapshot.docs.isNotEmpty) {
       changeButtonColor(true);

       String docId = snapshot.docs.first.id;
       await FirebaseFirestore.instance.collection('sample').doc(docId).delete();
      await Fluttertoast.showToast(
         msg: 'Data removed from database',
         toastLength: Toast.LENGTH_SHORT,
         gravity: ToastGravity.BOTTOM,
         textColor: Colors.white,
       );



     }
     else {
       changeButtonColor(false);

       // Data doesn't exist, add it to Firestore
       await FirebaseFirestore.instance.collection('sample').add({
         'name': name,
         'email': email,
         'street': street,
         'suite': suite,
         'city': city,
         'zipcode': zipcode,
         'lng': lng,
         'lat': lat,
       });

      await Fluttertoast.showToast(
         msg: 'Data added to database',
         toastLength: Toast.LENGTH_SHORT,
         gravity: ToastGravity.BOTTOM,
         textColor: Colors.white,
       );

     }
   }

  @override
  Widget build(BuildContext context) {



   // var collection= FirebaseFirestore.instance.collection('detail');
   // Firebase.initializeApp();

    return Card(
      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
      elevation: 200.0,
      child: ClipRect(

        child: Container(
          padding: EdgeInsets.fromLTRB(21.0, 26.0, 37.0, 20.0),
          width: 350.0,
          height: 220.0,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xff7b7b7b)),
            borderRadius: BorderRadius.circular(20.0),

            gradient: RadialGradient(
              center: Alignment(0.804, 1.311),
              radius: 1.62,
              colors: <Color>[
                Color(0x38ffd000),
                Color(0xF4151515)
              ],
              stops: <double>[0, 1],
            ),
          ),
          child:
          Container(
            // frame480960308Zn (I0:308;487:9269)
            width: double.infinity,
            height: double.infinity,
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // group48096063sGU (I0:308;490:9461)
                  margin: EdgeInsets.fromLTRB(
                      0.0, 0.0, 0.0, 19.0),
                  width: double.infinity,
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start,
                    children: [
                      Container(
                        // verylongeventname1CJk (I0:308;487:9270)
                        margin: EdgeInsets.fromLTRB(
                            0.0, 0.0, 0.0, 12.0),
                       // child:
                        // GestureDetector(
                        //   onTap: (){
                        //     setState()
                        //
                        //   },

                          child: TextButton(



                            onPressed: () async {

                              addDataToFirestore();


                              // await FirebaseFirestore.instance.collection('sample').add({
                              //   'name':name,
                              //   'email':email,
                              //   'street':street,
                              //   'suite':suite,
                              //   'city':city,
                              //   'zipcode':zipcode,
                              //   'lng':lng,
                              //   'lat':lat
                              // });



                            },
                            style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.resolveWith<Color>(
                                      (states) => pressed,
                                ),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent)
                            ),

                            child: Text(name),


                            // style: TextStyle(
                            //
                            //   fontSize: 20.0,
                            //   fontWeight: FontWeight.w700,
                            //   height: 1.5,
                            //   color: (click==true) ? Colors.amber : Colors.white,
                            // ),
                          ),

                        //),
                      ),
                      Container(
                        // departmentofvisualmedia6f2 (I0:308;487:9272)
                        margin: EdgeInsets.fromLTRB(
                            0.0, 0.0, 0.0, 13.0),
                        child:
                        Text(
                          '$email',
                          style: TextStyle(

                            fontSize: 14.0,
                            height: 1.5,
                            color: Color(0xfff8d848),
                          ),
                        ),
                      ),
                      Container(
                        // loremipsumdolorsitametconsecte (I0:308;487:9271)
                        constraints: BoxConstraints(
                          maxWidth: 330.0,
                        ),
                        child:
                        Text(
                          '$street - $suite\n$city - $zipcode',
                          style: TextStyle(

                            fontSize: 16.0,
                            fontWeight: FontWeight.w300,
                            height: 1.0625,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // group48096062Zh2 (I0:308;490:9380)
                  width: double.infinity,
                  height: 18.0,
                  child:
                  Row(
                    crossAxisAlignment: CrossAxisAlignment
                        .center,
                    children: [
                      Container(
                        // group48096025hYL (I0:308;487:9273)
                        margin: EdgeInsets.fromLTRB(
                            0.0, 0.0, 113.8, 0.0),
                        height: double.infinity,
                        child:
                        Row(
                          crossAxisAlignment: CrossAxisAlignment
                              .center,
                          children: [
                            Container(
                              // vectorpN4 (I0:308;487:9275)
                              margin: EdgeInsets.fromLTRB(
                                  0.0, 1.0, 8.22, 0.0),
                              width: 12.0,
                              height: 15.0,
                              child:
                              Icon(
                                Icons.location_on,
                                color: Colors.white,
                                size: 20.0,
                              ),
                            ),
                            Text(
                              // gymgiCY (I0:308;487:9274)
                              '$lng',
                              style: TextStyle(

                                fontSize: 15.0,
                                height: 1.5,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // group48096026FiG (I0:308;487:9276)
                        height: double.infinity,
                        child:
                        Row(
                          crossAxisAlignment: CrossAxisAlignment
                              .center,
                          children: [
                            Container(
                              // vector1Be (I0:308;487:9278)
                              margin: EdgeInsets.fromLTRB(
                                  0.0, 2.0, 8.22, 0.0),
                              width: 14.0,
                              height: 14.0,
                              child:
                              Icon(
                                Icons.alarm_rounded,
                                color: Colors.white,
                                size: 20.0,
                              ),
                            ),
                            SizedBox(

                              width: 3.0,),
                            Text(
                              // alldayeventW8Q (I0:308;487:9277)
                              '$lat',
                              style: TextStyle(

                                fontSize: 15.0,
                                height: 1.5,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
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
    );

  }



// bool setState(bool click) {
//     click=!click;
//     return click;
// }



// class User{
//   String name;
//   String email;
//   String street;
//   String suite;
//   String city;
//   String zipcode;
//   String lng;
//   String lat;
//
//   User({
//     required this.name,
//     required this.email,
//     required this.street,
//     required this.suite,
//     required this.city,
//     required this.zipcode,
//     required this.lng,
//     required this.lat,
//
//   });

  // Map <String,dynamic> toJson()=>{
  //   'name':name,
  //   'email':email,
  //   'street':street,
  //   'suite':suite,
  //   'city':city,
  //   'zipcode':zipcode,
  //   'lng':lng,
  //   'lat':lat,
  //
  // };
}
