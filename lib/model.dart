class Model{
  int id=0;
  String name='';
  String title='';
  String urlToImage='';
  String publishedAt='';

  Model(this.title,this.id,this.urlToImage,this.name,this.publishedAt);
  Model.fromJson(Map<String,dynamic> map){
     id=map["articles"]["source"]["id"];
     name=map["articles"]["source"]["name"];
     title=map["articles"]["title"];
     urlToImage=map["articles"]["urlToImage"];
     publishedAt=map["articles"]["publishedAt"];

  }
}