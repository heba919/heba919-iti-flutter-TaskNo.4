import 'package:flutter/material.dart';
import 'package:task4/RoomClass.dart';
import 'package:task4/RoomList.dart';

class RoomInformation extends StatelessWidget {
  int nme;
  RoomInformation( this.nme );

  Roomlist list = Roomlist();
  RoomInfo c = RoomInfo();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(list.roomlist[nme].name),
        leading:  IconButton( icon: Icon(Icons.arrow_back), onPressed: () {Navigator.pop(context); })
     ),



  body:
      Padding(
          padding: EdgeInsets.all(16.0),
        child:Column(
          children:[
        Image.network(list.roomlist[nme].img,width: 300,height: 300),
            SizedBox(
              height: 10,
            ),
         Container(
           margin: EdgeInsets.all(10.0),
           child:
             Text(c.roominfo[nme].name),
         ),
           SizedBox(
             height: 10,
           ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Rate:"),
                 SizedBox(
                   width: 20,
                 ),
                Text("${c.roominfo[nme].rate}"),
           ],
         )  ,
            SizedBox(
              height: 10,
            ),

            Text(c.roominfo[nme].moredesc),



    ]
    )

      )




        );




  }
}
