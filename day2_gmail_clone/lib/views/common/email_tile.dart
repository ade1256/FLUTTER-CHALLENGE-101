import 'package:day2_gmail_clone/data/class/email.dart';
import 'package:flutter/material.dart';

class EmailListTile extends StatelessWidget {
  EmailListTile({
    this.item,
    @required this.favoriteChanged,
  });
  final EmailItem item;
  final VoidCallback favoriteChanged;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(item?.title??"Tidak ada"),
    );
  }
}