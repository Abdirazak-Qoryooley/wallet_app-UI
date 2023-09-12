import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/home.dart';
import 'package:wallet_app/my_cards.dart';
import 'package:wallet_app/profile.dart';

void main() {
  runApp(MaterialApp(
    home: home(),
  ));
}

class home extends StatelessWidget {
  // pagecontroller

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff0510079),
        child: Icon(Icons.person),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  color: Colors.grey[800],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 60.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: Colors.grey[800],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 10,
                    // color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Icon(
                                Icons.menu,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => profile()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Material(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  'images/5.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 210.0),
                        child: Text(
                          'Hello Bocor',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Good Evening',
                        style: TextStyle(fontSize: 22, color: Colors.black45),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 22.0),
                        child: Text(
                          'My Cards',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Text(
                          'Add new card',
                          style: TextStyle(fontSize: 18, color: Colors.black45),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 240,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        controller: _controller,
                        children: [
                          mycard(
                            balance: 85451.00,
                            cardnumber: 38992299,
                            expirysmonth: 22,
                            expiryyear: 21,
                            color: Color(0xff0510079),
                          ),
                          mycard(
                            balance: 51952.00,
                            cardnumber: 57992239,
                            expirysmonth: 28,
                            expiryyear: 21,
                            color: Colors.black,
                          ),
                          mycard(
                            balance: 96651.00,
                            cardnumber: 1293229,
                            expirysmonth: 11,
                            expiryyear: 21,
                            color: Colors.green,
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SmoothPageIndicator(controller: _controller, count: 3),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Recent transactions',
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text(
                          'View all',
                          style: TextStyle(fontSize: 18, color: Colors.black38),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 330.0),
                    child: Text(
                      'Today',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, top: 15),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color(0xff0F0D3C6),
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Image.asset(
                            'images/apple.png',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fruit and vegetables',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                            Text(
                              'Orange and vegetables',
                              style: TextStyle(color: Colors.black38),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '-\$19.00',
                              style: TextStyle(
                                  fontSize: 16.5, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                'June 23',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black45),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 15),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xff0DBEAEA),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image(
                        width: 30,
                        height: 30,
                        image: AssetImage('images/airplane.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Air ticket',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5),
                        ),
                        Text(
                          'Mogadishu to malaysia',
                          style: TextStyle(color: Colors.black38),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '-\$248.00',
                          style: TextStyle(
                              fontSize: 16.5, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 22.0),
                          child: Text(
                            'June 23',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black45),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 15),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xff0bbd0ff),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset('images/medicine.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Apollo hospital',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5),
                        ),
                        Text(
                          'Regular checkup',
                          style: TextStyle(color: Colors.black38),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '-\$15.00',
                          style: TextStyle(
                              fontSize: 16.5, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            'June 22',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black45),
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
      ),
    );
  }
}
