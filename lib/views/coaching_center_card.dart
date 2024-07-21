import 'package:flutter/material.dart';

class CoachingCenterCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.asset(
                    'assets/images/coach_center.jpg',
                    fit: BoxFit.cover,
                    height: 150,
                    width: 150,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    // color: Colors.black12,
                    child: Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    // fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_border_sharp,
                                  color: Colors.white,
                                ))
                          ]),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 10, top: 0),
                title: const Text(
                  'Shiska Coaching Center',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.stars_rounded,
                            color: Colors.green, size: 16),
                        Text(' 4.5 (100+ Rating)'),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('All Subjects • Com • Sci'),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Kalkaji • 3 kms away'),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () {
                        // Handle view details button press
                      },
                      style: TextButton.styleFrom().copyWith(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.grey.shade200),
                      ),
                      child: Text(
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
    );
  }
}
