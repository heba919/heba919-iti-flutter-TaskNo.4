import 'package:flutter/material.dart';
import 'package:task4/RoomClass.dart';
import 'package:task4/RoomInformation.dart';
// ignore: must_be_immutable
class CustomList extends StatelessWidget {
  Roomclass clas;
  int count;
  CustomList(this.clas , this.count);

 //const CustomCard({Key? key}) : super(key: key);\
  // navigator / image / title / desc /

  @override
  Widget build(BuildContext context) {
    return InkWell(

        //         builder: ((context) => CategoryMealsScreen(category: item))));
      onTap: (){
        Navigator.push(context,
        MaterialPageRoute(
            builder: ((context) => RoomInformation(count))));
      },
        child: Card(
          elevation: 8,
                shadowColor: const Color(0xff2da9ef),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Image.network(clas.img,width: 50,height: 50),
                  title: Text(clas.name),
                  subtitle: Text(clas.describtion),
                ),

          ]
        )

    ));

  }
}

