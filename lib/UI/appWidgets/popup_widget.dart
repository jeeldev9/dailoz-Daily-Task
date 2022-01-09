import 'package:dailoz/UI/appWidgets/popup_icontext_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopupWidget extends StatefulWidget {
  final IconData containerIcon;
  final List<PopupIconText> buttons;
  PopupWidget({required this.containerIcon, required this.buttons});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PopupWidgetState();
  }
}

class PopupWidgetState extends State<PopupWidget> {
  int _value = 1;
  Widget _NomalPopMenu() {
    return PopupMenuButton(
        offset: Offset(0, MediaQuery.of(context).size.height * 0.08),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.shade100.withOpacity(0.5),
                blurRadius: 13,
                offset: const Offset(-3, 7),
              ),
            ],
            color: Colors.white,
          ),
          padding: const EdgeInsets.only(
            top: 13,
            bottom: 11,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      padding: const EdgeInsets.all(3),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 18.50,
                            height: 18.50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                                child: Icon(
                              widget.containerIcon,
                              size: 18,
                              color: Colors.black,
                            )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        itemBuilder: (BuildContext context) => List.generate(
            widget.buttons.length,
            (index) => PopupMenuItem(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                value: 1,
                child: widget.buttons[index])),
        onSelected: (int value) {
          setState(() {
            _value = value;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.topRight,
      child: SizedBox(
        width: 48,
        height: 48,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _NomalPopMenu(),
          ],
        ),
      ),
    );
  }
}
