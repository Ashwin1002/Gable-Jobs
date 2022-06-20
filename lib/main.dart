import 'dart:ffi';

import 'package:flutter/material.dart';
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
import 'package:flutter_switch/flutter_switch.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Decides which theme to show.
      home: MyHomePage(),
    );
  }
}

class ThemeModel with ChangeNotifier {
  final ThemeMode _mode;

  ThemeMode get mode => _mode;

  ThemeModel(this._mode);
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  final _notifier = ValueNotifier<ThemeModel>(ThemeModel(ThemeMode.light));

  bool isSelected = false;

  // this variable determines whether the back-to-top button is shown or not
  bool _showBackToTopButton = false;

// scroll controller
  late ScrollController _scrollController;

  bool status7 = false;
  bool isSwitchOn = false;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          if (_scrollController.offset >= 400) {
            _showBackToTopButton = true; // show the back-to-top button
          } else {
            _showBackToTopButton = false; // hide the back-to-top button
          }
        });
      });

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose(); // dispose the controller
    super.dispose();
  }

// This function is triggered when the user presses the back-to-top button
  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(seconds: 3), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeModel>(
      valueListenable: _notifier,
      builder: (_, model, __) {
        final mode = model.mode;
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.green,
            unselectedWidgetColor: Colors.black87,
            colorScheme: const ColorScheme.light(
              primary: Colors.green,
            ), // here for open state in replacement of deprecated accentColor
            dividerColor: Colors.blueAccent.withOpacity(0.3),
          ),
          // Provide light theme.
          darkTheme: ThemeData.dark(),
          // Provide dark theme.
          themeMode: mode,
          // Decides which theme to show.
          home: Scaffold(
            resizeToAvoidBottomInset: false,
            endDrawer: navbar(),
            appBar: AppBar(
              backgroundColor: Colors.black,
              leading: Container(
                  margin: EdgeInsets.only(left: 2),
                  child: Image.asset(
                    'assets/logos/gable.png',
                    color: Colors.green,
                  )),
            ),
            body: SafeArea(
              child: Column(
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
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.8)),
                            ),
                            onPressed: () {},
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero)),
                                side: MaterialStateProperty.all(
                                    const BorderSide(
                                      color: Colors.green,
                                    )),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(10))),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(0),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color.fromRGBO(56, 167, 69, 1), Color.fromRGBO(76, 206, 91, 80)],
                              )
                          ),
                          child: OutlinedButton.icon(
                            icon: const Icon(Icons.person,
                                color: Colors.white),
                            label: const Text(
                              'Sign Up',
                              style: const TextStyle(color: Colors.white),
                            ),
                            onPressed: () {},
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero)),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(10))),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      controller: _scrollController,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
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
                ],
              ),
            ),
            // This is our back-to-top button
            floatingActionButton:Stack(
                  children: [
                    Container(
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(bottom: 60),
                      child:  _showBackToTopButton == false
                          ? null
                          : FloatingActionButton(
                          backgroundColor: Colors.grey.shade900.withOpacity(0.9),
                          onPressed: _scrollToTop,
                          child: Image(
                              image: AssetImage('assets/logos/buttontotop.png'),
                              height: 80,
                              width: 80),
                        ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 200, top: 885),
                      alignment: Alignment.topRight,
                      child:  FlutterSwitch(
                        width: 80.0,
                        height: 40.0,
                        toggleSize: 45.0,
                        value: status7,
                        borderRadius: 30.0,
                        padding: 1.0,
                        activeToggleColor: Color(0xFF6E40C9),
                        inactiveToggleColor: Colors.white,
                        activeSwitchBorder: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                        inactiveSwitchBorder: Border.all(
                          color: Colors.black,
                          width: 2.0,
                        ),
                        activeColor: Colors.transparent,
                        inactiveColor: Colors.transparent,
                        activeIcon: Icon(
                          Icons.nightlight_round,
                          color: Color(0xFFF8E3A1),
                        ),
                        inactiveIcon: Icon(
                          Icons.wb_sunny,
                          color: Color(0xFFFFDF5D),
                        ),
                        onToggle: (val) {
                          setState(() {
                            status7 = val;

                            if (val) {
                              _notifier.value = ThemeModel(ThemeMode.dark);
                            } else {
                              _notifier.value = ThemeModel(ThemeMode.light);
                            }
                          });
                        },
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 200,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 500, left: 310),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen.shade600,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        boxShadow: [BoxShadow(
                          color: Colors.lightGreen,
                          spreadRadius: 3,
                          blurRadius: 7,
                        )]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.water_drop, color: Colors.white, size: 22,),
                            SizedBox(width: 7,),
                            Text('Buy Now', style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
          ),
        );
      },
    );
  }
}
