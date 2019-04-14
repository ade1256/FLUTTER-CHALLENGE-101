class EmailItem {
  EmailItem({this.avatar,this.title,this.description,this.date,this.favorite});
  final String title,description,avatar;
  final DateTime date;
  bool favorite = false;
}