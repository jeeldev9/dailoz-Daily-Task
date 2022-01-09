import 'package:dailoz/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'bottomnavigation_indicatior.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return ValueListenableBuilder(
        valueListenable: pageIndex!,
        builder: (context, c, v) {
          return SafeArea(
            bottom: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Material(
                elevation: 8,
                borderRadius: BorderRadius.circular(22),
                shadowColor: const Color(0xffC6C6C6),
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.white,
                  ),
                  width: w * 0.91,
                  height: h * 0.09,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        pageIndex!.value == 1
                            ? const IndexIndicator(
                                image: "assets/Icons/Home_Fill.svg",
                              )
                            : GestureDetector(
                                onTap: () {
                                  pageIndex!.value = 1;
                                },
                                child: SvgPicture.asset(
                                  "assets/Icons/Home.svg",
                                  height: 30,
                                  color: appGreyColor,
                                )),
                        pageIndex!.value == 2
                            ? const IndexIndicator(
                                image: "assets/Icons/Document_Fill.svg",
                              )
                            : GestureDetector(
                                onTap: () {
                                  pageIndex!.value = 2;
                                },
                                child: SvgPicture.asset(
                                  "assets/Icons/Document.svg",
                                  height: 30,
                                  color: appGreyColor,
                                ),
                              ),
                        Container(
                          width: h * 0.07,
                          height: h * 0.07,
                          decoration: BoxDecoration(
                            color: appPurpleColor,
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Icon(
                              CupertinoIcons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        pageIndex!.value == 3
                            ? const IndexIndicator(
                                image: "assets/Icons/Activity_Fill.svg")
                            : GestureDetector(
                                onTap: () {
                                  pageIndex!.value = 3;
                                },
                                child: SvgPicture.asset(
                                  "assets/Icons/Activity.svg",
                                  height: 30,
                                  color: appGreyColor,
                                ),
                              ),
                        pageIndex!.value == 4
                            ? const IndexIndicator(
                                image: "assets/Icons/Folder_Fill.svg",
                              )
                            : GestureDetector(
                                onTap: () {
                                  pageIndex!.value = 4;
                                },
                                child: SvgPicture.asset(
                                  "assets/Icons/Folder.svg",
                                  height: 30,
                                  color: appGreyColor,
                                ),
                              ),
                      ],
                    ),
                  ),
                )..padding?.add(EdgeInsets.zero),
              ),
            ),
          );
        });
  }
}
