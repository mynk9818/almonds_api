import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var jsonList;
  @override 
  void initState() { 
    getData(); 
  } 
  
  void getData() async { 
    try { 
      var response = await Dio() 
          .get('https://jsonplaceholder.typicode.com/posts'); 
      if (response.statusCode == 200) { 
    
      } else { 
        print(response.statusCode); 
      } 
    } 
    } 
  } 

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
