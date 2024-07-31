import 'package:flutter/material.dart';
import 'timeline.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';

class QualificationSection extends StatelessWidget {
  final bool isWeb;

  const QualificationSection({required this.isWeb, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Qualifications',
            style: FlutterFlowTheme.of(context).displaySmall.override(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'My journey',
            style: FlutterFlowTheme.of(context).displaySmall.override(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 20),
          TabBar(
            indicatorColor: Colors.black,
            dividerColor: Colors.transparent,
            tabAlignment: TabAlignment.center,
            labelColor: Colors.blue,

            tabs: [
              Tab(text: 'Education'),
              Tab(text: 'Experience'),
            ],
          ),
          SizedBox(height: 20),
          Container(
            height: 300,
            child: TabBarView(
              children: [
                // Education Tab
                ListView(
                  children: [
                    TimelineItem(
                      title: 'Btech Computer Science Engineering',
                      subtitle: 'Bennett University',
                      dateRange: '2022–present',
                      isFirst: true,
                    ),
                    TimelineItem(
                      title: 'Student',
                      subtitle: 'Woodward public school',
                      dateRange: '2010–2021',
                      isLast: true,
                    ),
                  ],
                ),
                // Experience Tab
                ListView(
                  children: [
                    TimelineItem(
                      title: 'Product Manager',
                      subtitle: 'Syntalix',
                      dateRange: '2023–present',
                      isFirst: true,
                    ),
                    TimelineItem(
                      title: 'Software Engineer Intern',
                      subtitle: 'Tech Solutions Inc.',
                      dateRange: '2022–2023',
                    ),
                    TimelineItem(
                      title: 'Junior Developer',
                      subtitle: 'Innovatech',
                      dateRange: '2021–2022',
                      isLast: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}