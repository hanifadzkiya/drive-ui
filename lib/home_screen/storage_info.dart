import 'package:flutter/material.dart';

import '../constants.dart';

class StorageInfo extends StatelessWidget {
  const StorageInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(kDefaultPadding * 2.5),
              decoration: BoxDecoration(
                color: brandPrimaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(kDefaultPadding * 1.25),
                ),
              ),
              child: Column(children: [
                Row(
                  children: [
                    Container(
                        padding: EdgeInsets.all(kDefaultPadding * 0.5),
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                                Radius.circular(kDefaultPadding))),
                        child: Image.asset("assets/images/drive-logo.png")),
                    SizedBox(width: kDefaultPadding),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Free Storage",
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                        SizedBox(height: kDefaultPadding),
                        RichText(
                          textAlign: TextAlign.start,
                            text: TextSpan(children: [
                          TextSpan(
                              text: "7,5 Gb / ",
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  ?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14)),
                          TextSpan(
                              text: "15 Gb",
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  ?.copyWith(color: Colors.white))
                        ])),
                      ],
                    )
                  ],
                ),
                SizedBox(height: kDefaultPadding * 0.8),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: LinearProgressIndicator(
                    value: 0.5,
                    backgroundColor: brandPrimaryColor2,
                    color: Colors.white,
                    minHeight: 7.5,
                  ),
                )
              ]),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                    color: brandPrimaryColor2,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(kDefaultPadding * 1.1),
                        bottomLeft: Radius.circular(kDefaultPadding * 1.1))),
                child: Center(
                  child:
                      Icon(Icons.chevron_right, size: 40, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
