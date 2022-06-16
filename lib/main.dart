import 'dart:ffi';

import 'package:flutter/material.dart';
import 'drawer/navbar.dart';

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
                          style: TextStyle(color: Colors.black.withOpacity(0.8)),
                        ),
                        onPressed: () {},
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero)),
                            side: MaterialStateProperty.all(const BorderSide(
                              color: Colors.green,
                            )),
                            padding:
                                MaterialStateProperty.all(const EdgeInsets.all(10))),
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
                            padding:
                                MaterialStateProperty.all(const EdgeInsets.all(10))),
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
                              color: Colors.white
                            ),
                            children: [
                              TextSpan(text: ' Desired ',  style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Colors.green,
                              ),),
                              TextSpan(text: 'Job'),
                            ]
                          )
                       )
                    ),
                    const SizedBox(height: 10,),
                    Container(
                        child: const Text(
                            'Jobs, Employment & Future Career Opportunities',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal
                          ),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      style:
                                          const TextStyle(color: Colors.black54),
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
                                        borderRadius: BorderRadius.circular(30))),
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
                          child: TextButton(onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(15),
                              backgroundColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero),
                            ),
                            child: const Text('Create Your Profile', style: TextStyle(
                              color: Colors.green
                            ),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(15),
                              backgroundColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero),
                            ),
                            child: const Text('Upload Your CV', style: TextStyle(
                              color: Colors.green
                            ),),
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
                                border: Border.all(color: Colors.white.withOpacity(0.4), width: 5)
                              ),
                                child: const Image(image: AssetImage('assets/images/register.png'),width: 50)),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('Register Your Account', style: TextStyle(
                              color: Colors.white,
                              fontSize: 12
                            ),
                            textAlign: TextAlign.center,)
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
                                      border: Border.all(color: Colors.white.withOpacity(0.4), width: 5)
                                  ),
                                  child: const Image(image: const AssetImage('assets/images/phonecall.png'), width: 50,)),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text('Apply for Dream Job', style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12
                              ),
                                textAlign: TextAlign.center,)
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
                                    border: Border.all(color: Colors.white.withOpacity(0.4), width: 5)
                                ),
                                child: const Image(image: AssetImage('assets/images/cv.png'), width: 50,)),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('Upload Your Resume', style: TextStyle(
                                color: Colors.white,
                                fontSize: 12
                            ),
                              textAlign: TextAlign.center,)
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
                      child: const Text('Choose Your Desire Category', style:
                        TextStyle(
                          color:  Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      ),),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 180,
                          padding: const EdgeInsets.all(6.0),
                          child: Card(
                            elevation: 2,
                            child:
                            Column(
                              children: const [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(image: AssetImage('assets/images/cv.png'), width: 80,),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Technical \n Support',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                ),
                                  textAlign: TextAlign.center,),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            )
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 180,
                          padding: const EdgeInsets.all(6.0),
                          child: Card(
                              elevation: 0,
                              child:
                              Column(
                                children: const [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(image: AssetImage('assets/images/cv.png'), width: 80,),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Business Development',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15
                                    ),
                                    textAlign: TextAlign.center,),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              )
                          ),
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
                              child:
                              Column(
                                children: const [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(image: AssetImage('assets/images/cv.png'), width: 80,),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Real Estate \n Business',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15
                                    ),
                                    textAlign: TextAlign.center,),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              )
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 180,
                          padding: const EdgeInsets.all(6.0),
                          child: Card(
                              elevation: 0,
                              child:
                              Column(
                                children: const [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(image: AssetImage('assets/images/cv.png'), width: 80,),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Share Market \n Analysis',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15
                                    ),
                                    textAlign: TextAlign.center,),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              )
                          ),
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
                              child:
                              Column(
                                children: const [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(image: AssetImage('assets/images/cv.png'), width: 80,),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Weather & \n Environment',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15
                                    ),
                                    textAlign: TextAlign.center,),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              )
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 180,
                          padding: const EdgeInsets.all(6.0),
                          child: Card(
                              elevation: 0,
                              child:
                              Column(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Image(image: AssetImage('assets/images/cv.png'), width: 80,),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Finance & \n Banking Service',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15
                                    ),
                                    textAlign: TextAlign.center,),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              )
                          ),
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
                              child:
                              Column(
                                children: const [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(image: AssetImage('assets/images/cv.png'), width: 80,),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('IT & Networking \n Services',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15
                                    ),
                                    textAlign: TextAlign.center,),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              )
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 180,
                          padding: const EdgeInsets.all(6.0),
                          child: Card(
                              elevation: 0,
                              child:
                              Column(
                                children: const [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(image: AssetImage('assets/images/cv.png'), width: 80,),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Restaurant \n Services',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15
                                    ),
                                    textAlign: TextAlign.center,),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              )
                          ),
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
                              child:
                              Column(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Image(image: AssetImage('assets/images/cv.png'), width: 80,),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Defence & Fire \n Service',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15
                                    ),
                                    textAlign: TextAlign.center,),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              )
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 180,
                          padding: const EdgeInsets.all(6.0),
                          child: Card(
                              elevation: 0,
                              child:
                              Column(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Image(image: AssetImage('assets/images/cv.png'), width: 80,),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Home Delivery \n Services',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15
                                    ),
                                    textAlign: TextAlign.center,),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),)
            ],
          ),
        ],
        ),
      ),
    );
  }
}
