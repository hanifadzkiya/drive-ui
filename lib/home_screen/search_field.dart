import 'package:flutter/material.dart';

import '../constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      child: TextField(
        decoration: InputDecoration(
          border: new OutlineInputBorder(
              borderSide: new BorderSide(color: textColor3)
          ),
          fillColor: Colors.white,
          prefixIcon: IconButton(
            color: Colors.white,
            icon: Icon(Icons.search, color: textColor3),
            onPressed: () {},
          ),
          hintText: 'Search File',
        ),
      ),
    );
  }
}
