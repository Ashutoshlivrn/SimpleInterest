import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class HOMEPAGE extends StatefulWidget {
  HOMEPAGE({Key? key}) : super(key: key);

  @override
  State<HOMEPAGE> createState() => _HOMEPAGEState();
}
  
class _HOMEPAGEState extends State<HOMEPAGE> {
  double principleamount = 1;
  double roi = 3.5;
  double time= 2;
  double SI = 0;

  // late double pa1 ;
  // late double  ;
  // late double pa1 ;
  // late double pa1 ;

  //@override
  // void initState() {
  //
  //   setState(() {
  //     SI = roi*time*principleamount/100;
  //   });
  //   // TODO: implement initState
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [

       Container(
         width: 800,
         height: 200,
         child: Slider(
           value: principleamount,
           min: 1,
           max: 25,
           divisions: 25,
           onChanged:(pvalue) {
             setState(() {
               principleamount = pvalue;
               print(pvalue);
               SI = roi*time*principleamount/100;
             });
         },
         ),
       ),
       SizedBox(height: 30,),
            Container(
              width: 800,
              height: 200,
              child: Slider(
                value: roi,
                min: 3.5,
                max: 9,
                divisions: 11,
                onChanged:(roivalue) {
                  setState(() {
                    roi = roivalue;
                    print(roivalue);
                    SI = roi*time*principleamount/100;
                  });
                },
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: 800,
              height: 200,
              child: Slider(
                value: time,
                min: 2,
                max: 6,
                divisions: 2,
                onChanged:(timevalue) {
                  setState(() {
                    time = timevalue;
                   SI = roi*time*principleamount/100;
                    print(timevalue);
                  });
                },
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text( ' Simple Interest'),
              SizedBox(width: 40,),
              Text( SI.toString() ),
            ],)


          ],
        )
      )
    );
  }
}
