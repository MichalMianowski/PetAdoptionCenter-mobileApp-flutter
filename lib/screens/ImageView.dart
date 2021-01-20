import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';


class ImageView extends StatefulWidget {
  final String imgPath;
  String title;
  String description;

  ImageView({@required this.imgPath, this.title, this.description});

  @override
  _ImageViewState createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: widget.imgPath,
            child: ListView(
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius:
                      BorderRadius.circular(15),
                    child: Image.network(widget.imgPath,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                ),
                Container(
                  child: Text(widget.title,
                    style: GoogleFonts.mali(
                      fontSize: 40.0,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0xff502419),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                    margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                ),
                Container(
                  child: Text(widget.description.replaceAll('\\n', '\n'),
                    style: GoogleFonts.andada(
                      fontSize: 18.0,
                    ),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                ),
                Container(
                  child: Text('Myślisz o adopcji?',
                    style: GoogleFonts.andada(
                    fontSize: 32.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color(0xff502419),
                  borderRadius: BorderRadius.circular(20.0),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 13),
                  ),
                Container(
                  child: Text('Skontaktuj się z nami:\ntel:  698940045\nemail:   adopcje@psnrz.org.pl',
                    style: GoogleFonts.andada(
                      fontSize: 20.0,
                    ),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                ),
                InkWell(
                  child: Container(
                      child: Text('Zapytaj o fomularz adopcyjny',
                      style: GoogleFonts.andada(
                      fontSize: 28.0,
                      color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Color(0xff502419),
                      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      margin: EdgeInsets.only(top: 18.0, left: 10, right: 10),
                      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 13),
                      ),
                  // onTap: _launchURL,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// _launchURL() async {
//   const url = 'https://google.com';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }


