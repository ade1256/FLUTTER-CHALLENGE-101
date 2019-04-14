import 'package:day2_gmail_clone/data/class/email.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EmailListTile extends StatelessWidget {
  const EmailListTile({
    Key key,
    this.favoriteChanged,
    @required this.item,
  }) : super(key: key);

  final EmailItem item;
  final VoidCallback favoriteChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CircleAvatar(
              child: Text(item?.avatar ?? ""),
              radius: 25.0,
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    item?.title ?? "",
                    style: Theme.of(context)
                    .textTheme
                    .display1
                    .copyWith(
                      fontSize: 16.0,
                      color: Colors.grey, 
                    ),
                  ),
                  Text(
                    item?.description ?? "",
                    style: Theme.of(context)
                    .textTheme
                    .body1
                    .copyWith(
                      fontSize: 16.0,
                      color: Colors.grey, 
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Text(
                  DateFormat.jm().format(item?.date ?? DateTime.now()),
              ),
              IconButton(
                 icon: (item?.favorite ?? false)
                    ? Icon(Icons.star, color: Colors.amber)
                    : Icon(Icons.star_border),
                    onPressed: favoriteChanged,
              ),
            ],
          ),
        ],
      ),
    );
  }
}