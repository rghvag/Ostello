import 'package:flutter/material.dart';

class CoachingCenterCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8),
          child: Card(
            shadowColor: Colors.transparent,
            color: Colors.blue,
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
            shape:
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            child: Container(
              // width: 327,
              // height: 146,
              color: Colors.blue,
              child: Center(
                child: Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            child: Image.asset(
                              'assets/images/coach_center.jpg',
                              fit: BoxFit.cover,
                              height: 146,
                              width: 132,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '50% off',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        'Upto 1000',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite_border_sharp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: ListTile(
                          contentPadding:
                              const EdgeInsets.only(left: 10, top: 0),
                          title: const Text(
                            'Shiska Coaching Center',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Icon(Icons.stars_rounded,
                                      color: Colors.green, size: 16),
                                  Text(
                                    ' 4.5 (100+ Rating)',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'All Subjects • Com • Sci',
                                style: TextStyle(fontSize: 13),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    top: 0, right: 0, bottom: 8, left: 0),
                                child: Text(
                                  'Kalkaji • 3 kms away',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                              const SizedBox(height: 4),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    minimumSize: const Size(50, 30),
                                    backgroundColor: Colors.grey.shade200),
                                child: const Text(
                                  'View Details',
                                  style: TextStyle(
                                      color: Colors.purple,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          // width: 327,
          height: 1,
          color: Colors.grey.withOpacity(0.5),
        ),
      ],
    );
  }
}
