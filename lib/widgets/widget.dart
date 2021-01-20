import 'package:flutter/material.dart';
import 'package:psnrz_app/screens/ImageView.dart';
import 'package:psnrz_app/widgets/DataStorage.dart';

Widget wallPaper(DataStorage dataStorage, BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.6,
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.all(4.0),
        mainAxisSpacing: 6.0,
        crossAxisSpacing: 6.0,
        children: dataStorage.imagesPath.map((imagePath) {
          int index = dataStorage.imagesPath.indexOf(imagePath);
          return GridTile(
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ImageView(
                              imgPath: imagePath,
                              title: dataStorage.imiona[index],
                              description: dataStorage.opisy[index],
                            )
                        )
                    );
                  },
                  child: Hero(
                    tag: imagePath,
                    child: Container(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child:  Image.network(
                            imagePath,
                            height: 50,
                            width: 100,
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                  )
              )
          );
        }).toList()),
  );
}