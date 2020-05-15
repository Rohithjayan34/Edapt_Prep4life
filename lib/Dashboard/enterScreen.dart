import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:bubbled_navigation_bar/bubbled_navigation_bar.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';
import 'homescreen.dart';
import 'analyticsPage.dart';
import 'profileScreen.dart';
export 'homescreen.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {



  PageController _controller;
  MenuPositionController _controller2;

  final List<BubbledNavigationBarItem> barItems = [
    BubbledNavigationBarItem(

        icon: Icon(LineIcons.home),
        activeIcon: Icon(LineIcons.home, color: Colors.white),
        title: Text(
          "Home",
          style: TextStyle(
            fontSize: 18.0,
              fontFamily: "Baloo", color: Colors.white),
        )),
    BubbledNavigationBarItem(
        //bubbleColor: Colors.teal,
        icon: Icon(LineIcons.search),
        activeIcon: Icon(LineIcons.pie_chart, color: Colors.white),
        title: Text(
          "Analytics",
          style: TextStyle(
            fontSize: 18.0,

              fontFamily: "Baloo", color: Colors.white),
        )),
    BubbledNavigationBarItem(
        //bubbleColor: Colors.green,
        icon: Icon(LineIcons.user),
        activeIcon: Icon(LineIcons.user, color: Colors.white),
        title: Text(
          "Profile",
          style: TextStyle(
            fontSize: 18.0,

              fontFamily: "Baloo", color: Colors.white),
        )
    ),

  ];

  @override
  void initState() {
    _controller = new PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: PageView(
          controller: _controller,
          physics: NeverScrollableScrollPhysics(),
          // onPageChanged: (index) {
          //   print(index);
          //   _controller2.animateToPosition(index,
          //       duration: Duration(milliseconds: 300));
          // },
          children: <Widget>[
            Home(),
            Analytics(),
            Profile(),

          ],
        ),
      ),
      bottomNavigationBar: BubbledNavigationBar(
        items: barItems,
        controller: _controller2,
        itemMargin: EdgeInsets.only(right: 14),
        iconRightMargin: 4,
        animationCurve: Curves.ease,
        animationDuration: Duration(milliseconds: 300),
        backgroundColor: Color(0xffC4ECF7),
        onTap: (index) {
          print(index);
          _controller.animateToPage(index,
              curve: Curves.ease, duration: Duration(milliseconds: 300));
        },
      ),
    );
  }
}













