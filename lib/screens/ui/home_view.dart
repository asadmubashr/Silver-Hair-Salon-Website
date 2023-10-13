import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:website_base/screens/shared/home/reviews_widget.dart';

import '../../utilities/constants.dart';
import '../../widgets/button.dart';
import '../shared/bottom_bar_contents_view.dart';
import '../shared/home/know_about_us.dart';
import '../shared/home/qualities_widget.dart';
import '../shared/home/services_widget.dart';
import '../shared/home/symbol_widget.dart';
import '../shared/top_bar_contents_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool kReleaseMode = false;
  final double _opacity = 1.0;
  bool isMenuOpened = false;
  final List _isSubMenuOpen = [
    false,
  ];

  double getMenuHeight() {
    double height = 300;
    if (_isSubMenuOpen[0]) {
      height += 300;
    }
    return height;
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: RawKeyboardListener(
        autofocus: true,
        focusNode: _focusNode,
        onKey: _handleKeyEvent,
        child: CustomScrollView(
          controller: _controller,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    width: screenSize.width,
                    height: isMenuOpened ? getMenuHeight() : 100,
                    child: TopBaContentsView(
                      title: homeMenu + fullBodyTreatmentMenu,
                      opacity: _opacity,
                      isMenuOpened: isMenuOpened,
                      toggleMenu: (value) {
                        setState(() {
                          isMenuOpened = value;
                        });
                      },
                      isSubMenuOpen: _isSubMenuOpen,
                      toggleSubMenu: (value, int) {
                        setState(() {
                          _isSubMenuOpen[int] = value;
                        });
                      },
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        height: screenSize.height,
                        width: screenSize.width,
                        child: Image.asset(
                          'main.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenSize.width < 1200
                              ? 24
                              : (24 + (screenSize.width - 1200) / 2),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Where excellence meets elegance',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontFamily: 'Paradise'),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'SERVING SINCE 1988',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 72),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            ButtonView(
                              name: 'MAKE A APPOINTMENT NOW',
                              textStyle:
                                  TextStyle(color: Colors.white, fontSize: 12),
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return ContactView();
                                    });
                              },
                              width: screenSize.width < 600 ? 200 : 300,
                              height: 60,
                              background: Colors.amber,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SymbolWidget(),
                  KnowAboutUs(),
                  ServicesWidget(),
                  QualitiesWidget(),
                  ReviewsWidget(),
                  BottomBarContentsView(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.call),
        onPressed: () {},
      ),
    );
  }

  final ScrollController _controller = ScrollController();
  final FocusNode _focusNode = FocusNode();
  void _handleKeyEvent(RawKeyEvent event) {
    if (event is RawKeyDownEvent) {
      final maxScrollOffset = _controller.position.maxScrollExtent;
      final minScrollOffset = _controller.position.minScrollExtent;
      final currentOffset = _controller.offset;

      double targetOffset = 0;

      if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
        targetOffset =
            (currentOffset - 50.0).clamp(minScrollOffset, maxScrollOffset);
      } else if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
        targetOffset =
            (currentOffset + 50.0).clamp(minScrollOffset, maxScrollOffset);
      }

      if (targetOffset != currentOffset) {
        _controller.animateTo(
          targetOffset,
          duration: Duration(milliseconds: 10),
          curve: Curves.ease,
        );
      }
    }
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
}
