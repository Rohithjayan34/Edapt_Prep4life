import 'package:Prep4life/GamePages/gamePage2.dart';
import 'package:flutter/material.dart';
import 'package:intervalprogressbar/intervalprogressbar.dart';



class GameFirstPage extends StatefulWidget {
  @override
  _GameFirstPageState createState() => _GameFirstPageState();
}

class _GameFirstPageState extends State<GameFirstPage> {



  Widget buildHorizontal() => IntervalProgressBar(
      direction: IntervalProgressDirection.horizontal,
      max: 10,
      progress: 1,
      intervalSize: 2,
      size: Size(400, 10),
      highlightColor: Color(0xffBB1FE9),
      defaultColor: Colors.white,
      intervalColor: Colors.white,
      intervalHighlightColor: Colors.transparent,
      reverse: false,
      radius: 0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffE0ECF8),
        body: SafeArea(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
            FlatButton(
            child: Icon(
              Icons.arrow_back,
              size: 30.0,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: buildHorizontal(),
                ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Question 1 of \u2082\u2080',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),

                Center(child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('Who is the Prime Minister of India?',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),),

                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top:80.0),
                    child: Container(
                      height: 60,
                      width: 380,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),

                        color: Colors.white,


                      ),
                      child: FlatButton(
                        child: Text('Shah Rukh Khan',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        highlightColor: Colors.blue, onPressed: () {
                          print('hi');
                      },
                      ),
                    ),
                  ),
                ),

                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top:50.0),
                    child: Container(
                      height: 60,
                      width: 380,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),

                        color: Colors.white,

                      ),
                      child: FlatButton(
                        child: Text('Shah Rukh Khan',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        highlightColor: Colors.blue,
                        onPressed: () {},

                      ),
                    ),
                  ),
                ),

                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top:50.0),
                    child: Container(
                      height: 60,
                      width: 380,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),

                        color: Colors.white,

                      ),
                      child: FlatButton(
                        child: Text('Shah Rukh Khan',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        highlightColor: Colors.blue,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),


                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top:50.0),
                    child: Container(
                      height: 60,
                      width: 380,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),

                        color: Colors.white,

                      ),
                      child: FlatButton(


                        child: Text('Shah Rukh Khan',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        highlightColor: Colors.blue,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(top:80.0),
                  child: Center(
                    child: Container(
                      height: 50,
                      width: 200,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),

                        color: Color(0xff035AB6),

                      ),

                      child: FlatButton(
                        child: Text('Next',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ), onPressed: () {

                        Navigator.push(context,
                          new MaterialPageRoute(builder: (
                              context) => new GameSecondPage()),
                        );

                      },

                      ),
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
