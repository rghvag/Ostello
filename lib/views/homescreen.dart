import 'dart:math';
import 'package:assignmentostello/views/marketplace_page.dart';
import 'package:assignmentostello/views/news_page.dart';
import 'package:assignmentostello/views/overview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.shade50.withOpacity(0.8),
          title: Padding(
            padding:
                const EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 1),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.rotate(
                    angle: 90 * pi / 180,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Center(
                        child: Container(
                          // color: Colors.blue,
                          child: IconButton(
                            icon: const Icon(
                              Icons.expand_circle_down_outlined,
                              color: Colors.purple,
                              size: 30,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Radiology',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.favorite_outline_sharp,
                                color: Colors.red,
                                size: 33.0,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: SvgPicture.asset(
                                'assets/icons/Vector.svg',
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: SvgPicture.asset(
                                'assets/icons/Menu3.svg',
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          titleSpacing: 0,
          bottom: TabBar(
            tabs: const [
              Tab(
                child: Text(
                  'Overview',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              Tab(
                child: Text(
                  'MarketPlace',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'News',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ],
            dividerColor: Colors.transparent,
            indicatorColor: Colors.purple,
            labelColor: Colors.purple,
            unselectedLabelColor: Colors.grey[600],
          ),
        ),
        body: TabBarView(
          children: [
            const OverviewPage(),
            MarketplacePage(),
            const NewsPage(),
          ],
        ),
      ),
    );
  }
}
