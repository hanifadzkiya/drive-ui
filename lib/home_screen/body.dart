import 'dart:ui';

import 'package:drive/constants.dart';
import 'package:drive/home_screen/search_field.dart';
import 'package:drive/home_screen/storage_info.dart';
import 'package:drive/home_screen/text_with_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';

import 'FolderList.dart';
import 'folder_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: [
          SearchField(),
          StorageInfo(),
          FolderList()
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: primaryColor,
        leading: Container(
          margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
        title: Text("My Drive",
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Color(0xFF21205A))),
        actions: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/img-1.jpg"),
              ))
        ]);
  }
}
