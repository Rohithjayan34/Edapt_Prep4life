import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {


  bool lights = false;
  bool dwnldSwitch = false;

  bool notSwitch= false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lights == true ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        //backgroundColor: Color(0xffE6F3F7),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[
              Row(

                children: <Widget>[
              FlatButton(
                child: Icon(
                  Icons.arrow_back,
                ), onPressed: () {
                  Navigator.pop(context);
              },
              ),
                  Padding(
                    padding: const EdgeInsets.only(left:80.0),
                    child: Text('Settings',
                      style:TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
            ],
          ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0xffC9EEF9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('General',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Text('Dark Mode',
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:20.0),
                    child:Switch(
    value: lights,
    onChanged: (bool value) {
    setState(() {
      print(lights);
      lights = value;
    }
                  );
    }

                  ),
                  ), ],
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xffC9EEF9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Notifications',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Text('Enable Notifications',
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:20.0),
                    child: Switch(
                      value: notSwitch,
                      onChanged: (value) {
                        setState(() {
                          notSwitch = value;
                        });
                      },
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.green,
                    ),
                  ),
                ],
              ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 40,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Color(0xffC9EEF9),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Video Settings',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),

      Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:20.0),
                child: Text('Streaming Quality',
                  style: TextStyle(
                    fontSize: 17.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:20.0),
                child: Text('Very High'),
              ),
            ],
        ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Text('Download using Cellular',
              style: TextStyle(
                fontSize: 17.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right:20.0),
            child: Switch(
              value: dwnldSwitch,
              onChanged: (value) {
                setState(() {
                  dwnldSwitch = value;
                });
              },
              activeTrackColor: Colors.lightGreenAccent,
              activeColor: Colors.green,
            ),
          ),
      ],
      ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0xffC9EEF9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Other',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:25.0),
                child: Text('Help',
                  style: TextStyle(
                    fontSize: 16.0,
                    //color: Colors.black,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:25.0,top: 10),
                child: Text('About',
                  style: TextStyle(
                    fontSize: 16.0,
                    //color: Colors.black,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:25.0,top:10.0),
                child: Text('Log out',
                  style: TextStyle(
                    fontSize: 16.0,
                    //color: Colors.black,
                  ),
                ),
              ),



              Padding(
                padding: const EdgeInsets.only(top:150.0),
                child: Center(child: Text('version 1.0.1')),
              ),
      ],
      ),
      ),
      ),
    );
  }
}
