import 'package:Prep4life/Certificates/certificatesPage.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
class Analytics extends StatefulWidget {
  @override
  _AnalyticsState createState() => _AnalyticsState();
}
class _AnalyticsState extends State<Analytics> {
  @override
  Widget build(BuildContext context) {
    LiquidCircularProgressIndicator(
      value: 0.25, // Defaults to 0.5.
      valueColor: AlwaysStoppedAnimation(Colors.pink), // Defaults to the current Theme's accentColor.
      backgroundColor: Colors.white, // Defaults to the current Theme's backgroundColor.
      borderColor: Colors.red,
      borderWidth: 5.0,
      direction: Axis.horizontal, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
      center: Text("Loading..."),
    );
    return MaterialApp(

      home: Scaffold(
          backgroundColor: Color(0xffE1F5FA),
        body:SingleChildScrollView(
          child: SafeArea(
            child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     Padding(
                       padding: const EdgeInsets.only(left:28.0),
                       child: Icon(
                         Icons.share,
                       ),
                     ),

                     Text('Analytics',
                       style: TextStyle(
                         fontSize: 25.0,
                       ),
                     ),

                     Padding(
                       padding: const EdgeInsets.only(right:28.0),
                       child: Icon(
                         Icons.info_outline,
                       ),
                     ),
                   ],
                 ),
               ),


                Padding(
                  padding: const EdgeInsets.only(top:40.0),
                  child: Center(
                    child: Text('Your Personal Growth Level',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.only(top:40.0,left: 30.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        child: LiquidCircularProgressIndicator(
                          value: 0.0, // Defaults to 0.5.
                          valueColor: AlwaysStoppedAnimation(Colors.blue), // Defaults to the current Theme's accentColor.
                          backgroundColor: Colors.grey, // Defaults to the current Theme's backgroundColor.
                          borderColor: Colors.grey,
                          borderWidth: 5.0,
                          direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                          //center: Text("Loading..."),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left:20.0),
                        child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Master',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('abcdefghijklmnopqrst\n'
                                'sgvgd')
                          ],
                        ),
                      ),

                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left:60.0),
                  child: Container(
                      height: 40,
                      child: VerticalDivider(
                          color: Colors.black,
                        thickness: 3,
                      ),
                  ),
                ),

                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Container(
                        height: 80,
                        width: 80,
                        child: LiquidCircularProgressIndicator(
                          value: 0, // Defaults to 0.5.
                          valueColor: AlwaysStoppedAnimation(Colors.blue), // Defaults to the current Theme's accentColor.
                          backgroundColor: Colors.grey, // Defaults to the current Theme's backgroundColor.
                          borderColor: Colors.grey,
                          borderWidth: 5.0,
                          direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                          //center: Text("Loading..."),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Advanced',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('abcdefghijklmnopqrst\n'
                              'sgvgd')
                        ],
                      ),
                    ),


                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(left:60.0),
                  child: Container(
                      height: 40,
                      child: VerticalDivider(
                          color: Colors.black,
                        thickness: 3,
                      ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:30.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        child: LiquidCircularProgressIndicator(
                          value: 0, // Defaults to 0.5.
                          valueColor: AlwaysStoppedAnimation(Colors.blue), // Defaults to the current Theme's accentColor.
                          backgroundColor: Colors.grey, // Defaults to the current Theme's backgroundColor.
                          borderColor: Colors.grey,
                          borderWidth: 5.0,
                          direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                          //center: Text("Loading..."),
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(left:20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Intermediate',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('abcdefghijklmnopqrst\n'
                                'sgvgd')
                          ],
                        ),
                      ),

                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left:60.0),
                  child: Container(
                      height: 40,
                      child: VerticalDivider(
                          color: Colors.blue,
                        thickness: 3,
                      ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:30.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        child: LiquidCircularProgressIndicator(
                          value: 0.5, // Defaults to 0.5.
                          valueColor: AlwaysStoppedAnimation(Colors.blue), // Defaults to the current Theme's accentColor.
                          backgroundColor: Colors.white, // Defaults to the current Theme's backgroundColor.
                          borderColor: Colors.grey,
                          borderWidth: 0.5,
                          direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                         // center: Text("Loading..."),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left:20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Beginner',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('abcdefghijklmnopqrst\n'
                                'sgvgd')
                          ],
                        ),
                      ),

                    ],
                  ),
                ),

                Center(child: Padding(
                  padding: const EdgeInsets.only(top:50.0,bottom: 50),
                  child: Text('Learn full Course to Get Mastered'),
                ),),

                Center(
                  child: Container(
                    width: 380,
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                ),

                Center(child: Padding(
                  padding: const EdgeInsets.only(top:30.0),
                  child: Text(
                      'Actiity OverView',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),),


            Center(
              child: Padding(
                padding: const EdgeInsets.only(top:40.0),
                child: CircularPercentIndicator(
                  radius: 150.0,
                  lineWidth: 13.0,
                  animation: true,
                  percent: 0.7,
                  reverse: true,
                  progressColor: Colors.blue,
                  center: new Text(
                    "1/10",
                    style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
              ),
            ),

                Center(child: Text('Courses Enrolled',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top:40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text('4',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Test Taken',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),

                      Column(
                        children: <Widget>[
                          Text('10',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Average Test Score',
                            style: TextStyle(
                              fontSize: 15.0,

                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),



                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top:40.0,),
                    child: Container(
                      height: 100,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                        ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[

                          Container(
                            height: 80,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white60,
                            ),
                            child: FlatButton(onPressed: () {
                              Navigator.push(context,
                                new MaterialPageRoute(builder: (
                                    context) =>  new CertificatesPage()),
                              );

                            },

                            ),
                          ),

                          Text('Certicates Earned',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Divider(
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
      ),
        ),
      ),
    );
  }

}