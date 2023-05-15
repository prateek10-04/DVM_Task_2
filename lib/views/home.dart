import 'dart:ui';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/models/detail.api.dart';
import 'package:untitled6/models/detail.dart';
import 'package:untitled6/views/widgets/cards.dart';

import '../models/detail.dart';
import '../models/detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);



  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _textEditingController = TextEditingController();

  // var now = DateTime.now();
  // var formatterTime = DateFormat('kk:mm');
  // String actualTime = formatterTime.format(now);
 // TextEditingController controller='' as TextEditingController;

  List<detail> _detail=[];

   double currentvalue=0.0;
  // int c=0;

   List<detail>? found=[];

   Future<void> getDetail() async{
     _detail=await detailApi.getDetail();
     //_address=(await detailApi.getDetail()).cast<Address>();
     setState(() {
       _isLoading=false;
     });

   }



  bool _isLoading=true;
   @override
   void initState() {
     super.initState();
     getDetail().then((_) {
       setState(() {
         found = _detail;
         _isLoading = false;
       });
     });
   }

  void search(String entered){
    List<detail> display=[];
    if(entered.isEmpty){ display=_detail;}
    else{
      display = _detail
          .where((detail user) =>
          user.name.toLowerCase().contains(entered.toLowerCase()))
          .toList();    }
    setState(() {
      found = display;
    });
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:Container(
        padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 19.0),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-1, -0.053),
            end: Alignment(1, -0.053),
            colors: <Color>[Color(0xff050505), Color(0xff00020c)],
            stops: <double>[0, 1],
          ),
        ),

        child: Column(



          children: [




            Text(
                '9:41',
                style: TextStyle(

                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                  height: 1.4,
                  letterSpacing: -0.3199999928,
                  color: Color(0xffffffff),
                ),
              ),
            SizedBox(height: 40.0,),
            Row(


              children:[
                SizedBox(width: 50.0,),

                Align(
                  child:
                  SizedBox(
                    width: 70.95,
                    height: 40.0,
                    child:
                    Text(
                      'User',
                      style: TextStyle(

                        fontSize: 28.0,
                        fontWeight: FontWeight.w600,
                        height: 1.3618164062,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),

              SizedBox(width: 50.0,),


              Align(
                child:


                  Image.network(
                    'https://w7.pngwing.com/pngs/591/168/png-transparent-yellow-and-gray-tire-print-illustration-line-curve-euclidean-computer-file-line-spiral-gradient-abstract-lines.png',
                    width: 151.87,
                    height: 61.4,
                  ),

              ),


           // SizedBox(height: 30.0,),


      ]
            ),

            SizedBox(height: 50.0),


               ClipRect(
                child:
                BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10.0,
                    sigmaY: 10.0,
                  ),
                  child:
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                    width: 320.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0x72f8d848)),
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        begin: Alignment(-1, -2.3),
                        end: Alignment(0.961, 2.3),
                        colors: <Color>[
                          Color(0x26a36c00),
                          Color(0x26d19907)
                        ],
                        stops: <double>[0, 1],
                      ),
                    ),
                    child:
                    Container(
                      // group48096080viU (0:322)
                      width: double.infinity,
                      height: double.infinity,
                      child:
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // vectorgSk (0:324)
                            margin: EdgeInsets.fromLTRB(
                                0.0, 0.96, 20.56, 0.0),
                            width: 12.44,
                            height: 12.96,
                            child:
                            Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              // searchfornamex9N (0:323)
                              margin: EdgeInsets.fromLTRB(
                                  0.0, 0.0, 144.0, 0.0),
                              child:
                                 TextField(
                                   controller: _textEditingController,
                                  // controller: controller,
                                 onChanged: (String? value) => search(value.toString()),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,

                                      hintStyle: TextStyle(

                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5,
                                      color: Color(0xffc0c0c0),
                                    ),
                                    hintText: 'Search for name',
                                  ),
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5,
                                    color: Color(0xffc0c0c0),
                                  ),
                                ),

                            ),
                          ),


                          Container(
                            // vectorT68 (0:325)
                            margin: EdgeInsets.fromLTRB(
                                0.0, 0.0, 0.0, 0.0),
                            width: 13.0,
                            height: 12.99,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _textEditingController.clear();

                                });
                              },
                              child: Icon(
                                Icons.clear,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),


                    ),


                  ),
                ),
              ),


            SizedBox(height: 30.0),

            Slider(value: currentvalue,
                min: -200.0,
                max: 200.0,
                divisions: 20,
                label: currentvalue.toString(),

                onChanged: (value){
              setState(() {
                currentvalue=value;
              });
                }),


            Expanded(
              child: Container(
                // autogroupdh5atjz (b3t9GC9RJ3NxCw4NFdH5a)
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                width: double.infinity,


                child:

                Stack(
                  children: [



                    _isLoading ? Center(child: CircularProgressIndicator()): Padding(
                      
                      padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
                      child: Expanded(
                        child: ListView.builder(
                          itemCount: (found ?? <detail>[]).length,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context,int index){

                              Address address = found![index].address;
                              Geo geo = address.geo;

                              String street = address.street;
                              String suite = address.suite;
                              String city = address.city;
                              String zipcode = address.zipcode;
                              String lat = geo.lat;
                              String lng = geo.lng;
                            //  print(found[index].name);

                              if(double.parse(lng)<=currentvalue+20.0 && double.parse(lng)>=currentvalue-20.0)
                             { return card(name: found![index].name,email: found![index].email,street:street,suite:suite,city: city,zipcode: zipcode,lng: lng,lat: lat);}
                              else return Container();
                            }),

                      ),
                    ),


                    // Positioned(
                    //   // vector77mBW (0:304)
                    //   left: 0.0,
                    //   top: 0.0,
                    //   child:
                    //   Align(
                    //     child:
                    //     SizedBox(
                    //       width: 663.27,
                    //       height: 174.88,
                    //       child:
                    //       Image.network(
                    //         'https://w7.pngwing.com/pngs/591/168/png-transparent-yellow-and-gray-tire-print-illustration-line-curve-euclidean-computer-file-line-spiral-gradient-abstract-lines.png',
                    //         width: 663.27,
                    //         height: 174.88,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // Positioned(
                    //   // vector781Lk (0:305)
                    //   left: 0.0,
                    //   top: 0.0,
                    //   child:
                    //   Align(
                    //     child:
                    //     SizedBox(
                    //       width: 569.96,
                    //       height: 144.16,
                    //       child:
                    //       Image.network(
                    //         'https://static.vecteezy.com/system/resources/previews/000/552/683/original/geo-location-pin-vector-icon.jpg',
                    //         width: 569.96,
                    //         height: 144.16,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Positioned(
                      // applestatusbargEU (0:309)
                      left: 0.0,
                      top: 0.0,
                      child:
                      Container(
                        width: 1952.63,
                        height: 48.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(-1, -0.053),
                            end: Alignment(1, -0.053),
                            colors: <Color>[Color(0xff050505), Color(0xff00020c)],
                            stops: <double>[0, 1],
                          ),
                        ),
                        child:
                        Stack(
                          children: [

                            Positioned(
                              // iphoneiconsEQQ (0:312)
                              left: 0.0,
                              top: 0.0,
                              child:
                              Container(
                                padding: EdgeInsets.fromLTRB(
                                    1870.31, 10.0, 0.0, 2.03),
                                width: 1942.31,
                                height: 37.0,
                                child:
                                Container(
                                  // autogroupzkfjiqN (b3uKPuHYfHnHvAwXLZkfJ)
                                  padding: EdgeInsets.fromLTRB(
                                      0.0, 13.0, 0.0, 0.0),
                                  width: 72.33,
                                  height: double.infinity,
                                  child:
                                  Expanded(
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          // iosiconsmallmobilesignalcQx (0:315)
                                          margin: EdgeInsets.fromLTRB(
                                              0.0, 0.0, 8.35, 0.3),
                                          width: 17.0,
                                          height: 10.67,
                                          child:
                                          Image.network(
                                            'https://static.vecteezy.com/system/resources/previews/000/552/683/original/geo-location-pin-vector-icon.jpg',
                                            width: 17.0,
                                            height: 10.67,
                                          ),
                                        ),
                                        Container(
                                          // iosiconsmallwifivAk (0:317)
                                          margin: EdgeInsets.fromLTRB(
                                              0.0, 0.0, 7.38, 0.0),
                                          width: 15.27,
                                          height: 10.97,
                                          child:
                                          Image.network(
                                            'https://static.vecteezy.com/system/resources/previews/000/552/683/original/geo-location-pin-vector-icon.jpg',
                                            width: 15.27,
                                            height: 10.97,
                                          ),
                                        ),
                                        Container(
                                          // iosiconsmallbatteryEBS (0:319)
                                          margin: EdgeInsets.fromLTRB(
                                              0.0, 0.0, 0.0, 0.63),
                                          width: 24.33,
                                          height: 11.33,
                                          child:
                                          Image.network(
                                            'https://static.vecteezy.com/system/resources/previews/000/552/683/original/geo-location-pin-vector-icon.jpg',
                                            width: 24.33,
                                            height: 11.33,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Container(
              // line4Zur (0:306)
              margin: EdgeInsets.fromLTRB(154.0, 0.0, 154.0, 0.0),
              width: double.infinity,
              height: 1.0,
              decoration: BoxDecoration(
                color: Color(0x26ffffff),
              ),
            ),
          ],
        ),

      ),

    );


  }
}
