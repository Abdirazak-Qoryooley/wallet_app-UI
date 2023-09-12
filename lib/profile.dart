import 'package:flutter/material.dart';
import 'package:wallet_app/home.dart';
import 'package:wallet_app/page1.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

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
          color: Colors.deepPurple[300],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: IconButton(
                  onPressed: () {},
                  icon: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => home()));
                    },
                    child: Icon(
                      Icons.home,
                      color: Colors.grey[800],
                    ),
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
                            padding: const EdgeInsets.all(12.0),
                            child: Icon(
                              Icons.menu,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Icon(Icons.search),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/5.png',
                        width: 80,
                        height: 80,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bocor cade',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Bocorow@gmail.com',
                              style: TextStyle(
                                  fontSize: 14,
                                  letterSpacing: 1,
                                  color: Colors.black45),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      width: 150,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color(0xff0510079),
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(12),
                            width: 35,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Color(0xff0F44A03),
                                borderRadius: BorderRadius.circular(8)),
                            child: Icon(
                              Icons.arrow_upward,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 13.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Incomes',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white54),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '\$3541.00',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 50),
                          width: 150,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color(0xff0710074),
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.all(12),
                                width: 35,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Color(0xff0F44A03),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Icon(
                                  Icons.arrow_downward,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 13.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Spendings',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white54),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '\$7814.00',
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.white),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        'Security',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30, top: 15),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xff0AFDDD2),
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              'images/reload.png',
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 8),
                          child: Text(
                            'Recovery phrase',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 15),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xff0F59A76),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          'images/bell.png',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 8),
                      child: Text(
                        'Notification',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 15),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xff095BAD3),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          'images/shield.png',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 8),
                      child: Text(
                        'Privacy',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 15),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xff0955293),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          'images/lock.png',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 8),
                      child: Text(
                        'App lock',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
