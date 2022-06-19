import 'package:flutter/material.dart';

class Blogs extends StatelessWidget {
  const Blogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Our Latest Blogs', style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20
        ),),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 460,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Stack(
                children: [
                  Image(image: const AssetImage('assets/images/gathering.png',),
                      height: 310,
                      width: double.infinity),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 40,
                    margin: EdgeInsets.only(top: 269),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.zero,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('21 May, 2020', style:
                      TextStyle(
                          color: Colors.green,
                          fontSize: 18),),
                    ),
                  )
                ],
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 0.3,

                      )]
                ),
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    Container(
                      margin: EdgeInsets.only(left: 18),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text('The next generation IT will change the world',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12,),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('assets/images/men1.jpeg')),
                                    shape: BoxShape.circle
                                ),
                              ),
                              SizedBox(width: 8),
                              Text('Aikin Ward', style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 16
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Text('Read More', style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 16

                              ),),
                              Icon(Icons.arrow_forward_ios,
                                color: Colors.green,
                                size: 14,)
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,)
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          height: 460,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Stack(
                children: [
                  Image(image: const AssetImage('assets/images/smiling.png',),
                      height: 310,
                      width: double.infinity),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 40,
                    margin: EdgeInsets.only(top: 269),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.zero,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('21 May, 2020', style:
                      TextStyle(
                          color: Colors.green,
                          fontSize: 18),),
                    ),
                  )
                ],
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 0.3,

                      )]
                ),
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    Container(
                      margin: EdgeInsets.only(left: 18),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text('It is the most important sector in the world',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12,),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('assets/images/men1.jpeg')),
                                    shape: BoxShape.circle
                                ),
                              ),
                              SizedBox(width: 8),
                              Text('Aikin Ward', style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 16
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Text('Read More', style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 16

                              ),),
                              Icon(Icons.arrow_forward_ios,
                                color: Colors.green,
                                size: 14,)
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,)
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          height: 460,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Stack(
                children: [
                  Image(image: const AssetImage('assets/images/jumping.png',),
                      height: 310,
                      width: double.infinity),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 40,
                    margin: EdgeInsets.only(top: 269),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.zero,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('21 May, 2020', style:
                      TextStyle(
                          color: Colors.green,
                          fontSize: 18),),
                    ),
                  )
                ],
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 0.3,

                      )]
                ),
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    Container(
                      margin: EdgeInsets.only(left: 18),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text('Nowadays IT is being most popular',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12,),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('assets/images/men1.jpeg')),
                                    shape: BoxShape.circle
                                ),
                              ),
                              SizedBox(width: 8),
                              Text('Aikin Ward', style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 16
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Text('Read More', style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 16

                              ),),
                              Icon(Icons.arrow_forward_ios,
                                color: Colors.green,
                                size: 14,)
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,)
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
