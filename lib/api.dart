import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled3/model.dart';
 class API{
    Future <List<Model>?> fetchNews() async{
     http.Response response=await http.get(Uri.parse('https://newsapi.org/v2/everything?q=tesla&from=2022-01-16&sortBy=publishedAt&apiKey=99794050b8c048caa83250c30445b971'));
       if(response.statusCode==200){
         var body=jsonDecode(response.body);
        List<Model> news=[];
        for (var item in body){
         news.add(Model.fromJson(item));
        }
        return news;
       }
       return null;
    }
}