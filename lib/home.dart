import 'package:flutter/material.dart';
import 'package:wallet_app/page1.dart';

class home1 extends StatelessWidget {
  const home1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0410061),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 250,
            ),
            Center(
                child: Column(
              children: [
                Image(
                  width: 80,
                  height: 80,
                  image: AssetImage('images/logo.png'),
                  color: Color(0xff0ffc300),
                )
              ],
            )),
            SizedBox(
              height: 200,
            ),
            Container(
              width: 150,
              height: 40,
              decoration: BoxDecoration(
                  color: Color(0xff0FFC100),
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                  child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => home()));
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
