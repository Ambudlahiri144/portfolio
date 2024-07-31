import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TimelineItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String dateRange;
  final bool isFirst;
  final bool isLast;

  const TimelineItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.dateRange,
    this.isFirst = false,
    this.isLast = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            if (!isFirst) Container(height: 30, width: 2, color: Colors.grey),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 300,vertical: 5),
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
            ),
            if (!isLast) Container(height: 60, width: 2, color: Colors.grey),
          ],
        ),
        // SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Row(
              children: [
                FaIcon(FontAwesomeIcons.calendarDays, size: 12),
                SizedBox(width: 5),
                Text(
                  dateRange,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
