import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyListTile extends StatefulWidget {

  @override
  State<MyListTile> createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {

bool checkbox1 = false;
  bool checkbox2 = false;
  bool checkbox3 = false;
   bool checkbox4 = false;
  bool checkbox5 = false;
  bool checkbox6 = false;
   bool checkbox7 = false;
  bool checkbox8 = false;
  bool checkbox9 = false;
   bool checkbox10 = false;
  bool checkbox11 = false;
  bool checkbox12 = false;
   bool checkbox13 = false;
  bool checkbox14 = false;
  bool checkbox15 = false;
 var height, width;
  @override
  Widget build(BuildContext context) {

   height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(toolbarHeight: 100,
      elevation: 0,
      backgroundColor: Color.fromARGB(255, 238, 232, 232),
      title: Text('Nursing Helper',
      style: TextStyle(
        fontSize: 22,
        color: Colors.black,
        fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: Builder(builder: (context) => IconButton(onPressed: () {
     Scaffold.of(context).openDrawer();
        }, icon: Icon(Icons.text_snippet_outlined,color: Colors.blue,) ),),
        ),
        drawer: Drawer(),
        body: Container(
          color: Color.fromARGB(255, 238, 232, 232),
          height: height,
          width: width,
          child: ListView(
              children: [
          Padding(padding: EdgeInsets.all(10)),
          
              Text('The following symptoms apply',style: 
              TextStyle(fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black),),  
              Padding(padding: EdgeInsets.only(bottom: 10,left: 20)),
              
              Container(
               height: 150,
                width: width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 165, 222, 167),
                  border: Border.all(color: Colors.black,
                  width: 2),
                  borderRadius: BorderRadius.circular(5)),
          margin: EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CheckboxListTile(
                title: Text('I have a cough'),
                value: checkbox1,
                onChanged: (value) {
                  setState(() {
                    checkbox1 = value!;
                  });
                },
                 activeColor: Colors.black,
                checkColor: Colors.white,
              ),
              CheckboxListTile(
                title: Text('Fever'),
                value: checkbox2,
                onChanged: (value) {
                  setState(() {
                    checkbox2 = value!;
                  });
                },
                 activeColor: Colors.black,
                checkColor: Colors.white,
              ),
              CheckboxListTile(
                title: Text('Joint, muscle pain',style: TextStyle(
                  color: Colors.black
                ),),
                value: checkbox3,
                onChanged: (value) {
                  setState(() {
                    checkbox3 = value!;
                  });
                },
                 activeColor: Colors.black,
                checkColor: Colors.white),],),),
               
              Container(
               height: 200,
                width: width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 165, 222, 167),
                  border: Border.all(color: Colors.black,
                   width: 2),
                  borderRadius: BorderRadius.circular(5)),
          margin: EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Bathing (Morning, noon, night)'),
              ),
              CheckboxListTile(
                title: Text('Bathing'),
                value: checkbox4,
                onChanged: (value) {
                  setState(() {
                    checkbox4 = value!;
                  });
                },
                 activeColor: Colors.black,
                checkColor: Colors.white,
              ),
              CheckboxListTile(
                title: Text('Bathing'),
                value: checkbox5,
                onChanged: (value) {
                  setState(() {
                    checkbox5 = value!;
                  });
                },
                 activeColor: Colors.black,
                checkColor: Colors.white,
              ),
              CheckboxListTile(
                title: Text('Bathing',
                style: TextStyle(
                  color: Colors.black
                ),),
                value: checkbox6,
                onChanged: (value) {
                  setState(() {
                    checkbox6 = value!;
                  });
                },
                 activeColor: Colors.black,
                checkColor: Colors.white),],),),
              
          Container(
               height: 60,
                width: width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 165, 222, 167),
                  border: Border.all(color: Colors.black,
                  width: 2),
                  borderRadius: BorderRadius.circular(5)),
          margin: EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CheckboxListTile(
                title: Text('Meal'),
                value: checkbox7,
                onChanged: (value) {
                  setState(() {
                    checkbox7 = value!;
                  });
                },
                 activeColor: Colors.black,
                checkColor: Colors.white,
              ),
              ],),),
               Container(
               height: 250,
                width: width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 165, 222, 167),
                  border: Border.all(color: Colors.black,
                  width: 2),
                  borderRadius: BorderRadius.circular(5)),
          margin: EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Number of times you urinate in the toilet'),
              ),
              CheckboxListTile(
                title: Text('0 times'),
                value: checkbox8,
                onChanged: (value) {
                  setState(() {
                    checkbox8 = value!;
                  });
                },
                 activeColor: Colors.black,
                checkColor: Colors.white,
              ),
              CheckboxListTile(
                title: Text('Once'),
                value: checkbox9,
                onChanged: (value) {
                  setState(() {
                    checkbox9 = value!;
                  });
                },
                 activeColor: Colors.black,
                checkColor: Colors.white,
              ),
              CheckboxListTile(
                title: Text('Twice',
                style: TextStyle(
                  color: Colors.black
                ),),
                value: checkbox10,
                onChanged: (value) {
                  setState(() {
                    checkbox10 = value!;
                  });
                },
                 activeColor: Colors.black,
                checkColor: Colors.white),
        
             CheckboxListTile(
                title: Text('Thrice',
                style: TextStyle(
                  color: Colors.black
                ),),
                value: checkbox11,
                onChanged: (value) {
                  setState(() {
                    checkbox11 = value!;
                  });
                },
                 activeColor: Colors.black,
                checkColor: Colors.white),],),),
        
               Container(
               height: 60,
                width: width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 165, 222, 167),
                  border: Border.all(color: Colors.black,
                  width: 2),
                  borderRadius: BorderRadius.circular(5)),
          margin: EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CheckboxListTile(
                title: Text('presence or absence of stool'),
                value: checkbox12,
                onChanged: (value) {
                  setState(() {
                    checkbox12 = value!;
                  });
                },
                 activeColor: Colors.black,
                checkColor: Colors.white,
              ),],),),
             
               Container(
               height: 200,
                width: width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 165, 222, 167),
                  border: Border.all(color: Colors.black,
                  width: 2),
                  borderRadius: BorderRadius.circular(5)),
          margin: EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Condition of stool'),
              ),
              CheckboxListTile(
                title: Text('Rolling mail'),
                value: checkbox13,
                onChanged: (value) {
                  setState(() {
                    checkbox13 = value!;
                  });
                },
                 activeColor: Colors.black,
                checkColor: Colors.white,
              ),
              CheckboxListTile(
                title: Text('Hard stool'),
                value: checkbox14,
                onChanged: (value) {
                  setState(() {
                    checkbox14 = value!;
                  });
                },
                 activeColor: Colors.black,
                checkColor: Colors.white,
              ),
              CheckboxListTile(
                title: Text('Ordinary stool',
                style: TextStyle(
                  color: Colors.black
                ),),
                value: checkbox15,
                onChanged: (value) {
                  setState(() {
                    checkbox15 = value!;
                  });
                },
                 activeColor: Colors.black,
                checkColor: Colors.white),],
                
                ),),    
              ],
              ),
             ),     
    );
  }
}
