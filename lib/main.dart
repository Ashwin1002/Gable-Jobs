import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:gablejob/animatedWidget/animated_widget_horz.dart';
import 'package:gablejob/animatedWidget/animated_widget_vert.dart';
import 'package:gablejob/widgets/animatedPhoto.dart';
import 'package:gablejob/widgets/availableNum.dart';
import 'package:gablejob/widgets/blogs.dart';
import 'package:gablejob/widgets/categoryJob.dart';
import 'package:gablejob/widgets/footer.dart';
import 'package:gablejob/widgets/mostPopular.dart';
import 'package:gablejob/widgets/postOrApplyJob.dart';
import 'package:gablejob/widgets/recentJobs.dart';
import 'package:gablejob/widgets/searchJob.dart';
import 'package:gablejob/slider/profile_slider.dart';
import 'package:gablejob/widgets/threebutton.dart';
import 'drawer/navbar.dart';
import 'package:gablejob/slider/card_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        unselectedWidgetColor: Colors.black87,
        colorScheme: const ColorScheme.light(
          primary: Colors.green,
        ), // here for open state in replacement of deprecated accentColor
        dividerColor: Colors.blueAccent.withOpacity(0.3),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      endDrawer: navbar(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Container(
          margin: EdgeInsets.only(left: 2),
            child: Image.asset('assets/logos/gable.png', color: Colors.green, )),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.8),
                          spreadRadius: 5,
                          blurRadius: 8,
                          offset: const Offset(0, 3)),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton.icon(
                          icon: Icon(
                            Icons.add_box,
                            color: Colors.black.withOpacity(0.8),
                          ),
                          label: Text(
                            'Login',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.8)),
                          ),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero)),
                              side: MaterialStateProperty.all(const BorderSide(
                                color: Colors.green,
                              )),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(10))),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton.icon(
                          icon: const Icon(Icons.person, color: Colors.white),
                          label: const Text(
                            'Sign Up',
                            style: const TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero)),
                              side: MaterialStateProperty.all(const BorderSide(
                                color: Colors.green,
                              )),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.green),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(10))),
                        ),
                      )
                    ],
                  ),
                ),
                SearchWidget(),
                ThreeButton(),
                JobCategory(),
                JobPortal(),
                const SizedBox(
                  height: 20,
                ),
                RecentJobs(),
                const SizedBox(
                  height: 30,
                ),
                AvailableJob(),
                const SizedBox(height: 30),
                MostPopular(),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 381,
                  child: Column(
                    children: const [
                      Text(
                        'Popular Companies',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Flexible(
                        child: CardSlider(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: 450,
                  child: Column(
                    children: const [
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        'Featured Profile',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Flexible(
                        fit: FlexFit.loose,
                        child: ProfileSlider(),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                AnimatedPhotos(),
                const SizedBox(
                  height: 30,
                ),
                Blogs(),
                Footer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
