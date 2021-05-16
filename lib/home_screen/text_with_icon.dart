import 'package:flutter/material.dart';

class TextWithIcon extends StatelessWidget {
  const TextWithIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("My Folders",
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(fontWeight: FontWeight.bold)),
        Spacer(),
        IconButton(
          color: Color(0xFF21205A),
          icon: Icon(Icons.list, size: 30,),
          onPressed: () {},
        )
      ],
    );
  }
}
