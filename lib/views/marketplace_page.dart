import 'package:flutter/material.dart';
import 'coaching_center_card.dart';

class MarketplacePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Center(child: CoachingCenterCard());
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
            ),
            gradient: LinearGradient(
              colors: [Colors.greenAccent, Colors.green, Colors.white],
            ),
          ),
          // color: Gradient(colors: []),
          padding: const EdgeInsets.all(16.0),
          child: const Text(
            'Getting guidance has now become easy\n12+ coaching centers nearby',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
