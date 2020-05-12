import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:bubbled_navigation_bar/bubbled_navigation_bar.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class AfterSplash extends StatefulWidget {

    final titles = ['Home', 'Analytics', 'Profile'];
    final colors = [Colors.blue, Colors.blue, Colors.blue];
    final icons = [
      FontAwesomeIcons.home,
      FontAwesomeIcons.chartPie,
      CupertinoIcons.profile_circled,

    ];


    @override
    _AfterSplashState createState() => _AfterSplashState();
  }

  class _AfterSplashState extends State<AfterSplash> {
  PageController _pageController;
  MenuPositionController _menuPositionController;
  bool userPageDragging = false;

  @override
  void initState() {
  _menuPositionController = MenuPositionController(initPosition: 0);

  _pageController = PageController(
  initialPage: 0,
  keepPage: false,
  viewportFraction: 1.0
  );
  _pageController.addListener(handlePageChange);

  super.initState();
  }

  void handlePageChange() {
  _menuPositionController.absolutePosition = _pageController.page;
  }

  void checkUserDragging(ScrollNotification scrollNotification) {
  if (scrollNotification is UserScrollNotification && scrollNotification.direction != ScrollDirection.idle) {
  userPageDragging = true;
  } else if (scrollNotification is ScrollEndNotification) {
  userPageDragging = false;
  }
  if (userPageDragging) {
  _menuPositionController.findNearestTarget(_pageController.page);
  }
  }

   @override
   Widget build(BuildContext context) {
   return Scaffold(

     body: NotificationListener<ScrollNotification>(
      // ignore: missing_return
      onNotification: (scrollNotification) {
      checkUserDragging(scrollNotification);
  },
      child: PageView(
      controller: _pageController,
      children: widget.colors.map((Color c) =>
          Container(color: Color(0xffEAF6FA),),).toList(),

     onPageChanged: (page) {},

  ),

  ),

       bottomNavigationBar: BubbledNavigationBar(
       controller: _menuPositionController,
       initialIndex: 0,
       itemMargin: EdgeInsets.symmetric(horizontal: 8),

       backgroundColor: Color(0xffDBF1F8 ),
       defaultBubbleColor: Colors.blue,

        onTap: (index) {
        _pageController.animateToPage(
       index,
       curve: Curves.easeInOutQuad,

       duration: Duration(milliseconds: 500)
       );
        },
        items: widget.titles.map((title) {
       var index = widget.titles.indexOf(title);
        var color = widget.colors[index];
        
        return BubbledNavigationBarItem(
        icon: getIcon(index, color),
        activeIcon: getIcon(index, Colors.white),
        bubbleColor: color,
        title: Text(
         title,
         style: TextStyle(color: Colors.white, fontSize: 15),
  ),

  );
  }).toList(),

  ),

  );
  }

  Padding getIcon(int index, Color color) {
  return Padding(
  padding: const EdgeInsets.only(bottom: 3),
  child: Icon(widget.icons[index], size: 30, color:color ),
  );
  }
  }






