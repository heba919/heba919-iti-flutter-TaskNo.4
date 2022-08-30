import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task4/CustomList.dart';
import 'package:task4/RoomList.dart';



class RoomScreen extends StatelessWidget {
@override
  Widget build(BuildContext context) {

  Roomlist room = Roomlist() ;

  return Container(

  child:ListView.builder(
   itemCount: 3,
  itemBuilder: (BuildContext context, int index) {
  List<CustomList> generate = room.roomlist.map((item) => CustomList( item , index)).toList();
  return  generate[index];


}

  )

  );







  }


}


