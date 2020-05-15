
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';


class Item {
  const Item(this.name);
  final String name;

}


class Home extends StatefulWidget {



  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  Item selectedUser;
  List<Item> users = <Item>[
    const Item('Android'),
    const Item('Flutter'),
    const Item('ReactNative'),
    const Item('iOS'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffDAF2F9),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Center(
                  child: Container(
                    height: 80.0,
                    width: 380.0,
                    child: SearchBar(
                      searchBarStyle: SearchBarStyle(
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.all(4),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      hintText:'Search',
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text('Welcome back , Name ',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text('Recommended For You  ',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 350,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.green,

                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(

                            height: 350,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: Colors.green,
                            ),
                          ),
                        ),

                        Container(

                          height: 350,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.green,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 10),
                  child: Text('Trending ',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: <Widget>[
                      Text('All Categories ',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                  DropdownButton<Item>(
                    //hint:  Text("Select item"),
                    value: selectedUser,
                    onChanged: (Item Value) {
                      setState(() {
                        selectedUser = Value;
                      });
                    },
                    items: users.map((Item user) {
                      return  DropdownMenuItem<Item>(
                        value: user,
                        child: Text(
                          user.name,
                          style:  TextStyle(color: Colors.black),
                        ),
                      );
                    }).toList(),
                  ),
                ],),
      ),



                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 350,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.green,

                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(

                            height: 350,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: Colors.green,
                            ),
                          ),
                        ),

                        Container(

                          height: 350,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.green,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),




                Padding(
                  padding: const EdgeInsets.only(left: 15.0,top: 20.0),
                  child: Text(' Start Your Free Courses ',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 350,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.green,

                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(

                            height: 350,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: Colors.green,
                            ),
                          ),
                        ),

                        Container(

                          height: 350,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.green,
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



          ),
    );
  }
}