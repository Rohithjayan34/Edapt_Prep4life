
import 'package:flutter/material.dart';

class PointsPage extends StatefulWidget {
  @override
  _PointsPageState createState() => _PointsPageState();
}

class _PointsPageState extends State<PointsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
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
                    padding: const EdgeInsets.only(left:50.0),
                    child: Text('Points to Remember',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('Everyday Minimalism :Find Calm & Creativity in Living Simply',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration:  new BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              spreadRadius: 1.0,
                            )
                          ],
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Center(child: Text('1')),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left:8.0,top: 15),
                      child: Text('abcdefghjhiklmnopqrstuvklmnopqrstuv\n'
                          'abcdefghjhiklmnopqrstuvklmnopqrstuv\n'),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:15.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration:  new BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              spreadRadius: 1.0,
                            )
                          ],
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Center(child: Text('2')),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left:8.0,top: 15),
                      child: Text('abcdefghjhiklmnopqrstuvklmnopqrstuv\n'
                          'abcdefghjhiklmnopqrstuvklmnopqrstuv\n'
                          'abcdefghjhiklmnopqrstuvklmnopqrstuv'),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration:  new BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              spreadRadius: 1.0,
                            )
                          ],
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Center(child: Text('3')),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left:8.0,top: 15),
                      child: Text('abcdefghjhiklmnopqrstuvklmnopqrstuv\n'
                          'abcdefghjhiklmnopqrstuvklmnopqrstuv\n'
                          'abcdefghjhiklmnopqrstuvklmnopqrstuv'),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration:  new BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              spreadRadius: 1.0,
                            )
                          ],
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Center(child: Text('4')),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left:8.0,top: 15),
                      child: Text('abcdefghjhiklmnopqrstuvklmnopqrstuv\n'
                          'abcdefghjhiklmnopqrstuvklmnopqrstuv\n'
                          'abcdefghjhiklmnopqrstuvklmnopqrstuv'),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration:  new BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              spreadRadius: 1.0,
                            )
                          ],
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Center(child: Text('5')),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left:8.0,top: 15),
                      child: Text('abcdefghjhiklmnopqrstuvklmnopqrstuv\n'
                          'abcdefghjhiklmnopqrstuvklmnopqrstuv\n'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
