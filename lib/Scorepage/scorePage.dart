import 'package:Prep4life/Answers/answerPage1.dart';
import 'package:flutter/material.dart';

class ScorePage extends StatefulWidget {
  @override
  _ScorePageState createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        backgroundColor: Colors.white,
          body: SafeArea(

            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
             RaisedButton(
              child: Icon(
              Icons.arrow_back,
               size: 30.0,
    ),
              onPressed: () {
              Navigator.pop(context);
             },
            ),

               Padding(
                 padding: const EdgeInsets.only(bottom:40.0),
                 child: Container(
                   height: 400,
                     child: Image.asset('images/fail.jpg')),
               ),

               Center(
                 child: Text('Oops!',
                   style: TextStyle(
                     fontSize: 25,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ),
               Center(child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text('You Lost'),
               )),

               Padding(
                 padding: const EdgeInsets.only(top:40.0),
                 child: Center(
                   child: Container(
                     height: 100,
                     width: 350,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: Color(0xffE0ECF8),
                     ),

                     child: Center(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: <Widget>[
                           Text('Points Earned'),
                           Container(
                             width: 70,
                             child: Divider(
                               color: Colors.black,
                             ),
                           ),

                           Text('10/25',
                             style: TextStyle(
                               fontSize: 20,
                             ),
                           ),

                         ],
                       ),
                     ),
                   ),
                 ),
               ),

               Center(
                 child: Padding(
                   padding: const EdgeInsets.only(top:60.0),
                   child: Container(
                     height: 50,
                     width: 200,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: Color(0xff035AB6),
                     ),
                     child: FlatButton(
                       child: Text('Show Answers',
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 18,
                         ),
                       ), onPressed: () {
                       Navigator.push(context,
                         new MaterialPageRoute(builder: (
                             context) => new AnswerFirstPage()),
                       );
                     },

                     ),
                   ),
                 ),
               ),



    ],
    ),
    ),),
    );
  }
}
