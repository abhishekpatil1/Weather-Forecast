import 'package:flutter/material.dart';

class HourlyForecastItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const HourlyForecastItem({
    super.key, required this.icon, required this.label, required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(18)),
        child: Column(
          children: [
            Text(
              label,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            SizedBox(height: 8),
            Icon(icon, size: 32),
            SizedBox(height: 8),
            Text(value),
          ],
        ),
      ),
    );
  }
}
