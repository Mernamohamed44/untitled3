import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../api.dart';
import '../model.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    API api =API();
    return FutureBuilder(
        future: api.fetchNews(),
        builder:(context,snapshot){
       var  news =  (snapshot.data as List <Model> );
          return ListView.builder(
              itemBuilder: (context,index){
                return Row(
                  children: [
                    Text(news[index].title)
                  ],
                );
              });
        } );
  }
}
