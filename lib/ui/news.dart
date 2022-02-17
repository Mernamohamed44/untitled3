import 'package:flutter/material.dart';
import '../api.dart';
class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    API api =API();
    return FutureBuilder(
      future: api.fetchNews(),
        builder:(context,snapshot){
        var news =snapshot.data as List?;
        return ListView.builder(
            itemBuilder: (context,index){
         return Row(
           children: [
            Text(news![index].title)
           ],
         );
        });
        } );
  }
}
