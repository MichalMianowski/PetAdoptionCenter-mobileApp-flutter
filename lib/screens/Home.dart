import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:psnrz_app/widgets/widget.dart';
import 'package:psnrz_app/widgets/DataStorage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {

  CollectionReference dogsWaiting = FirebaseFirestore.instance.collection('psy_do_adopcji');

  DataStorage dataStorage = new DataStorage();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DataStorage>(
      future: getUrls(),
      builder: (context, AsyncSnapshot<DataStorage> snapshot) {

        if (snapshot.hasData) {
          return Scaffold(
            appBar: AppBar(
                backgroundColor: Color(0xff502419),
                centerTitle: true,
                title: Text(
                  "Psy do adopcji",
                  style: TextStyle(color: Color(0xfffdfffc) ,
                      fontFamily: 'Overpass',
                      fontSize: 20),
                ),
                elevation: 0.0
            ),
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    wallPaper(snapshot.data, context),
                    SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              ),
            ),
          );
        } else {
          return CircularProgressIndicator();
        }
      }
    );
  }
  Future<DataStorage> getUrls() async {
    int i=0;
      dogsWaiting.get().then((QuerySnapshot querySnapshot) => {
        querySnapshot.docs.forEach((doc) {
          i++;
          if(!dataStorage.imagesPath.contains(doc["url"])){
            dataStorage.imagesPath.add(doc["url"]);
            dataStorage.imiona.add(doc["imie"]);
            dataStorage.opisy.add(doc["opis"]);
          }
        })
      });
      print(i);
      return dataStorage;
    }
}