import 'package:flutter/material.dart';
import 'package:google_keep/json/sidemenu_icon_json.dart';
import 'package:google_keep/pages/home_page.dart';
import 'package:google_keep/pages/side_menu_detail_page.dart';
import 'package:google_keep/theme/colors.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SideMenu extends StatefulWidget {
  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(color: cardColor),
        child: ListView(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: white.withOpacity(0.1)))),
              child: DrawerHeader(
                padding: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 30),
                  child: Text(
                    "Google Keep",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: white),
                  ),
                ),
              ),
            ),
            getSectionOne(),
            getSectionTwo(),
            getSectionThree(),
            getSectionFour(),
          ],
        ),
      ),
    );
  }

  Widget getSectionOne() {
    return Column(
      children: [
        Column(
          children: List.generate(2, (index) {
            return FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                if (index == 0) {
                  Navigator.pop(context);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                } else {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => SideMenuDetailPage(
                                title: sideMenuItem[index]['text'],
                              )));
                }
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 25, left: 25),
                child: Row(
                  children: [
                    Icon(
                      sideMenuItem[index]['icon'],
                      size: 22,
                      color: white.withOpacity(0.7),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      sideMenuItem[index]['text'],
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: white.withOpacity(0.7)),
                    )
                  ],
                ),
              ),
            );
          }),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 75),
          child: Divider(
            thickness: 1,
            color: white.withOpacity(0.1),
          ),
        )
      ],
    );
  }

  Widget getSectionTwo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 15),
          child: Text(
            "LABELS",
            style: TextStyle(fontSize: 12, color: white.withOpacity(0.7)),
          ),
        ),
        Column(
          children: List.generate(5, (index) {
            return FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => SideMenuDetailPage(
                              title: sideMenuItem[index + 2]['text'],
                            )));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 25, left: 25),
                child: Row(
                  children: [
                    Icon(
                      sideMenuItem[index + 2]['icon'],
                      size: 22,
                      color: white.withOpacity(0.7),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      sideMenuItem[index + 2]['text'],
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: white.withOpacity(0.7)),
                    )
                  ],
                ),
              ),
            );
          }),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 75),
          child: Divider(
            thickness: 1,
            color: white.withOpacity(0.1),
          ),
        )
      ],
    );
  }

  Widget getSectionThree() {
    return Column(
      children: [
        Column(
          children: List.generate(2, (index) {
            return FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => SideMenuDetailPage(
                              title: sideMenuItem[index + 7]['text'],
                            )));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 25, left: 25),
                child: Row(
                  children: [
                    Icon(
                      sideMenuItem[index + 7]['icon'],
                      size: 22,
                      color: white.withOpacity(0.7),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      sideMenuItem[index + 7]['text'],
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: white.withOpacity(0.7)),
                    )
                  ],
                ),
              ),
            );
          }),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 75),
          child: Divider(
            thickness: 1,
            color: white.withOpacity(0.1),
          ),
        )
      ],
    );
  }

  Widget getSectionFour() {
    return Column(
      children: [
        Column(
          children: List.generate(3, (index) {
            return FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => SideMenuDetailPage(
                              title: sideMenuItem[index + 9]['text'],
                            )));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 25, left: 25),
                child: Row(
                  children: [
                    Icon(
                      sideMenuItem[index + 9]['icon'],
                      size: 22,
                      color: white.withOpacity(0.7),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      sideMenuItem[index + 9]['text'],
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: white.withOpacity(0.7)),
                    )
                  ],
                ),
              ),
            );
          }),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
