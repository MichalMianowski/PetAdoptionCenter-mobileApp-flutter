import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psnrz_app/screens/Home.dart';
import 'dart:ui';
import 'package:psnrz_app/screens/Home.dart';

class StartPage extends StatefulWidget {
  StartPage({Key key}) : super(key: key);
  @override
  _MyStartPageState createState() => _MyStartPageState();
}

class _MyStartPageState extends State<StartPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: Text('Pruszkowski punkt adopcyjny',
                      style: TextStyle(
                        fontSize: 28.0,
                        color: Color(0xff502419),
                      ),
                    ),
                    margin: EdgeInsets.only(left: 25, right: 10),
                    //   padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 13),
                    )
                ),
                Expanded(
                  child: Container(
                    child: Image(
                      image: AssetImage('assets/graphics/logo.png'),
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topRight,
                    ),
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  ),
                ),
              ],
            ),

            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => HomePage()
                  )
                  );
                },
              child: Container(
                child: Image(
                  image: AssetImage('assets/graphics/paw.png'),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topRight,
                ),
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              ),
            ),
            GestureDetector(
            onTap: (){
                Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => HomePage()
                )
                );
              },
            child: Container(
              child: Text('Poznaj naszych podopiecznych!',
                style: TextStyle(
                  fontSize: 28.0,
                  color: Color(0xff502419),
                ),
                textAlign: TextAlign.center,
              ),
            )
            ),
          ],
        ),
    );
  }
}