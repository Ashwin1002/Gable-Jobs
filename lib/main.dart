import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:gablejob/animatedWidget/animated_widget_horz.dart';
import 'package:gablejob/animatedWidget/animated_widget_vert.dart';
import 'package:gablejob/profile_slider.dart';
import 'drawer/navbar.dart';
import 'package:gablejob/card_slider.dart';

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
  String dropdownvalue = "Job Category";

  var items = [
    'Job Category',
    "ICT",
    "Finance",
    'Marketing',
    'Production',
    'Bank',
    'Hospitality',
    'NGO'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      endDrawer: navbar(),
      appBar: AppBar(
        backgroundColor: Colors.black,
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
                Container(
                  height: 520,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/images/sliderimage.jpg'),
                    fit: BoxFit.fill,
                  )),
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top: 50),
                          child: RichText(
                              text: const TextSpan(
                                  text: 'Find Your',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white),
                                  children: [
                                TextSpan(
                                  text: ' Desired ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    color: Colors.green,
                                  ),
                                ),
                                TextSpan(text: 'Job'),
                              ]))),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: const Text(
                          'Jobs, Employment & Future Career Opportunities',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        margin: const EdgeInsets.all(15),
                        padding: const EdgeInsets.only(right: 10, left: 10),
                        height: 250,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              width: 5, color: Colors.grey.withOpacity(0.5)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.zero,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 280,
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        labelText: 'Job Title',
                                      ),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.search,
                                    color: Colors.green,
                                    size: 30,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.zero,
                              padding: EdgeInsets.zero,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 280,
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        labelText: 'City or State',
                                      ),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.location_on,
                                    color: Colors.green,
                                    size: 25,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 300,
                              child: DropdownButtonHideUnderline(
                                child: DropdownButtonFormField(
                                  decoration: const InputDecoration(
                                      enabledBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none),
                                  value: dropdownvalue,
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  isExpanded: true,
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(
                                        items,
                                        style: const TextStyle(
                                            color: Colors.black54),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownvalue = newValue!;
                                    });
                                  },
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30))),
                                ),
                                child: const Text(
                                  'Search',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(15),
                                backgroundColor: Colors.white,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero),
                              ),
                              child: const Text(
                                'Create Your Profile',
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(15),
                                backgroundColor: Colors.white,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero),
                              ),
                              child: const Text(
                                'Upload Your CV',
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 240,
                  width: double.infinity,
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 30, 30, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white.withOpacity(0.4),
                                          width: 5)),
                                  child: const Image(
                                      image: AssetImage(
                                          'assets/images/register.png'),
                                      width: 50)),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Register Your Account',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.only(top: 80),
                            child: Column(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color:
                                                Colors.white.withOpacity(0.4),
                                            width: 5)),
                                    child: const Image(
                                      image: const AssetImage(
                                          'assets/images/phonecall.png'),
                                      width: 50,
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Apply for Dream Job',
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 12),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white.withOpacity(0.4),
                                          width: 5)),
                                  child: const Image(
                                    image: AssetImage('assets/images/cv.png'),
                                    width: 50,
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Upload Your Resume',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 30, bottom: 30),
                        child: const Text(
                          'Choose Your Desire Category',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 180,
                              padding: const EdgeInsets.all(6.0),
                              child: Card(
                                  elevation: 2,
                                  child: Column(
                                    children: const [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/cv.png'),
                                          width: 80,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Technical \n Support',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      )
                                    ],
                                  )),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 180,
                              padding: const EdgeInsets.all(6.0),
                              child: Card(
                                  elevation: 0,
                                  child: Column(
                                    children: const [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/cv.png'),
                                          width: 80,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Business Development',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      )
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 180,
                              padding: const EdgeInsets.all(6.0),
                              child: Card(
                                  elevation: 0,
                                  child: Column(
                                    children: const [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/cv.png'),
                                          width: 80,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Real Estate \n Business',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      )
                                    ],
                                  )),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 180,
                              padding: const EdgeInsets.all(6.0),
                              child: Card(
                                  elevation: 0,
                                  child: Column(
                                    children: const [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/cv.png'),
                                          width: 80,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Share Market \n Analysis',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      )
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 180,
                              padding: const EdgeInsets.all(6.0),
                              child: Card(
                                  elevation: 0,
                                  child: Column(
                                    children: const [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/cv.png'),
                                          width: 80,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Weather & \n Environment',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      )
                                    ],
                                  )),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 180,
                              padding: const EdgeInsets.all(6.0),
                              child: Card(
                                  elevation: 0,
                                  child: Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/cv.png'),
                                          width: 80,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Finance & \n Banking Service',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      )
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 180,
                              padding: const EdgeInsets.all(6.0),
                              child: Card(
                                  elevation: 0,
                                  child: Column(
                                    children: const [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/cv.png'),
                                          width: 80,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'IT & Networking \n Services',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      )
                                    ],
                                  )),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 180,
                              padding: const EdgeInsets.all(6.0),
                              child: Card(
                                  elevation: 0,
                                  child: Column(
                                    children: const [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/cv.png'),
                                          width: 80,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Restaurant \n Services',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      )
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 180,
                              padding: const EdgeInsets.all(6.0),
                              child: Card(
                                  elevation: 0,
                                  child: Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/cv.png'),
                                          width: 80,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Defence & Fire \n Service',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      )
                                    ],
                                  )),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 180,
                              padding: const EdgeInsets.all(6.0),
                              child: Card(
                                  elevation: 0,
                                  child: Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/cv.png'),
                                          width: 80,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Home Delivery \n Services',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      )
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 240,
                            width: 190,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/officetalk.jpg'),
                                    fit: BoxFit.fill)),
                          ),
                          Container(
                            height: 140,
                            width: 120,
                            padding: EdgeInsets.zero,
                            margin: const EdgeInsets.only(left: 210),
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/womensmile.png'),
                                    fit: BoxFit.fill)),
                          ),
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width * 0.6,
                            padding: const EdgeInsets.all(10.0),
                            margin: const EdgeInsets.only(top: 155, left: 105),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              border: Border.all(
                                  color: Colors.white.withOpacity(0.5),
                                  width: 8),
                              borderRadius: BorderRadius.zero,
                            ),
                            child: const Text(
                              '100% Trusted',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10, left: 12),
                  margin: const EdgeInsets.only(left: 10, right: 13),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Trusted & Popular Job Portal',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur.',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.8), fontSize: 15),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            child: OutlinedButton(
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
                                      const EdgeInsets.all(12))),
                              child: Row(
                                children: [
                                  Text(
                                    'Post a Job',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.8),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.black.withOpacity(0.8),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
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
                                      const EdgeInsets.all(12))),
                              child: Row(
                                children: [
                                  Text(
                                    'Apply Now',
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.8),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Recent Jobs',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: const Offset(0, 2),
                    )
                  ]),
                  child: Card(
                    elevation: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: 35,
                                padding: const EdgeInsets.only(
                                    top: 8, left: 15, right: 15, bottom: 8),
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.zero,
                                ),
                                child: const Text(
                                  'All',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                  textAlign: TextAlign.center,
                                )),
                            Container(
                                padding: const EdgeInsets.only(
                                    top: 6, left: 15, right: 15, bottom: 8),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.zero,
                                    border: Border.all(color: Colors.black)),
                                child: const Text(
                                  'New',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                  textAlign: TextAlign.center,
                                )),
                            Container(
                                padding: const EdgeInsets.only(
                                    top: 6, left: 15, right: 15, bottom: 8),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.zero,
                                    border: Border.all(color: Colors.black)),
                                child: const Text(
                                  'Featured',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                  textAlign: TextAlign.center,
                                )),
                            Container(
                                padding: const EdgeInsets.only(
                                    top: 6, left: 15, right: 15, bottom: 8),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.zero,
                                    border: Border.all(color: Colors.black)),
                                child: const Text(
                                  'Recent',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                  textAlign: TextAlign.center,
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                padding: const EdgeInsets.only(
                                    top: 6, left: 15, right: 15, bottom: 8),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.zero,
                                    border: Border.all(color: Colors.black)),
                                child: const Text(
                                  'Full Time',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                  textAlign: TextAlign.center,
                                )),
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                                padding: const EdgeInsets.only(
                                    top: 6, left: 15, right: 15, bottom: 8),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.zero,
                                    border: Border.all(color: Colors.black)),
                                child: const Text(
                                  'Part Time',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                  textAlign: TextAlign.center,
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.5), width: 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 40,
                          width: 40,
                          padding: const EdgeInsets.only(
                              top: 8, left: 15, right: 15, bottom: 8),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/logos/udiza.png'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'UI/UX Designer',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Winbrans.com',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.attach_money,
                                  size: 17,
                                  color: Colors.green,
                                ),
                                Text(
                                  '\$20k - \$25k',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black.withOpacity(0.7)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 28),
                                  child: const Icon(
                                    Icons.location_on,
                                    size: 16,
                                    color: Colors.green,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Location 210-27 Quadra,\nMarket Street, Victoria \nCanada',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black.withOpacity(0.7)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                              width: 80,
                              child: OutlinedButton(
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
                                        const EdgeInsets.all(5))),
                                child: Text(
                                  'Apply',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.8),
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 30,
                              width: 80,
                              padding: EdgeInsets.zero,
                              child: ElevatedButton(
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
                                        const EdgeInsets.all(5))),
                                child: Text(
                                  'Full Time',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.5), width: 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 60,
                          width: 30,
                          padding: const EdgeInsets.only(
                              top: 8, left: 15, right: 15, bottom: 8),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/logos/Infiniza.png'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Android Developer',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Infiniza.com',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.attach_money,
                                  size: 17,
                                  color: Colors.green,
                                ),
                                Text(
                                  '\$20k - \$25k',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black.withOpacity(0.7)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 28),
                                  child: const Icon(
                                    Icons.location_on,
                                    size: 16,
                                    color: Colors.green,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Location 210-27 Quadra,\nMarket Street, Victoria \nCanada',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black.withOpacity(0.7)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                              width: 80,
                              child: OutlinedButton(
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
                                        const EdgeInsets.all(5))),
                                child: Text(
                                  'Apply',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.8),
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 30,
                              width: 80,
                              padding: EdgeInsets.zero,
                              child: ElevatedButton(
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
                                        const EdgeInsets.all(5))),
                                child: Text(
                                  'Part Time',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.5), width: 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 60,
                          width: 30,
                          padding: const EdgeInsets.only(
                              top: 8, left: 15, right: 15, bottom: 8),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/logos/Glovibo.png'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Senior Manager',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Glovibo.com',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.attach_money,
                                  size: 17,
                                  color: Colors.green,
                                ),
                                Text(
                                  '\$20k - \$25k',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black.withOpacity(0.7)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 28),
                                  child: const Icon(
                                    Icons.location_on,
                                    size: 16,
                                    color: Colors.green,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Location 210-27 Quadra,\nMarket Street, Victoria \nCanada',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black.withOpacity(0.7)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                              width: 80,
                              child: OutlinedButton(
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
                                        const EdgeInsets.all(5))),
                                child: Text(
                                  'Apply',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.8),
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 30,
                              width: 80,
                              padding: EdgeInsets.zero,
                              child: ElevatedButton(
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
                                        const EdgeInsets.all(5))),
                                child: Text(
                                  'Intern',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.5), width: 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 40,
                          width: 40,
                          padding: const EdgeInsets.only(
                              top: 8, left: 15, right: 15, bottom: 8),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/logos/Bizotic.png'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Product Designer',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Bizotic.com',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.attach_money,
                                  size: 17,
                                  color: Colors.green,
                                ),
                                Text(
                                  '\$20k - \$25k',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black.withOpacity(0.7)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 28),
                                  child: const Icon(
                                    Icons.location_on,
                                    size: 16,
                                    color: Colors.green,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Location 210-27 Quadra,\nMarket Street, Victoria \nCanada',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black.withOpacity(0.7)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                              width: 80,
                              child: OutlinedButton(
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
                                        const EdgeInsets.all(5))),
                                child: Text(
                                  'Apply',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.8),
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 30,
                              width: 80,
                              padding: EdgeInsets.zero,
                              child: ElevatedButton(
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
                                        const EdgeInsets.all(5))),
                                child: Text(
                                  'Part Time',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.5), width: 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 40,
                          width: 40,
                          padding: const EdgeInsets.only(
                              top: 8, left: 15, right: 15, bottom: 8),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/logos/Hotelzo.png'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Digital Marketer',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Hotelzo.com',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.attach_money,
                                  size: 17,
                                  color: Colors.green,
                                ),
                                Text(
                                  '\$20k - \$25k',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black.withOpacity(0.7)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 28),
                                  child: const Icon(
                                    Icons.location_on,
                                    size: 16,
                                    color: Colors.green,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Location 210-27 Quadra,\nMarket Street, Victoria \nCanada',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black.withOpacity(0.7)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                              width: 80,
                              child: OutlinedButton(
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
                                        const EdgeInsets.all(5))),
                                child: Text(
                                  'Apply',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.8),
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 30,
                              width: 80,
                              padding: EdgeInsets.zero,
                              child: ElevatedButton(
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
                                        const EdgeInsets.all(5))),
                                child: Text(
                                  'Intern',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.5), width: 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 40,
                          width: 40,
                          padding: const EdgeInsets.only(
                              top: 8, left: 15, right: 15, bottom: 8),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/logos/Gozuto.png'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Sales Manager',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Gozuto.com',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.attach_money,
                                  size: 17,
                                  color: Colors.green,
                                ),
                                Text(
                                  '\$20k - \$25k',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black.withOpacity(0.7)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 28),
                                  child: const Icon(
                                    Icons.location_on,
                                    size: 16,
                                    color: Colors.green,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Location 210-27 Quadra,\nMarket Street, Victoria \nCanada',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black.withOpacity(0.7)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                              width: 80,
                              child: OutlinedButton(
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
                                        const EdgeInsets.all(5))),
                                child: Text(
                                  'Apply',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.8),
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 30,
                              width: 80,
                              padding: EdgeInsets.zero,
                              child: ElevatedButton(
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
                                        const EdgeInsets.all(5))),
                                child: Text(
                                  'Part Time',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.5), width: 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 40,
                          width: 40,
                          padding: const EdgeInsets.only(
                              top: 8, left: 15, right: 15, bottom: 8),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/logos/udiza.png'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Web Developer',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Udiza.com',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.attach_money,
                                  size: 17,
                                  color: Colors.green,
                                ),
                                Text(
                                  '\$20k - \$25k',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black.withOpacity(0.7)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 28),
                                  child: const Icon(
                                    Icons.location_on,
                                    size: 16,
                                    color: Colors.green,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Location 210-27 Quadra,\nMarket Street, Victoria \nCanada',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black.withOpacity(0.7)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                              width: 80,
                              child: OutlinedButton(
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
                                        const EdgeInsets.all(5))),
                                child: Text(
                                  'Apply',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.8),
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 30,
                              width: 80,
                              padding: EdgeInsets.zero,
                              child: ElevatedButton(
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
                                        const EdgeInsets.all(5))),
                                child: Text(
                                  'Full Time',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.5), width: 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 40,
                          width: 40,
                          padding: const EdgeInsets.only(
                              top: 8, left: 15, right: 15, bottom: 8),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/logos/quota.png'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'SEO',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Oqota.com',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.attach_money,
                                  size: 17,
                                  color: Colors.green,
                                ),
                                Text(
                                  '\$20k - \$25k',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black.withOpacity(0.7)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 28),
                                  child: const Icon(
                                    Icons.location_on,
                                    size: 16,
                                    color: Colors.green,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Location 210-27 Quadra,\nMarket Street, Victoria \nCanada',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black.withOpacity(0.7)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                              width: 80,
                              child: OutlinedButton(
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
                                        const EdgeInsets.all(5))),
                                child: Text(
                                  'Apply',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.8),
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 30,
                              width: 80,
                              padding: EdgeInsets.zero,
                              child: ElevatedButton(
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
                                        const EdgeInsets.all(5))),
                                child: Text(
                                  'Part Time',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      padding: const EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          shape: BoxShape.circle),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 14,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      padding: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          shape: BoxShape.circle),
                      child: const Text(
                        '1',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      padding: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          shape: BoxShape.circle),
                      child: const Text(
                        '2',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      padding: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          shape: BoxShape.circle),
                      child: const Text(
                        '3',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      padding: const EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          shape: BoxShape.circle),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 340,
                  width: double.infinity,
                  color: Colors.green,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                const SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: Image(
                                      image: AssetImage(
                                          'assets/logos/threepeople.png'),
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      '14',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.white),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 10),
                                      child: const Text(
                                        'k+',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                                const Text(
                                  'Job Available',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: Image(
                                      image: AssetImage('assets/logos/cv.png'),
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      '18',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.white),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 10),
                                      child: const Text(
                                        'k+',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                                const Text(
                                  'CV Submitted',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                const SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: Image(
                                      image: AssetImage(
                                          'assets/logos/company.png'),
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      '9',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.white),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 10),
                                      child: const Text(
                                        'k+',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                                const Text(
                                  'Companies',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: Image(
                                      image: AssetImage('assets/logos/job.png'),
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      '35',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.white),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 10),
                                      child: const Text(
                                        'k+',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                                const Text(
                                  'Appointed to Job',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(
                              height: 300,
                              width: 200,
                              child: Image(
                                  image: AssetImage(
                                      'assets/images/blackguy.png'))),
                          Column(
                            children: const [
                              SizedBox(
                                  height: 160,
                                  width: 130,
                                  child: Image(
                                      image: AssetImage(
                                          'assets/images/friends.png'))),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                  height: 120,
                                  width: 130,
                                  child: Image(
                                      image: AssetImage(
                                          'assets/images/collegue.png')))
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        'Why We are Most Popular',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 21, right: 22),
                        child: const Text(
                          'Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Quis ipsum suspendisse ultrices gravida',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 60,
                            width: 195,
                            child: Row(
                              children: [
                                Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(0.4),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(15))),
                                    child: Image(
                                      image: const AssetImage(
                                          'assets/logos/cv.png'),
                                      color: Colors.lightGreen.shade800,
                                    )),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'Trusted & \n'
                                  'Quality Job',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 195,
                            child: Row(
                              children: [
                                Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(0.4),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(15))),
                                    child: Image(
                                      image: const AssetImage(
                                          'assets/logos/company.png'),
                                      color: Colors.lightGreen.shade800,
                                    )),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'Top Companies',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 60,
                            width: 195,
                            margin: const EdgeInsets.only(left: 12),
                            child: Row(
                              children: [
                                Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(0.4),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(15))),
                                    child: Image(
                                      image: const AssetImage(
                                          'assets/logos/nocharge.png'),
                                      color: Colors.lightGreen.shade800,
                                    )),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'No Extra \n'
                                  'Charge',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 195,
                            margin: const EdgeInsets.only(right: 12),
                            child: Row(
                              children: [
                                Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(0.4),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(15))),
                                    child: Image(
                                      image: const AssetImage(
                                          'assets/logos/threepeople.png'),
                                      color: Colors.lightGreen.shade800,
                                    )),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'International \nJob',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
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
                Container(
                  height: 1250,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(height: 480, width: 420, child: AnimateCont()),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(height: 480, width: 400, child: AnimateCont2()),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Download The Glabe Mobile App',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25),
                        child: const Text(
                          'Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image(
                              image: AssetImage('assets/logos/appstore.png'),
                              width: 150,
                              height: 60,
                            ),
                            Image(
                              image: AssetImage('assets/logos/googleplay.png'),
                              width: 150,
                              height: 60,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
