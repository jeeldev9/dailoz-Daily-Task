import 'package:dailoz/UI/Screen/Profile/Widget/board_tile_container.dart';
import 'package:dailoz/UI/appWidgets/popup_icontext_widget.dart';
import 'package:dailoz/UI/appWidgets/popup_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileHomeScreen extends StatelessWidget {
  ProfileHomeScreen({Key? key}) : super(key: key);
  List<BoardTile> tiles = [
    BoardTile(
      taskNumber: 6,
      tileBgColor: const Color(0xffFFE4E4).withOpacity(0.25),
      tileIconBgColor: const Color(0xffE77D7D),
      tileName: "Personal",
    ),
    BoardTile(
      tileBgColor: const Color(0xff7FC9E7).withOpacity(0.25),
      taskNumber: 8,
    ),
    BoardTile(
      taskNumber: 6,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                PopupWidget(
                  containerIcon: CupertinoIcons.home,
                  buttons: const [
                    PopupIconText(
                        rowText: "Setting", rowIcon: CupertinoIcons.book),
                    PopupIconText(
                        rowText: "Log Out", rowIcon: CupertinoIcons.book),
                  ],
                ),
                Container(
                  height: h * 0.23,
                  width: w * 0.23,
                  decoration:
                      BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                ),
                Text(
                  "Jeel Bhatti",
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      ?.copyWith(inherit: true, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Jeelbhatti9@gmail.com",
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      ?.copyWith(fontWeight: FontWeight.w200, fontSize: 18),
                ),
                SizedBox(
                  height: h * 0.05,
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: tiles.length + 1,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 1,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    return tiles.length == index
                        ? const BoardTile(
                            tileName: "Create Board",
                            tileIcon: Icons.ac_unit,
                            tileIconBgColor: Color(0xffF0A58E),
                            tileBgColor: Color(0xffFFEFEB),
                            hideTask: true,
                          )
                        : tiles[index];
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
