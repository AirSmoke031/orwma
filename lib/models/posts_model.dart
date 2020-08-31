class Posts{
  String id;
  String name;
  String imageUrl;
  String winRate;
  String attribute;

Posts({this.id,this.name,this.imageUrl,this.winRate,this.attribute});
factory Posts.fromMap(Map value){
  return Posts(
    id: value['id'],
    name: value['name'],
    imageUrl: value['imageUrl'],
    winRate: value['winRate'],
    attribute: value['attribute'],
  );
}



}