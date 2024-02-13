import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  final String title;
  final List<String> participants;
  final String startTime;
  final String endTime;

  final Color _blackColor = const Color(0xFF1F2123);
  final Color _yellowColor = const Color(0xFFFFD600);

  const ScheduleCard({
    super.key,
    required this.title,
    required this.participants,
    required this.startTime,
    required this.endTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: _yellowColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildTimeText(startTime),
                      const SizedBox(height: 4),
                      _buildDivider(),
                      const SizedBox(height: 4),
                      _buildTimeText(endTime),
                    ],
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Center(
                      child: Text(
                        title.toUpperCase(),
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w400,
                          height: 1,
                          color: _blackColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                participants.join('   ').toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: _blackColor.withOpacity(0.5),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimeText(String time) {
    final parts = time.split(':');
    final hours = parts[0];
    final minutes = parts.length > 1 ? parts[1] : '';

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hours,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: _blackColor,
          ),
        ),
        Text(
          minutes,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: _blackColor,
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 20,
      width: 1,
      color: _blackColor,
    );
  }
}
