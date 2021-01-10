import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_keep/theme/colors.dart';

class CardDetailPage extends StatefulWidget {
  final String title;
  final String description;
  final List img;

  const CardDetailPage({Key key, this.title, this.description, this.img})
      : super(key: key);
  @override
  _CardDetailPageState createState() => _CardDetailPageState();
}

class _CardDetailPageState extends State<CardDetailPage> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _titleController.text = widget.title;
      _descriptionController.text = widget.description;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardColor,
      appBar: getAppBar(),
      body: getBody(),
      bottomSheet: getFooter(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      backgroundColor: cardColor,
      elevation: 0,
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
      actions: [
        IconButton(
          onPressed: null,
          icon: Icon(
            MaterialCommunityIcons.pin,
            color: white.withOpacity(0.7),
            size: 22,
          ),
        ),
        IconButton(
          onPressed: null,
          icon: Icon(
            MaterialIcons.notifications,
            color: white.withOpacity(0.7),
            size: 22,
          ),
        ),
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.archive,
            color: white.withOpacity(0.7),
            size: 22,
          ),
        )
      ],
    );
  }

  Widget getBody() {
    return ListView(
      padding: EdgeInsets.only(top: 25, right: 15, bottom: 25, left: 15),
      children: [
        TextField(
          controller: _titleController,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 22,
              color: white.withOpacity(0.8)),
          decoration: InputDecoration(border: InputBorder.none),
        ),
        TextField(
          maxLines: 10,
          controller: _descriptionController,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              height: 1.5,
              color: white.withOpacity(0.8)),
          decoration: InputDecoration(border: InputBorder.none),
        ),
        widget.img.length > 0
            ? Column(
                children: [
                  Row(
                      children: List.generate(widget.img.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: white.withOpacity(0.1)),
                            image: DecorationImage(
                                image: NetworkImage(widget.img[index]),
                                fit: BoxFit.cover)),
                      ),
                    );
                  }))
                ],
              )
            : Container()
      ],
    );
  }

  Widget getFooter() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 80,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: black.withOpacity(0.2), spreadRadius: 1, blurRadius: 3)
        ],
        color: cardColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25, right: 10, left: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: null,
              icon: Icon(
                AntDesign.plussquareo,
                size: 22,
                color: white.withOpacity(0.7),
              ),
            ),
            Text(
              "Edited Apr 3",
              style: TextStyle(fontSize: 12, color: white.withOpacity(0.7)),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(
                Octicons.kebab_vertical,
                size: 22,
                color: white.withOpacity(0.7),
              ),
            )
          ],
        ),
      ),
    );
  }
}
