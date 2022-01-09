import 'package:flutter/material.dart';

class BoardTile extends StatelessWidget {
  final IconData? tileIcon;
  final Color? tileIconBgColor;
  final Color? tileBgColor;
  final int? taskNumber;
  final String? tileName;
  final bool? hideTask;
  const BoardTile(
      {Key? key,
      this.taskNumber = 0,
      this.tileBgColor = Colors.black,
      this.tileIcon = Icons.person,
      this.tileIconBgColor = Colors.white,
      this.tileName = "",
      this.hideTask = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: h * 0.5,
      width: w * 0.5,
      decoration: BoxDecoration(
          color: tileBgColor, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: h * 0.09,
            height: h * 0.09,
            decoration: BoxDecoration(
                color: tileIconBgColor,
                borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: Icon(tileIcon),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Text(
                tileName!,
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Visibility(
                visible: !hideTask!,
                child: Text(
                  "$taskNumber Task",
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 14),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
