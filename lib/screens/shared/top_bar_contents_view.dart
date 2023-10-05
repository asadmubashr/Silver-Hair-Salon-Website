import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../utilities/constants.dart';
import '../../widgets/button.dart';
import '../../widgets/textfield.dart';

class TopBaContentsView extends StatefulWidget {
  final double opacity;
  TopBaContentsView({
    super.key,
    required this.opacity,
  });

  @override
  State<TopBaContentsView> createState() => _TopBaContentsViewState();
}

class _TopBaContentsViewState extends State<TopBaContentsView> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      color: Colors.white.withOpacity(widget.opacity),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onHover: (value) {
                    if (mounted) {
                      setState(() {
                        value ? _isHovering[0] = true : _isHovering[0] = false;
                      });
                    }
                  },
                  onTap: () {
                    context.go('/');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AppFlex',
                        style: TextStyle(
                            fontFamily: 'Noyh',
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onHover: (value) {
                        if (mounted) {
                          setState(() {
                            value
                                ? _isHovering[1] = true
                                : _isHovering[1] = false;
                          });
                        }
                      },
                      onTap: () {
                        context.go('/$appDevelopmentRoute');
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            'App Development',
                            style: TextStyle(
                                fontFamily: 'Noyh',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: _isHovering[1]
                                    ? kPrimaryColor
                                    : Colors.black),
                          ),
                          Spacer(),
                          Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[1],
                              child: Container(
                                height: 2,
                                width: 150,
                                color: kPrimaryColor,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    InkWell(
                      onHover: (value) {
                        if (mounted) {
                          setState(() {
                            value
                                ? _isHovering[2] = true
                                : _isHovering[2] = false;
                          });
                        }
                      },
                      onTap: () {
                        context.go('/$websiteDevelopmentRoute');
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            'Website Development',
                            style: TextStyle(
                                fontFamily: 'Noyh',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: _isHovering[2]
                                    ? kPrimaryColor
                                    : Colors.black),
                          ),
                          Spacer(),
                          Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[2],
                              child: Container(
                                height: 2,
                                width: 170,
                                color: kPrimaryColor,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    InkWell(
                      onHover: (value) {
                        if (mounted) {
                          setState(() {
                            value
                                ? _isHovering[3] = true
                                : _isHovering[3] = false;
                          });
                        }
                      },
                      onTap: () {
                        context.go('/$costRoute');
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            'Cost To Build An App',
                            style: TextStyle(
                                fontFamily: 'Noyh',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: _isHovering[3]
                                    ? kPrimaryColor
                                    : Colors.black),
                          ),
                          Spacer(),
                          Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[3],
                              child: Container(
                                height: 2,
                                width: 170,
                                color: kPrimaryColor,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    InkWell(
                      onHover: (value) {
                        if (mounted) {
                          setState(() {
                            value
                                ? _isHovering[4] = true
                                : _isHovering[4] = false;
                          });
                        }
                      },
                      onTap: () {
                        context.go('/$successRoute');
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            'Our Success',
                            style: TextStyle(
                                fontFamily: 'Noyh',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: _isHovering[4]
                                    ? kPrimaryColor
                                    : Colors.black),
                          ),
                          Spacer(),
                          Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[4],
                              child: Container(
                                height: 2,
                                width: 100,
                                color: kPrimaryColor,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    InkWell(
                      onHover: (value) {
                        if (mounted) {
                          setState(() {
                            value
                                ? _isHovering[5] = true
                                : _isHovering[5] = false;
                          });
                        }
                      },
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return ContactView();
                            });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 40,
                              width: 130,
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: _isHovering[5]
                                          ? kPrimaryColor
                                          : Colors.transparent),
                                  borderRadius: BorderRadius.circular(4),
                                  color: _isHovering[5]
                                      ? Colors.white
                                      : kPrimaryColor),
                              child: Text(
                                'Get In Touch',
                                style: TextStyle(
                                    color: _isHovering[5]
                                        ? kPrimaryColor
                                        : Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Noyh',
                                    fontSize: 16),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class ContactView extends StatefulWidget {
  ContactView({
    super.key,
  });

  @override
  _ContactViewState createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  TextEditingController _nameTextEditingController =
      TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset(0, -1), // Slide from top
          end: Offset.zero,
        ).animate(CurvedAnimation(
          parent: ModalRoute.of(context)!.animation!,
          curve: Curves.bounceIn, // Set the animation curve
        )),
        child: Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: contentBox(context)),
      ),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 450,
          width: 550,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
              ]),
          child: Row(
            children: [
              Container(
                child: SizedBox(
                  height: 450,
                  width: 250,
                  child: Image.asset(
                    'contact.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Let's Brew Success For",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Noyh',
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Your Business!',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Noyh',
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Container(
                      width: 250,
                      child: TextFieldView(
                        labelText: 'First Name',
                        labelStyle: TextStyle(
                          fontFamily: 'Noyh',
                        ),
                        hintText: 'Sheikh',
                        hintStyle:
                            TextStyle(fontFamily: 'Noyh', color: Colors.grey),
                        textEditingController: _nameTextEditingController,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: 250,
                      child: TextFieldView(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          fontFamily: 'Noyh',
                        ),
                        hintText: 'app@gmail.com',
                        hintStyle:
                            TextStyle(fontFamily: 'Noyh', color: Colors.grey),
                        textEditingController: _nameTextEditingController,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: 250,
                      child: TextFieldView(
                        labelText: 'Phone Number',
                        labelStyle: TextStyle(
                          fontFamily: 'Noyh',
                        ),
                        hintText: '+971000000000',
                        hintStyle:
                            TextStyle(fontFamily: 'Noyh', color: Colors.grey),
                        textInputType: TextInputType.phone,
                        textEditingController: _nameTextEditingController,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: 250,
                      child: TextFieldView(
                        labelText: 'Business Description',
                        labelStyle: TextStyle(
                          fontFamily: 'Noyh',
                        ),
                        hintText:
                            'Describe your business and your goals we can achieve together...',
                        hintStyle:
                            TextStyle(fontFamily: 'Noyh', color: Colors.grey),
                        textEditingController: _nameTextEditingController,
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    ButtonView(
                      name: 'SUBMIT',
                      onTap: () {},
                      height: 40,
                      width: 100,
                      background: kPrimaryColor,
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Noyh',
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
