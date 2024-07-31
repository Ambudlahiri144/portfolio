import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ProjectsSection extends StatelessWidget {
  final bool isWeb;
  final CarouselController carouselController;
  final int carouselCurrentIndex;
  final Function(int) onPageChanged;

  const ProjectsSection({
    required this.isWeb,
    required this.carouselController,
    required this.carouselCurrentIndex,
    required this.onPageChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: isWeb ? 632 : 400,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: AlignmentDirectional(0, 0),
            child: Text(
              'Projects',
              style: FlutterFlowTheme.of(context).headlineLarge.override(
                fontFamily: 'Poppins',
                letterSpacing: 0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: isWeb ? 400 : 300,
              child: CarouselSlider(
                items: [
                  projectCard(context, 'assets/images/proj1.jpg', 'JURIS AI', 'Juris AI is an innovative legal tech platform designed to leverage large language models (LLMs) to revolutionize the legal process for clients. Our solution combines over 30 years of legal expertise with cutting-edge AI technology to assist clients through complex trials and litigations.'),
                  // Add more project cards here as needed.
                ],
                carouselController: carouselController,
                options: CarouselOptions(
                  initialPage: 1,
                  viewportFraction: isWeb ? 0.3 : 0.8,
                  disableCenter: true,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.25,
                  enableInfiniteScroll: true,
                  scrollDirection: Axis.horizontal,
                  autoPlay: false,
                  onPageChanged: (index, _) => onPageChanged(index),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget projectCard(BuildContext context, String imagePath, String title, String description) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: FlutterFlowTheme.of(context).secondaryBackground,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imagePath,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Poppins',
                    letterSpacing: 0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 15,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: FlutterFlowIconButton(
                    borderRadius: 20,
                    borderWidth: 1,
                    buttonSize: 40,
                    icon: FaIcon(
                      FontAwesomeIcons.github,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 30,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
