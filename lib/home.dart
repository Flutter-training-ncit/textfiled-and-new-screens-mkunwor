

import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({ Key? key }) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
    
    appBar: AppBar(
  backgroundColor: Colors.purple,
    centerTitle:true,
      title: Text('Home'),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon:Icon(Icons.arrow_back_ios)),
       



       
    ),
   body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,childAspectRatio:0.5), itemCount: 10,
  itemBuilder: (ctx, index){
       
     return   Container(
          color: Colors.purple,
          margin: EdgeInsets.all(5),
          child:Text(index.toString(),
          style:TextStyle(
            fontSize:30,
            color:Colors.white,
            fontWeight:FontWeight.bold
          )
        )
        );    

       }

      
    )
    );


  }
}