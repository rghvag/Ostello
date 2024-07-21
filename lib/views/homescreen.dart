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
          leading: Transform.rotate(
            angle: 90 * pi / 180,
            child: IconButton(
              icon: const Icon(
                Icons.expand_circle_down_outlined,
                color: Colors.purple,
              ),
              onPressed: () {},
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Radiology',
              ),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.favorite_outline_sharp,
                      color: Colors.red,
                      size: 30.0,
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
                      'assets/icons/Menu.svg',
                      // 'assets/icons/botface1.svg',
                      // colo
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
          bottom: TabBar(
            tabs: const [
              Tab(
                child: Text(
                  'Overview',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              Tab(text: 'MarketPlace'),
              Tab(
                child: Text(
                  'News',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ],
            indicatorColor: Colors.purple,
            labelColor: Colors.purple,
            unselectedLabelColor: Colors.grey[600],
          ),
        ),
        body: TabBarView(
          children: [
            OverviewPage(),
            MarketplacePage(),
            NewsPage(),
          ],
        ),
      ),
    );
  }
}
