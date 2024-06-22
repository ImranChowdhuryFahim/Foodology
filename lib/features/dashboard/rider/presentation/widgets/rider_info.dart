import 'package:flutter/material.dart';
import 'package:foodology/features/dashboard/rider/presentation/pages/rider_profile.dart';

class RideProfilerInfo {
  final String name;
  final String id;
  final int points;
  final String imageUrl;

  RideProfilerInfo({
    required this.name,
    required this.id,
    required this.points,
    required this.imageUrl,
  });
}

class RiderInfoWidget extends StatelessWidget {
  final RideProfilerInfo riderInfo;

  const RiderInfoWidget({super.key, required this.riderInfo});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(riderInfo.imageUrl),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              riderInfo.name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              riderInfo.id,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            Text(
              "Points earned: ${riderInfo.points}",
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () => Navigator.push(context, RiderProfile.route()),
        ),
      ],
    );
  }
}
