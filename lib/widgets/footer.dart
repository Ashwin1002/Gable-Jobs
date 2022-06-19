import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          color: Colors.green,
          padding: EdgeInsets.only(left: 12),
          margin: EdgeInsets.only(top: 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              Align(
                  alignment: Alignment.topLeft,
                  child: Image(image: AssetImage('assets/logos/gable.png'), width: 80, height: 70,)),
              SizedBox(height: 10,),
              Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),),
              SizedBox(height: 5,),
              Align(alignment: Alignment.topLeft, child: Image(image: AssetImage('assets/logos/social.png'), height: 60,)),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Category', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),),
              ),
              SizedBox(height: 8,),
              Stack(
                children: [
                  Divider(color: Colors.white),
                  Divider(color: Colors.white, endIndent: 380,
                    thickness: 3.5,),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 14,),
                  SizedBox(width: 5,),
                  Text('Development', style: TextStyle(color: Colors.white, fontSize: 16),),
                ],
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 14,),
                  SizedBox(width: 5,),
                  Text('Business', style: TextStyle(color: Colors.white, fontSize: 16),),
                ],
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 14,),
                  SizedBox(width: 5,),
                  Text('Tech & IT', style: TextStyle(color: Colors.white, fontSize: 16),),
                ],
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 14,),
                  SizedBox(width: 5,),
                  Text('Finance', style: TextStyle(color: Colors.white, fontSize: 16),),
                ],
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 14,),
                  SizedBox(width: 5,),
                  Text('Networking', style: TextStyle(color: Colors.white, fontSize: 16),),
                ],
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Quick Links', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),),
              ),
              SizedBox(height: 8,),
              Stack(
                children: [
                  Divider(color: Colors.white),
                  Divider(color: Colors.white, endIndent: 380,
                    thickness: 3.5,),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 14,),
                  SizedBox(width: 5,),
                  Text('Home', style: TextStyle(color: Colors.white, fontSize: 16),),
                ],
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 14,),
                  SizedBox(width: 5,),
                  Text('About Us', style: TextStyle(color: Colors.white, fontSize: 16),),
                ],
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 14,),
                  SizedBox(width: 5,),
                  Text('Blogs', style: TextStyle(color: Colors.white, fontSize: 16),),
                ],
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 14,),
                  SizedBox(width: 5,),
                  Text('Companies', style: TextStyle(color: Colors.white, fontSize: 16),),
                ],
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 14,),
                  SizedBox(width: 5,),
                  Text('Testimonials', style: TextStyle(color: Colors.white, fontSize: 16),),
                ],
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Find Us', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),),
              ),
              SizedBox(height: 8,),
              Stack(
                children: [
                  Divider(color: Colors.white),
                  Divider(color: Colors.white, endIndent: 380,
                    thickness: 3.5,),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(Icons.location_on, color: Colors.white, size: 20,),
                  SizedBox(width: 5,),
                  Text('28/A Street, New York City', style: TextStyle(color: Colors.white, fontSize: 16),),
                ],
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Icon(Icons.call, color: Colors.white, size: 20,),
                  SizedBox(width: 5,),
                  Text('+88 0123 456 789', style: TextStyle(color: Colors.white, fontSize: 16),),
                ],
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Text('@', style: TextStyle(color: Colors.white, fontSize: 20),),
                  SizedBox(width: 5,),
                  Text('hello@gable.com', style: TextStyle(color: Colors.white, fontSize: 16),),
                ],
              ),
              SizedBox(height: 30,),
              Divider(color: Colors.white, endIndent: 10,),
              SizedBox(height: 10,),
              Text('Copyright © 2022 Gable. Designed By HiBootstrap \n Terms & Conditions \- Privacy Policy', style: TextStyle(
                color: Colors.white, fontSize: 14,
              ),
                textAlign: TextAlign.center,),
              SizedBox(height: 15,)

            ],
          ),
        ),
        Container(
          height: 100, width: double.infinity,
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3)
          ),),
        Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 150,
            margin: EdgeInsets.only(top: 30, left: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.zero,
                boxShadow: [BoxShadow(
                    color: Colors.grey.shade100,
                    blurRadius: 1,
                    spreadRadius: 1,
                    offset: Offset(1, 0)
                )]
            ),
            child:
            Stack(
              children: [
                Row(
                  children: [
                    Container(
                      width: 85,
                      height:60,
                      margin: EdgeInsets.only(top: 10, right: 10),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/logos/money.gif'),
                              colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.5), BlendMode.modulate,)
                          )
                      ),
                    ),
                    Container(
                      width: 90,
                      height:65,
                      margin: EdgeInsets.only(left:80, bottom: 40),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/logos/money.gif'),
                              colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.5), BlendMode.modulate,)
                          )
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top:20),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text('Subscrible Newsletter', style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
                Container(
                  height: 50,
                  width: 380,
                  margin: EdgeInsets.only(top: 80, left: 15),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 260,
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.green,
                                    width: 1.0
                                ),
                                borderRadius: BorderRadius.zero
                            ),
                            labelStyle: TextStyle(
                                color: Colors.black
                            ),
                            border: OutlineInputBorder(borderRadius: BorderRadius.zero),
                            labelText: 'Enter Your Email',

                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 95,
                        decoration: BoxDecoration(
                            color: Colors.green
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child: Text('Subscribe', style: TextStyle(
                              color: Colors.white,
                            ),)),
                      )
                    ],
                  ),
                )
              ],
            )
        ),
      ],
    );
  }
}
