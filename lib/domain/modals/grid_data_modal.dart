class GridData{
    int? id;
    String? url;
    String? title;
    String? description;

    GridData({this.id,this.url,this.title,this.description});

    GridData.fromJson(Map<String,dynamic> json){
      id  :  json['id'];
      url :  json['url'];
      title  :  json['title'];
      description :  json['description'];
    }
}