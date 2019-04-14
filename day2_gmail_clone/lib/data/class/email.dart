class EmailItem {
  EmailItem({this.avatar,this.title,this.description,this.date,this.favourite});
  final String title,description,avatar;
  final DateTime date;
  bool favourite = false;
}