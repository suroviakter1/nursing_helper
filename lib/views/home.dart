import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/dashboard.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Padding(padding: EdgeInsets.all(20),
            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3xi83KuFSyqx7m3e5OLmrfJfwwpYxQp5K1w&usqp=CAU'),),
            Padding(padding: EdgeInsets.all(20),
            child: Text('Welcome',
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
      
             Padding(padding: EdgeInsets.all(20),
            child: TextField(decoration: InputDecoration(
                border: OutlineInputBorder(),
                icon: Icon(Icons.person),
                labelText: 'Username or Email', enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 10, 10, 10),))),
            ),),
                  Padding(padding: EdgeInsets.all(20),
            child: TextField(decoration: InputDecoration(fillColor: Color(0),
                border: OutlineInputBorder(),
                icon: Icon(Icons.password),
                labelText: 'Password',
                errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 11, 11, 11),))),),),
                Padding(padding: EdgeInsets.all(20),
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) =>DashBoard(),) );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 165, 222, 167),
            foregroundColor:Colors.black),
             child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Log In'),
              ],
            ),
            ),),
           
            Text('Dont have an account ?'),
              Padding(padding: EdgeInsets.all(20),
           child: TextButton (onPressed: () { },
           child: Text('Sign Up'),
            )
            ),
            ],     
        ),
      ),
    );
  }
}