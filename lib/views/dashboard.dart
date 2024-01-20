import "package:flutter/material.dart";

import "../models/listtile_divide_column.dart";

class DashBoard extends StatefulWidget {

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  var height, width;

  List imgData =[
    'https://cdn0.iconfinder.com/data/icons/approved-check-mark/48/81-512.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqKf7p6az5_A2YCPpIdOqgmk9W3bypBnFSig&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHuOCqXocik1MkT3iY5NnQaheYvm_vm4nuOw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4mXpnJPJQSDzATjG77KvmaLdFpMEjOq4XFQ&usqp=CAU'
  ];

  List titles = [
    'Check sheet',
    'Schedule',
    'Chat',
    'Buletin board'
  ];
  bool showGradient = false;

  @override
  Widget build(BuildContext context) {

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
       body: Container(
        color: const Color.fromARGB(255, 238, 232, 232),
        height: height,
        width: width,
         child: Column(
           children: [
             Container(
               decoration: BoxDecoration(),
             height: height * 0.20,
             width: width,
             padding: EdgeInsets.only(top: 30,left: 15,right: 15),
             child: Column(
              children: [
                Text('Nursing Helper',style: TextStyle(
                  fontSize: 30,fontWeight: FontWeight.w500,
                  color: Colors.black
                ),)
              ],
             ),
             ),
             Container(
               decoration: BoxDecoration(
                gradient: showGradient ? const LinearGradient(
                  colors: [Colors.blue, Colors.orange]) : null,
                 color: Color.fromARGB(255, 142, 206, 144),
                 borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                 )
               ),
             height: height * 0.80,
             width: width,
             padding: EdgeInsets.all(60),
             child: GridView.builder(gridDelegate: 
             SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.1,
              mainAxisSpacing: 18,
              crossAxisSpacing: 30),
              shrinkWrap: true,
             physics: NeverScrollableScrollPhysics(),
             itemCount: imgData.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute
                (builder: (context) =>MyListTile(),),);
              },
              child:Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10, horizontal: 10
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromARGB(255, 229, 225, 225),
                  boxShadow: [
                    BoxShadow(color: Colors.black,
                    spreadRadius: 2)
                  ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(imgData[index],
                    width: 80
                    ),
                    Text(titles[index],
                    style: TextStyle(fontSize: 18,
                    fontWeight: FontWeight.bold),),
                  ],
                ),
              ) ,
            );
           },   
          ),
         ),
        ], 
       ),
      ),
    );
  }
}