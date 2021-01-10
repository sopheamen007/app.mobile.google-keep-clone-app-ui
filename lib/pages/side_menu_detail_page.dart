import 'package:flutter/material.dart';
import 'package:google_keep/theme/colors.dart';

class SideMenuDetailPage extends StatefulWidget {
  final String title;

  const SideMenuDetailPage({Key key, this.title}) : super(key: key);
  @override
  _SideMenuDetailPageState createState() => _SideMenuDetailPageState();
}

class _SideMenuDetailPageState extends State<SideMenuDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardColor,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: cardColor,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios,
          size: 22,
          color: white.withOpacity(0.7),
        ),
      ),
    );
  }

  Widget getBody() {
    return Center(
      child: Text(
        widget.title,
        style: TextStyle(fontSize: 18, color: white.withOpacity(0.7)),
      ),
    );
  }
}
