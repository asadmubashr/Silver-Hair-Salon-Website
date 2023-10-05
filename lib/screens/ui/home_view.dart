import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../utilities/constants.dart';
import '../shared/bottom_bar_contents_view.dart';
import '../shared/top_bar_contents_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final double _opacity = 1.0;
  bool isMenuOpened = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    //_opacity =
    return Scaffold(
      appBar: PreferredSize(
          child: TopBaContentsView(
            opacity: _opacity,
          ),
          preferredSize: Size(screenSize.width, 70)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            screenSize.width < 900
                ? Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Menu'),
                            GestureDetector(
                              onTap: () {
                                if (mounted) {
                                  setState(() {
                                    isMenuOpened = !isMenuOpened;
                                  });
                                }
                              },
                              child: Icon(
                                Icons.menu,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (isMenuOpened) ...[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 24,
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: GestureDetector(
                                    onTap: () {
                                      context.go('/$appDevelopmentRoute');
                                    },
                                    child: Text('App Development'))),
                            Divider(),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: GestureDetector(
                                    onTap: () {
                                      context.go('/$websiteDevelopmentRoute');
                                    },
                                    child: Text('Website Development'))),
                            Divider(),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: GestureDetector(
                                    onTap: () {
                                      context.go('/$costRoute');
                                    },
                                    child: Text('Cost To Build An App'))),
                            Divider(),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: GestureDetector(
                                  onTap: () {
                                    context.go('/$successRoute');
                                  },
                                  child: Text('Our Success')),
                            ),
                            Divider(),
                          ],
                        ),
                      ],
                    ],
                  )
                : Container(),
            Container(
              child: SizedBox(
                height: screenSize.height * 0.70,
                width: screenSize.width,
                child: Image.asset(
                  'app1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            BottomBarContentsView(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.call),
        onPressed: () {},
      ),
    );
  }
}
