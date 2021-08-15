import 'package:flutter/material.dart';
import 'package:e_commerce/packages/flutter/src/gestures/binding.dart';

class Todo extends StatefulWidget {
  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  
      
  TextEditingController nameController = TextEditingController();

  List<dynamic> lst =  [1];
  var output = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold
    
    (
      body:
           Column(
            children: [
                    Container(
                        child: TextField(  decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Todo',  
                          
                           ),
                           onChanged: (value){
                             output = value;
                           
                           },
                      )),
                   Container(
                child: RaisedButton(child: Text("Add todo"), onPressed: (){
                      setState((){
                           lst.add(output);
                         });
                         print(lst);
             
                     Expanded(child:  ListView.builder(
                        itemCount: lst.length,
                         itemBuilder: (BuildContext context, int index){
      
                          return 
                   Container(
                height: 50,
                color: Colors.orange,
                margin: EdgeInsets.only(top:15),
                 child: Center(
                    child: Text('${lst[index]}'),
                     
                    ));

                   
                 
                 
                }, )
              );


                        
                }))],
          
        
      ),
     
     
    )
    );
  }
}

        

      
        