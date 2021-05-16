import 'package:flutter/material.dart';

const primaryColor = Color(0xFFe5ecf7);
const brandPrimaryColor = Color(0xFF4378DB);
const brandPrimaryColor2 = Color(0xFF405DB5);
const textColor3 = Color(0xFF7C809E);
const textColor2 = Color(0x21205A);
const kDefaultPadding = 20.0;

class FolderColor {
  const FolderColor({required this.background, required this.item});
  final int background;
  final int item;
}

const folderColor1 = FolderColor(background: 0xFFe1e9f9, item: 0xFF4378DB);
const folderColor2 = FolderColor(background: 0xFFfde4e4, item: 0xFFf35555);
const folderColor3 = FolderColor(background: 0xFFfdf1d9, item: 0xFFfdcd55);
const folderColor4 = FolderColor(background: 0xFFddf0e6, item: 0xFF28a164);

const folderColorPicker = [folderColor1, folderColor2, folderColor3, folderColor4];

class Folder {
  final DateTime lastUpdate;
  final String folderName;

  Folder({required this.lastUpdate, required this.folderName});
}

var folderList = [
  Folder(
    folderName: "Web Design",
    lastUpdate: DateTime.parse("2021-01-01")
  ),
  Folder(
      folderName: "App Design",
      lastUpdate: DateTime.parse("2021-01-01")
  ),
  Folder(
      folderName: "System Design",
      lastUpdate: DateTime.parse("2021-01-01")
  ),
  Folder(
      folderName: "Architecture Design",
      lastUpdate: DateTime.parse("2021-01-01")
  ),
  Folder(
      folderName: "Illustrator",
      lastUpdate: DateTime.parse("2021-01-01")
  ),
  Folder(
      folderName: "UI / UX",
      lastUpdate: DateTime.parse("2021-01-01")
  ),
];