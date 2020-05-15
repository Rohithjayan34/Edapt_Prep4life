import 'package:Prep4life/Answers/answerPage1.dart';

import 'package:Prep4life/Certificates/certificatesPage.dart';



import 'package:flutter/material.dart';
import 'package:intervalprogressbar/intervalprogressbar.dart';



class AnswerPage2 extends StatefulWidget {
  @override
  _AnswerPage2State createState() => _AnswerPage2State();
}

class _AnswerPage2State extends State<AnswerPage2> {





  Widget buildHorizontal() => IntervalProgressBar(
      direction: IntervalProgressDirection.horizontal,
      max: 10,
      progress: 2,
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
                child: Text('Question 2 of \u2082\u2080',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),

              Center(child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('Who is the President of India?',
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
                      child: Text('Amir Khan',
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

                      color: Color(0xffE2F4F8),

                    ),
                    child: Row(

                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left:50.0),
                          child: Icon(Icons.check_box,
                            color: Color(0xff14A444),
                          ),

                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:50.0),
                          child: FlatButton(
                            child: Text('Amir Khan',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            highlightColor: Colors.blue,
                            onPressed: () {},

                          ),
                        ),
                      ],
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                      FlatButton(child: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff82B4E9),
                      ),
                      child: FlatButton(
                        child: Text('1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ), onPressed: () {
                        Navigator.push(context,
                          new MaterialPageRoute(builder: (
                              context) => new AnswerFirstPage()),
                        );
                      },
                      ),
                    ),

                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff035AB6),
                      ),
                      child: FlatButton(
                        child: Text('2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ), onPressed: () {
                        Navigator.push(context,
                          new MaterialPageRoute(builder: (
                              context) => new AnswerPage2()),
                        );
                      },
                      ),
                    ),

                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff82B4E9),
                      ),
                      child: FlatButton(
                        child: Text('3',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ), onPressed: () {}
                      ),
                    ),

                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff82B4E9),
                      ),
                      child: FlatButton(
                        child: Text('4',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),

                      ),
                    ),

                    FlatButton(
                      child: Icon(
                        Icons.arrow_forward,
                      ), onPressed: () {
                      Navigator.push(context,
                        new MaterialPageRoute(builder: (
                            context) =>  new CertificatesPage()),
                      );
                    },
                    )

                  ],
                ),
              ),
     ], ),



                ),
              ),


          );
  }
}
