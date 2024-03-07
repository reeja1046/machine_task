import 'package:flutter/material.dart';
import 'package:machine_task/constants/colors.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Vikram Singh',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Couple Combo Package (Rejuven...)',
              style: TextStyle(color: AppColor.baseColor, fontSize: 15),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.date_range,
                      color: Colors.red,
                      size: 16,
                    ),
                    SizedBox(width: 4),
                    Text('31/01/2024'),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.person_2_outlined,
                      color: Colors.red,
                    ),
                    SizedBox(width: 4),
                    Text('Jithesh'),
                  ],
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('View Booking details'),
                Icon(
                  Icons.arrow_right,
                  color: AppColor.baseColor,
                  size: 35,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
