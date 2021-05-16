import 'package:drive/home_screen/text_with_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'folder_card.dart';

class FolderList extends StatelessWidget {
  const FolderList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          margin: EdgeInsets.only(top: kDefaultPadding),
          padding: EdgeInsets.only(
              left: kDefaultPadding, right: kDefaultPadding, top: kDefaultPadding),
          color: Colors.white,
          child: Column(
            children: [
              TextWithIcon(),
              Expanded(
                child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: kDefaultPadding,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: List.generate(folderList.length, (index) {
                      Folder folder = folderList[index];
                      return Center(
                        child: FolderCard(
                          folderName: folder.folderName,
                          lastUpdate: folder.lastUpdate,
                          folderColor: folderColorPicker[index % 4],
                        ),
                      );
                    })),
              ),
            ],
          )),
    );
  }
}