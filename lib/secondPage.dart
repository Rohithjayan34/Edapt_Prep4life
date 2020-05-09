


import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
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
      autoPlay: false,
      looping: false,
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
        child: SafeArea(
          child: Scaffold(
            body: Column(
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
                            autoPlay: false,
                            looping: false,
                          );
                        });
                      },
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
                      Column(
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
                            padding: const EdgeInsets.only(left:15.0,top: 35),
                            child: Text('Module 1 - Getting Started',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),




                        ],














                      ),
                          Text('Everyday '),
                          Text('Everyday '),



                        ],
                      )
                ),
                    ],
                  ),
                )




            ),
          ),
        );
  }
}
