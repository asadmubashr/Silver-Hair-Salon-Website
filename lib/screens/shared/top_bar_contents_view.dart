import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:website_base/models/submenu_model.dart';
import 'package:website_base/screens/hovers/hover_menu.dart';

import '../../utilities/constants.dart';
import '../../widgets/button.dart';
import '../../widgets/textfield.dart';

class TopBaContentsView extends StatefulWidget {
  final String title;
  final double opacity;
  bool isMenuOpened;
  final Function(bool) toggleMenu;
  List isSubMenuOpen;
  final Function(bool, int) toggleSubMenu;

  TopBaContentsView({
    super.key,
    required this.title,
    required this.opacity,
    required this.isMenuOpened,
    required this.toggleMenu,
    required this.isSubMenuOpen,
    required this.toggleSubMenu,
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
  ];

  final List _servicesIsHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  List<SubMenuModel> subMenuServices = [
    SubMenuModel(index: 0, name: 'NAIL', route: '/$nailRoute'),
    SubMenuModel(index: 0, name: 'HAIR', route: '/$hairRoute'),
    SubMenuModel(index: 0, name: 'SKIN', route: '/$skinRoute'),
    SubMenuModel(index: 0, name: 'WAXING', route: '/$waxingRoute'),
    SubMenuModel(
        index: 0,
        name: 'FULL BODY TREATMENT',
        route: '/$fullBodyTreatmentRoute'),
    SubMenuModel(index: 0, name: 'MASSAGE', route: '/$massageRoute'),
    SubMenuModel(index: 0, name: 'MAKEUP', route: '/$makeupRoute'),
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return LayoutBuilder(builder: (context, constraints) {
      double screenWidth = constraints.maxWidth;
      double screenHeight = constraints.maxHeight;

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (screenWidth >= 700) {
          if (widget.isMenuOpened) {
            widget.toggleMenu(!widget.isMenuOpened);
          }
        }
      });

      return Container(
        color: kPrimaryColor.withOpacity(widget.opacity),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenSize.width < 1200
                  ? 24
                  : (24 + (screenSize.width - 1200) / 2)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onHover: (value) {},
                        onTap: () {
                          context.go('/');
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              'logo.jpeg',
                              width: 75,
                            ),
                            Text('${screenSize.width}'),
                          ],
                        ),
                      ),
                      if (screenSize.width < 700) ...[
                        GestureDetector(
                            onTap: () {
                              if (mounted) {
                                setState(() {
                                  widget.toggleMenu(!widget.isMenuOpened);
                                });
                              }
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                )
                              ],
                            ))
                      ],
                      if (screenSize.width >= 700) ...[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onHover: (value) {
                                if (mounted) {
                                  setState(() {
                                    value
                                        ? _isHovering[0] = true
                                        : _isHovering[0] = false;
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
                                    homeMenu,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w200,
                                        color: (_isHovering[0] ||
                                                homeMenu ==
                                                    widget.title
                                                        .substring(0, 4))
                                            ? Colors.white
                                            : Colors.grey),
                                  ),
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
                                        ? _isHovering[1] = true
                                        : _isHovering[1] = false;
                                  });
                                }
                              },
                              onTap: () {
                                context.go('/$aboutUsRoute');
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    aboutUsMenu,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w200,
                                        color: (_isHovering[1] ||
                                                aboutUsMenu ==
                                                    widget.title
                                                        .substring(0, 8))
                                            ? Colors.white
                                            : Colors.grey),
                                  ),
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
                                context.go('/$galleryRoute');
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    galleryMenu,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w200,
                                        color: (_isHovering[2] ||
                                                galleryMenu ==
                                                    widget.title
                                                        .substring(0, 6))
                                            ? Colors.white
                                            : Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            HoverMenu(
                              title: InkWell(
                                onHover: (value) {
                                  if (mounted) {
                                    setState(() {
                                      value
                                          ? _isHovering[3] = true
                                          : _isHovering[3] = false;
                                    });
                                  }
                                },
                                onTap: () {},
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      servicesMenu,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w200,
                                          color: (_isHovering[3] ||
                                                  servicesMenu ==
                                                      widget.title
                                                          .substring(0, 8))
                                              ? Colors.white
                                              : Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              items: [
                                for (int i = 0;
                                    i < subMenuServices.length;
                                    i++) ...[
                                  InkWell(
                                    onHover: (value) {
                                      if (mounted) {
                                        setState(() {
                                          _servicesIsHovering[i] = value;
                                        });
                                      }
                                    },
                                    onTap: () {
                                      context.go(subMenuServices[i].route);
                                    },
                                    child: Container(
                                      color: (_servicesIsHovering[i] ||
                                              subMenuServices[i].name ==
                                                  widget.title.substring(
                                                      8, widget.title.length))
                                          ? kPrimaryColor
                                          : Colors.white,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 8),
                                      margin: EdgeInsets.only(
                                          top: i == 0 ? 8 : 0,
                                          bottom:
                                              i == subMenuServices.length - 1
                                                  ? 8
                                                  : 0),
                                      child: Text(
                                        subMenuServices[i].name,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: (_servicesIsHovering[i] ||
                                                    subMenuServices[i].name ==
                                                        widget.title.substring(
                                                            8,
                                                            widget
                                                                .title.length))
                                                ? Colors.white
                                                : Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ],
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
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.all(0),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: _isHovering[4]
                                                ? kPrimaryColor
                                                : Colors.transparent),
                                        borderRadius: BorderRadius.circular(4),
                                        color: _isHovering[4]
                                            ? Colors.white
                                            : kPrimaryColor),
                                    child: Text(
                                      contactUsMenu,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w200,
                                          color: _isHovering[4]
                                              ? kPrimaryColor
                                              : Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ],
                  ))
                ],
              ),
              (widget.isMenuOpened && screenSize.width < 700)
                  ? Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 24,
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24),
                                child: InkWell(
                                  onHover: (value) {
                                    if (mounted) {
                                      setState(() {
                                        _isHovering[0] = value;
                                      });
                                    }
                                  },
                                  onTap: () {
                                    context.go('/');
                                  },
                                  child: Text(
                                    homeMenu,
                                    style: TextStyle(
                                        fontFamily: 'Novecento',
                                        fontSize: 18,
                                        color: (_isHovering[0] ||
                                                homeMenu == widget.title)
                                            ? Colors.white
                                            : Colors.grey),
                                  ),
                                )),
                            Divider(),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24),
                                child: InkWell(
                                  onHover: (value) {
                                    if (mounted) {
                                      setState(() {
                                        _isHovering[1] = value;
                                      });
                                    }
                                  },
                                  onTap: () {
                                    context.go('/$aboutUsRoute');
                                  },
                                  child: Text(
                                    aboutUsMenu,
                                    style: TextStyle(
                                        fontFamily: 'Novecento',
                                        fontSize: 18,
                                        color: (_isHovering[1] ||
                                                aboutUsMenu == widget.title)
                                            ? Colors.white
                                            : Colors.grey),
                                  ),
                                )),
                            Divider(),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24),
                                child: InkWell(
                                  onHover: (value) {
                                    if (mounted) {
                                      setState(() {
                                        _isHovering[2] = value;
                                      });
                                    }
                                  },
                                  onTap: () {
                                    context.go('/$galleryRoute');
                                  },
                                  child: Text(
                                    galleryMenu,
                                    style: TextStyle(
                                        fontFamily: 'Novecento',
                                        fontSize: 18,
                                        color: (_isHovering[2] ||
                                                galleryMenu == widget.title)
                                            ? Colors.white
                                            : Colors.grey),
                                  ),
                                )),
                            Divider(),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: InkWell(
                                onHover: (value) {
                                  if (mounted) {
                                    setState(() {
                                      _isHovering[3] = value;
                                    });
                                  }
                                },
                                onTap: () {
                                  widget.toggleSubMenu(
                                      !widget.isSubMenuOpen[0], 0);
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      servicesMenu,
                                      style: TextStyle(
                                          fontFamily: 'Novecento',
                                          fontSize: 18,
                                          color: _isHovering[3]
                                              ? Colors.white
                                              : Colors.grey),
                                    ),
                                    Icon(
                                      widget.isSubMenuOpen[0]
                                          ? Icons.arrow_drop_up_outlined
                                          : Icons.arrow_drop_down,
                                      color: _isHovering[3]
                                          ? Colors.white
                                          : Colors.grey,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            if (widget.isSubMenuOpen[0]) ...[
                              for (int i = 0;
                                  i < subMenuServices.length;
                                  i++) ...[
                                InkWell(
                                  onHover: (value) {
                                    if (mounted) {
                                      setState(() {
                                        _servicesIsHovering[i] = value;
                                      });
                                    }
                                  },
                                  onTap: () {
                                    context.go(subMenuServices[i].route);
                                  },
                                  child: Container(
                                    color: kPrimaryColor,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 40, vertical: 8),
                                    child: Text(
                                      subMenuServices[i].name,
                                      style: TextStyle(
                                          fontFamily: 'Noyh',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: _servicesIsHovering[i]
                                              ? Colors.white
                                              : Colors.grey),
                                    ),
                                  ),
                                ),
                              ],
                            ],
                            Divider(),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: InkWell(
                                onHover: (value) {
                                  if (mounted) {
                                    setState(() {
                                      _isHovering[4] = value;
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
                                child: Text(
                                  contactUsMenu,
                                  style: TextStyle(
                                      fontFamily: 'Novecento',
                                      fontSize: 18,
                                      color: _isHovering[4]
                                          ? Colors.white
                                          : Colors.grey),
                                ),
                              ),
                            ),
                            Divider(),
                          ],
                        ),
                      ],
                    )
                  : Container(),
            ],
          ),
        ),
      );
    });
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
    final screenSize = MediaQuery.of(context).size;
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
            child: contentBox(context, screenSize)),
      ),
    );
  }

  contentBox(context, screenSize) {
    return Stack(
      children: <Widget>[
        Container(
          height: 450,
          width: screenSize.width < 700 ? screenSize.width : 550,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
              ]),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: screenSize.width < 700
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: [
              if (screenSize.width > 700) ...[
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
              ],
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Let's Brew Beauty For",
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
                      'Yourself!',
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
                        labelText: 'Service Description',
                        labelStyle: TextStyle(
                          fontFamily: 'Noyh',
                        ),
                        hintText:
                            'Describe the service and your goals we can achieve together...',
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
