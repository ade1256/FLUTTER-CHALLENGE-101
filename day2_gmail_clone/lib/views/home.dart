import 'package:day2_gmail_clone/data/class/email.dart';
import 'package:day2_gmail_clone/views/app/app.drawer.dart';
import 'package:day2_gmail_clone/views/common/email_fab.dart';
import 'package:day2_gmail_clone/views/common/email_tile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_scaffold/responsive_scaffold.dart';
import 'package:floating_search_bar/floating_search_bar.dart';
import 'package:day2_gmail_clone/data/dummy_data_email.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<EmailItem> _emails = [];
  @override
  void initState() {
    // TODO: implement initState
    _emails = emails;
    super.initState();
  }

  final Size _tabletBreakpoint = Size(510.0,510.0);

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaffold.builder(
      itemCount: _emails?.length ?? 0,
      itemBuilder: (BuildContext context, int index){
        return EmailListTile(
          item: _emails[index],
          favoriteChanged: () {
            _emails[index].favorite = !_emails[index].favorite;
          });
      },
      detailBuilder: (BuildContext context, int index, bool tablet){
        return DetailsScreen(
          appBar: AppBar(
            title: Text("Details"),
          ),
          body: Placeholder(),
        );
      },
      floatingActionButton: EmailFAB(),
      drawer: AppDrawer(),
      slivers: <Widget>[
        SliverFloatingBar(
          title: TextField(
            decoration: InputDecoration.collapsed(
              hintText: "Cari pesan",
            ),
          ),
          trailing: CircleAvatar(
            child: Text("AP"),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.all(12.0),
            child: Text("All inboxes"),
          ),
        ),
      ],
    );
  }
}