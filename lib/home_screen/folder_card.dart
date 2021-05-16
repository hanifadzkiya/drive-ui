import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constants.dart';

class FolderCard extends StatelessWidget {
  const FolderCard({
    Key? key, required this.folderName, required this.lastUpdate, required this.folderColor,
  }) : super(key: key);

  final String folderName;
  final DateTime lastUpdate;
  final FolderColor folderColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: (size.width - (kDefaultPadding * 3)) / 2,
      height: 125,
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
          color: Color(folderColor.background),
          borderRadius: BorderRadius.circular(kDefaultPadding * 0.8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.folder,
                color: Color(folderColor.item),
                size: kDefaultPadding * 2,
              ),
              Icon(
                Icons.more_vert,
                color: Color(folderColor.item),
                size: kDefaultPadding * 2,
              )
            ],
          ),
          Text(
            folderName,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                fontWeight: FontWeight.bold, color: Color(folderColor.item)),
          ),
          Text(
            DateFormat("dd MMM yyyy").format(lastUpdate),
            style: Theme.of(context)
                .textTheme
                .caption
                ?.copyWith(color: Color(folderColor.item)),
          ),
        ],
      ),
    );
  }
}
