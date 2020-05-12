
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_player/video_player.dart';


class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  VideoPlayerController _videoPlayerController1;
  VideoPlayerController _videoPlayerController2;
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController1 = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
    _videoPlayerController2 = VideoPlayerController.network(
        'https://www.sample-videos.com/video123/mp4/480/asdasdas.mp4');
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      aspectRatio: 3 / 2,
      autoPlay: true,
      looping: true,
      // Try playing around with some of these other options:

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _videoPlayerController2.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: SafeArea(
            child: Column(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Chewie(
                        controller: _chewieController,
                      ),
                    ),
                  ],
                ),

                Row(
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          _chewieController.dispose();
                          _videoPlayerController2.pause();
                          _videoPlayerController2.seekTo(Duration(seconds: 0));
                          _chewieController = ChewieController(
                            videoPlayerController: _videoPlayerController1,
                            aspectRatio: 3 / 2,
                            autoPlay: true,
                            looping: true,
                          );
                        });
                      },
                    ),

          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  _chewieController.dispose();
                  _videoPlayerController1.pause();
                  _videoPlayerController1.seekTo(Duration(seconds: 0));
                  _chewieController = ChewieController(
                    videoPlayerController: _videoPlayerController2,
                    aspectRatio: 3 / 2,
                    autoPlay: true,
                    looping: true,
                  );
                });
              },
            ),
          ),
                  ],
                ),

                TabBar(
                  labelColor: Colors.black,
                  indicatorColor: Colors.black,
                  tabs: [
                    Tab(text: 'LESSONS',),
                    Tab(text: 'ABOUT'),
                    Tab(text: 'COMMENTS'),
                  ],
                ),
                Expanded(
                  flex: 1,
                  child: TabBarView(
                    children: <Widget>[
                      SingleChildScrollView (
                        child: Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left:18.0,right: 18.0,top: 30,bottom: 10.0),
                              child: Text('Everyday Minimalism :Find Calm & Creativity in Living Simply',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 1,left: 18,right: 18,bottom: 10),
                              child: Text('50K Students',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Divider(
                                color: Colors.black,
                                height: 10,
                              ),
                            ),

                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    radius: 25,
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Erin Boyle.Follow',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text('Minimalism & Writing'),

                                    ],
                                  ),
                                ),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Divider(
                                height: 10,
                                color: Colors.black,
                              ),
                            ),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left:14.0,top: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('8 Lessons (34m)',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text('Download All'),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top:8.0),
                                  child: IconButton(
                                    icon: FaIcon(FontAwesomeIcons.download),
                                  ),
                                ),
                              ],
                            ),



                            Padding(
                              padding: const EdgeInsets.only(left:15.0,top: 35,bottom:35 ),
                              child: Text('Module 1 - Getting Started',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),


                            Padding(
                              padding: const EdgeInsets.only(bottom:15.0),
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffE5E4BB),
                                ),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text('1.'),

                                    Padding(
                                      padding: const EdgeInsets.only(top:25.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('abcdefghjhiklmnopqrstuv'),
                                          Text('03:00 min'),
                                        ],
                                      ),
                                    ),

                                    Icon(
                                      Icons.file_download,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(bottom:15.0),
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffE5E4BB),
                                ),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text('2.'),

                                    Padding(
                                      padding: const EdgeInsets.only(top:25.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('abcdefghjhiklmnopqrstuv'),
                                          Text('03:00 min'),
                                        ],
                                      ),
                                    ),

                                    Icon(
                                      Icons.file_download,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(bottom:15.0),
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffE5E4BB),
                                ),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text('3.'),

                                    Padding(
                                      padding: const EdgeInsets.only(top:25.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('abcdefghjhiklmnopqrstuv'),
                                          Text('03:00 min'),
                                        ],
                                      ),
                                    ),

                                    Icon(
                                      Icons.file_download,
                                    ),
                                  ],
                                ),
                              ),
                            ),


                            Padding(
                              padding: const EdgeInsets.only(bottom:15.0),
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffE5E4BB),
                                ),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text('4.'),

                                    Padding(
                                      padding: const EdgeInsets.only(top:25.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('abcdefghjhiklmnopqrstuv'),
                                          Text('03:00 min'),
                                        ],
                                      ),
                                    ),

                                    Icon(
                                      Icons.file_download,
                                    ),
                                  ],
                                ),
                              ),
                            ),


                            Padding(
                              padding: const EdgeInsets.only(bottom:15.0),
                              child: Container(
                                height: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffE5E4BB),
                                ),

                                child: Row(

                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left:100.0),
                                      child: Text('Points to remember',
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:100.0),
                                      child: Icon(
                                        Icons.forward,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),



                            Padding(
                              padding: const EdgeInsets.only(left:15.0,top: 35,bottom:35 ),
                              child: Text('Module 2 - Getting Started',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),


                            Padding(
                              padding: const EdgeInsets.only(bottom:15.0),
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffE5E4BB),
                                ),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text('1.'),

                                    Padding(
                                      padding: const EdgeInsets.only(top:25.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('abcdefghjhiklmnopqrstuv'),
                                          Text('03:00 min'),
                                        ],
                                      ),
                                    ),

                                    Icon(
                                      Icons.file_download,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(bottom:15.0),
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffE5E4BB),
                                ),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text('2.'),

                                    Padding(
                                      padding: const EdgeInsets.only(top:25.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('abcdefghjhiklmnopqrstuv'),
                                          Text('03:00 min'),
                                        ],
                                      ),
                                    ),

                                    Icon(
                                      Icons.file_download,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(bottom:15.0),
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffE5E4BB),
                                ),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text('3.'),

                                    Padding(
                                      padding: const EdgeInsets.only(top:25.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('abcdefghjhiklmnopqrstuv'),
                                          Text('03:00 min'),
                                        ],
                                      ),
                                    ),

                                    Icon(
                                      Icons.file_download,
                                    ),
                                  ],
                                ),
                              ),
                            ),


                            Padding(
                              padding: const EdgeInsets.only(bottom:15.0),
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffE5E4BB),
                                ),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text('4.'),

                                    Padding(
                                      padding: const EdgeInsets.only(top:25.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('abcdefghjhiklmnopqrstuv'),
                                          Text('03:00 min'),
                                        ],
                                      ),
                                    ),

                                    Icon(
                                      Icons.file_download,
                                    ),
                                  ],
                                ),
                              ),
                            ),


                            Padding(
                              padding: const EdgeInsets.only(bottom:15.0),
                              child: Container(
                                height: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffE5E4BB),
                                ),

                                child: Row(

                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left:100.0),
                                      child: Text('Points to remember',
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:100.0),
                                      child: Icon(
                                        Icons.forward,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),





                            Padding(
                              padding: const EdgeInsets.only(left:15.0,top: 35,bottom:35 ),
                              child: Text('Module 3 - Getting Started',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),


                            Padding(
                              padding: const EdgeInsets.only(bottom:15.0),
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffE5E4BB),
                                ),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text('1.'),

                                    Padding(
                                      padding: const EdgeInsets.only(top:25.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('abcdefghjhiklmnopqrstuv'),
                                          Text('03:00 min'),
                                        ],
                                      ),
                                    ),

                                    Icon(
                                      Icons.file_download,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(bottom:15.0),
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffE5E4BB),
                                ),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text('2.'),

                                    Padding(
                                      padding: const EdgeInsets.only(top:25.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('abcdefghjhiklmnopqrstuv'),
                                          Text('03:00 min'),
                                        ],
                                      ),
                                    ),

                                    Icon(
                                      Icons.file_download,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(bottom:15.0),
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffE5E4BB),
                                ),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text('3.'),

                                    Padding(
                                      padding: const EdgeInsets.only(top:25.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('abcdefghjhiklmnopqrstuv'),
                                          Text('03:00 min'),
                                        ],
                                      ),
                                    ),

                                    Icon(
                                      Icons.file_download,
                                    ),
                                  ],
                                ),
                              ),
                            ),


                            Padding(
                              padding: const EdgeInsets.only(bottom:15.0),
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffE5E4BB),
                                ),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text('4.'),

                                    Padding(
                                      padding: const EdgeInsets.only(top:25.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('abcdefghjhiklmnopqrstuv'),
                                          Text('03:00 min'),
                                        ],
                                      ),
                                    ),

                                    Icon(
                                      Icons.file_download,
                                    ),
                                  ],
                                ),
                              ),
                            ),


                            Padding(
                              padding: const EdgeInsets.only(bottom:15.0),
                              child: Container(
                                height: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffE5E4BB),
                                ),

                                child: Row(

                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left:100.0),
                                      child: Text('Points to remember',
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:100.0),
                                      child: Icon(
                                        Icons.forward,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),


                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Container(
                                  height: 40,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.blue,
                                  ),

                                  child: RaisedButton(
                                    child: Text('Take a Quiz',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    textColor: Colors.white,
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),

                      ),



                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          children: <Widget>[
                            Text('Everyday Minimalism :Find Calm & Creativity in Living Simply',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuv\n'
                                  'abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstu\n'
                                  'abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuv\n'
                                  'abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuv\n'
                                  'abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuv\n'
                                  'abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuv\n'
                                  'abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuv\n'),
                            )
                          ],
                        ),
                      ),









                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      CircleAvatar(
                                         backgroundColor: Colors.grey,
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(left:14.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text('At in ipsum',
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.only(top:10.0),
                                              child: Text('abcdefghijklmnopqrstuvwxyzabcdefghijklmno\n'
                                                  'abcdefghijklmnopqrstuvwxyzabcdefghijklmno\n'
                                                  'abcdefghijklmnopqrstuvwxyzabcdefghijkl\n'),
                                            ),

                                            Row(

                                              children: <Widget>[
                                                Text('Like',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left:50.0),
                                                  child: Text('Replay',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left:50.0),
                                                  child: Text('2 mins ago'),
                                                ),

                                              ],
                                            ),
                                      ],
                                        ),
                                      ),


                                      ],),



                                  Padding(
                                    padding: const EdgeInsets.only(top:220.0),
                                    child: Container(
                                      height: 70,
                                      width: 430,
                                      color: Colors.blue,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          Container(
                                            height: 50,
                                            width: 250,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color: Colors.white,
                                            ),

                                            child: TextFormField(
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                              decoration: new InputDecoration(
                                                hintText: 'Type here',
                                                fillColor: Colors.white,

                                              ),
                                            ),
                                          ),

                                          Container(
                                            height: 40,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color: Colors.white,
                                            ),

                                            child: FlatButton(
                                              child: Text('send'),
                                              textColor: Colors.black,

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
                              ],
                  ),
                ),
    ],
    ),
                          ),

        ),

                  ),
    );

  }}
