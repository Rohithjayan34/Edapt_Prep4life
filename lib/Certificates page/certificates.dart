import 'package:flutter/material.dart';
import 'package:getflutter/components/avatar/gf_avatar.dart';
import 'package:getflutter/shape/gf_avatar_shape.dart';

class CertificatesPage extends StatefulWidget {
  @override
  _CertificatesPageState createState() => _CertificatesPageState();
}

class _CertificatesPageState extends State<CertificatesPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              RaisedButton(
                child: Icon(
                  Icons.arrow_back,
                  size: 29.0,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Column(

                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            'Certicates Earned',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),


                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          GFAvatar(
                              size: 55.0,
                              backgroundImage:AssetImage('images/c.jpeg'),
                              shape: GFAvatarShape.standard


                          ),
                          Center(child: Text('Rohith')),
                        ],
                      ),

                      Row(
                        children:<Widget>[
                          Column(
                            children: <Widget>[
                              GFAvatar(
                                  size: 55.0,
                                  backgroundImage:AssetImage('images/b.jpeg'),
                                  shape: GFAvatarShape.standard


                              ),
                              Text('English'),
                            ],
                          ),
                        ],
                      ),

                      Column(
                        children: <Widget>[
                          GFAvatar(
                              size: 55.0,
                              backgroundImage:AssetImage('images/a.jpeg'),
                              shape: GFAvatarShape.standard
                          ),
                          Text('Rahul'),
                        ],
                      ),

                    ],

                  ),
                ),

              ),

              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        GFAvatar(
                            size: 55.0,
                            backgroundImage:AssetImage('images/c.jpeg'),
                            shape: GFAvatarShape.standard


                        ),
                        Text('Rohith'),
                      ],
                    ),

                    Row(
                      children:<Widget>[
                        Column(
                          children: <Widget>[
                            GFAvatar(
                                size: 55.0,
                                backgroundImage:AssetImage('images/b.jpeg'),
                                shape: GFAvatarShape.standard


                            ),
                            Text('English'),
                          ],
                        ),
                      ],
                    ),

                    Column(
                      children: <Widget>[
                        GFAvatar(
                            size: 55.0,
                            backgroundImage:AssetImage('images/a.jpeg'),
                            shape: GFAvatarShape.standard
                        ),
                        Text('Rahul'),
                      ],
                    ),

                  ],

                ),

              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        GFAvatar(
                            size: 55.0,
                            backgroundImage:AssetImage('images/c.jpeg'),
                            shape: GFAvatarShape.standard


                        ),
                        Text('Rohith'),
                      ],
                    ),

                    Row(
                      children:<Widget>[
                        Column(
                          children: <Widget>[
                            GFAvatar(
                                size: 55.0,
                                backgroundImage:AssetImage('images/b.jpeg'),
                                shape: GFAvatarShape.standard


                            ),
                            Text('English'),
                          ],
                        ),
                      ],
                    ),

                    Column(
                      children: <Widget>[
                        GFAvatar(
                            size: 55.0,
                            backgroundImage:AssetImage('images/a.jpeg'),
                            shape: GFAvatarShape.standard
                        ),
                        Text('Rahul'),
                      ],
                    ),

                  ],

                ),

              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        GFAvatar(
                            size: 55.0,
                            backgroundImage:AssetImage('images/c.jpeg'),
                            shape: GFAvatarShape.standard


                        ),
                        Text('Rohith'),
                      ],
                    ),

                    Row(
                      children:<Widget>[
                        Column(
                          children: <Widget>[
                            GFAvatar(
                                size: 55.0,
                                backgroundImage:AssetImage('images/b.jpeg'),
                                shape: GFAvatarShape.standard


                            ),
                            Text('English'),
                          ],
                        ),
                      ],
                    ),

                    Column(
                      children: <Widget>[
                        GFAvatar(
                            size: 55.0,
                            backgroundImage:AssetImage('images/a.jpeg'),
                            shape: GFAvatarShape.standard
                        ),
                        Text('Rahul'),
                      ],
                    ),

                  ],

                ),

              ),

            ],
          ),
        ),
      ),



    );

  }}
