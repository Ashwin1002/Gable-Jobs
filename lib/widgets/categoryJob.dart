import 'package:flutter/material.dart';

class JobCategory extends StatelessWidget {
  const JobCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                            padding: EdgeInsets.all(8.0),
                            child: Image(
                              image: AssetImage(
                                  'assets/logos/wheel.png'),
                              width: 130,
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
                                  'assets/logos/stack.png'),
                              width: 130,
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
                            padding: EdgeInsets.all(8.0),
                            child: Image(
                              image: AssetImage(
                                  'assets/logos/home.png'),
                              width: 130,
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
                                  'assets/logos/search.png'),
                              width: 130,
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
                            padding: EdgeInsets.all(8.0),
                            child: Image(
                              image: AssetImage(
                                  'assets/logos/light.png'),
                              width: 130,
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
                                  'assets/logos/handmoney.png'),
                              width: 130,
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
                                  'assets/logos/atom.png'),
                              width: 130,
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
                                  'assets/logos/dish.png'),
                              width: 130,
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
                                  'assets/logos/fire.png'),
                              width: 130,
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
                                  'assets/logos/truck.png'),
                              width: 130,
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
    );
  }
}
