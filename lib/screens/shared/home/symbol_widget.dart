import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:website_base/utilities/constants.dart';

import '../top_bar_contents_view.dart';

class SymbolWidget extends StatefulWidget {
  const SymbolWidget({super.key});

  @override
  State<SymbolWidget> createState() => _SymbolWidgetState();
}

class _SymbolWidgetState extends State<SymbolWidget> {
  bool isHovered1 = false;
  bool isHovered2 = false;
  bool isHovered3 = false;

  BoxDecoration containerDecoration =
      BoxDecoration(border: Border.all(color: Colors.white, width: 2));
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        screenSize.width < 900
            ? Column(
                children: [
                  Container(
                    width: screenSize.width,
                    height: screenSize.height * 0.50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                    ),
                    child: MouseRegion(
                      onEnter: (_) {
                        setState(() {
                          isHovered1 = true;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          isHovered1 = false;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: isHovered1
                                    ? kPrimaryColor
                                    : Colors.transparent)),
                        margin: EdgeInsets.all(isHovered1 ? 24 : 40),
                        width: screenSize.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Lovely',
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontFamily: 'Paradise',
                                  fontSize: 32),
                            ),
                            Text(
                              'MAKEUP',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 32,
                                  fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            InkWell(
                              onHover: (value) {},
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return ContactView();
                                    });
                                ;
                              },
                              child: Column(
                                children: [
                                  Text(
                                    'MAKE A APPOINMENT',
                                    style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Visibility(
                                      maintainAnimation: true,
                                      maintainState: true,
                                      maintainSize: true,
                                      visible: true,
                                      child: Container(
                                        height: 2,
                                        width: 165,
                                        color: kPrimaryColor,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: screenSize.width,
                    height: screenSize.height * 0.50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return ContactView();
                          },
                        );
                      },
                      child: MouseRegion(
                        onEnter: (_) {
                          setState(() {
                            isHovered2 = true;
                          });
                        },
                        onExit: (_) {
                          setState(() {
                            isHovered2 = false;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          padding: EdgeInsets.all(isHovered2 ? 40 : 0),
                          margin: EdgeInsets.all(isHovered2 ? 40 : 24),
                          width: screenSize.width,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: isHovered2
                                  ? 3.0
                                  : 2.0, // Adjust the border width as needed
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Change',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Paradise',
                                  fontSize: 32,
                                ),
                              ),
                              Text(
                                'SKIN CARE',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(
                                height: 32,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'MAKE A APPOINTMENT',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Visibility(
                                      maintainAnimation: true,
                                      maintainState: true,
                                      maintainSize: true,
                                      visible: true,
                                      child: Container(
                                        height: 2,
                                        width: 165,
                                        color: kPrimaryColor,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: screenSize.width,
                    height: screenSize.height * 0.50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                    ),
                    child: MouseRegion(
                      onEnter: (_) {
                        setState(() {
                          isHovered3 = true;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          isHovered3 = false;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: isHovered3
                                    ? kPrimaryColor
                                    : Colors.transparent)),
                        margin: EdgeInsets.all(isHovered3 ? 24 : 40),
                        width: screenSize.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Perfect',
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontFamily: 'Paradise',
                                  fontSize: 32),
                            ),
                            Text(
                              'SPA',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 32,
                                  fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            InkWell(
                              onHover: (value) {},
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return ContactView();
                                    });
                                ;
                              },
                              child: Column(
                                children: [
                                  Text(
                                    'MAKE A APPOINMENT',
                                    style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Visibility(
                                      maintainAnimation: true,
                                      maintainState: true,
                                      maintainSize: true,
                                      visible: true,
                                      child: Container(
                                        height: 2,
                                        width: 165,
                                        color: kPrimaryColor,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Row(
                children: [
                  Container(
                    width: screenSize.width * 0.33,
                    height: screenSize.width * 0.33,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                    ),
                    child: MouseRegion(
                      onEnter: (_) {
                        setState(() {
                          isHovered1 = true;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          isHovered1 = false;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: isHovered1
                                    ? kPrimaryColor
                                    : Colors.transparent)),
                        margin: EdgeInsets.all(isHovered1 ? 24 : 40),
                        width: screenSize.width * 0.33,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Lovely',
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontFamily: 'Paradise',
                                  fontSize: 32),
                            ),
                            Text(
                              'MAKEUP',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 32,
                                  fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            InkWell(
                              onHover: (value) {},
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return ContactView();
                                    });
                                ;
                              },
                              child: Column(
                                children: [
                                  Text(
                                    'MAKE A APPOINMENT',
                                    style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Visibility(
                                      maintainAnimation: true,
                                      maintainState: true,
                                      maintainSize: true,
                                      visible: true,
                                      child: Container(
                                        height: 2,
                                        width: 165,
                                        color: kPrimaryColor,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: screenSize.width * 0.33,
                    height: screenSize.width * 0.33,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return ContactView();
                          },
                        );
                      },
                      child: MouseRegion(
                        onEnter: (_) {
                          setState(() {
                            isHovered2 = true;
                          });
                        },
                        onExit: (_) {
                          setState(() {
                            isHovered2 = false;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          padding: EdgeInsets.all(isHovered2 ? 40 : 0),
                          margin: EdgeInsets.all(isHovered2 ? 40 : 24),
                          width: screenSize.width * 0.33,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: isHovered2
                                  ? 3.0
                                  : 2.0, // Adjust the border width as needed
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Change',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Paradise',
                                  fontSize: 32,
                                ),
                              ),
                              Text(
                                'SKIN CARE',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(
                                height: 32,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'MAKE A APPOINTMENT',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Visibility(
                                      maintainAnimation: true,
                                      maintainState: true,
                                      maintainSize: true,
                                      visible: true,
                                      child: Container(
                                        height: 2,
                                        width: 165,
                                        color: kPrimaryColor,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: screenSize.width * 0.33,
                    height: screenSize.width * 0.33,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                    ),
                    child: MouseRegion(
                      onEnter: (_) {
                        setState(() {
                          isHovered3 = true;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          isHovered3 = false;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: isHovered3
                                    ? kPrimaryColor
                                    : Colors.transparent)),
                        margin: EdgeInsets.all(isHovered3 ? 24 : 40),
                        width: screenSize.width * 0.33,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Perfect',
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontFamily: 'Paradise',
                                  fontSize: 32),
                            ),
                            Text(
                              'SPA',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 32,
                                  fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            InkWell(
                              onHover: (value) {},
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return ContactView();
                                    });
                                ;
                              },
                              child: Column(
                                children: [
                                  Text(
                                    'MAKE A APPOINMENT',
                                    style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Visibility(
                                      maintainAnimation: true,
                                      maintainState: true,
                                      maintainSize: true,
                                      visible: true,
                                      child: Container(
                                        height: 2,
                                        width: 165,
                                        color: kPrimaryColor,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
        SizedBox(
          height: 48,
        ),
      ],
    );
  }
}
