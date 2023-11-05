import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {

   MyApp({super.key});
                    
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int text=0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return MaterialApp(
      
      home: Scaffold(
        appBar: AppBar(title: const Text("Counter App"),
        backgroundColor: const Color.fromARGB(255, 201, 185, 203),
       centerTitle: true, 
        ),
        floatingActionButton: FloatingActionButton(
          
          backgroundColor: const Color.fromARGB(100, 240, 212, 245),
          onPressed: (){
            setState(() {
              text=0;
            });
            

        },
                child: const Icon(Icons.exposure_zero),

        ),
        body: Container(
          width: 500,
          height: 500,
        
       child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        
        children:[
         Container
(
  width: 200,
  height: 50,
  
         child:  const Text("This is first task and it's very simple,Just a counter.",
         
         style: TextStyle(
        fontSize: 15,
          fontWeight: FontWeight.w400,
          
         ),),

),
        
         Container(
          decoration: const BoxDecoration(
            color: Colors.white,
             borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(color:Color.fromARGB(99, 97, 37, 108),offset: Offset(1, 1), spreadRadius: 1,blurRadius: 10, )
            ] 
          ),


child: Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Text(text.toString()),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:[
    FloatingActionButton(
      backgroundColor: Color.fromARGB(255, 237, 225, 240),
      child: const Icon(Icons.minimize,color: Color.fromARGB(255, 178, 123, 188),),
      
      onPressed: (){
setState(() {
            text=text-1;
          });  
      }),
        FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 237, 225, 240),
      child: const Icon(Icons.add,color: Color.fromARGB(255, 178, 123, 188),),
          
          onPressed: (){
          setState(() {
            text=text+1;
          });  
          }),

      ],
    ),

],
),

        height: 300,
        width: 200,
        alignment: Alignment.center,
        margin: const EdgeInsets.all(0),
        padding: const EdgeInsets.all(20),
         
        
          ),

        ]
        ),
      ),
      ),
    );
      
    }
}

