import 'package:flutter/material.dart';
import 'package:textfield_demo/home.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(home: SignupPage()));
}

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Facebook',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.purple[700],
        elevation: 0,
        leading:
 Icon(
            Icons.facebook_sharp,
            color: Colors.white,
            size: 40,
       
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter your password',
                ),
              ),
            ),
            ElevatedButton(onPressed: (){

       Navigator.push(context,
  CupertinoPageRoute (builder:(context){
   return homepage();
 }),
 );


            },
             style: ElevatedButton.styleFrom(
              primary: Colors.purple,
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          //  enabledMouseCursor: MouseCursor(
             

          //  ),
           

             ),
            

             child: Text('Sign Up'),
            
            )

          ],
        ),
      ),
    );
  }
}
