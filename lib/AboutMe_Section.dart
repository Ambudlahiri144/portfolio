import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:share_plus/share_plus.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart' as smooth_page_indicator;
import 'package:flutterflow_ui/flutterflow_ui.dart';
class AboutMeSection extends StatelessWidget {
  final bool isWeb;
  final PageController pageViewController;
  final Function(int) onPageChanged;

  const AboutMeSection({
    required this.isWeb,
    required this.pageViewController,
    required this.onPageChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: isWeb ? 923 : 600,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                  child: Lottie.network(
                    'https://lottie.host/92b0530d-d981-4389-ba58-437adcc2d301/pGpt8xafUY.json',
                    width: isWeb ? 500 : MediaQuery.of(context).size.width * 0.7,
                    height: isWeb ? 500 : 300,
                    fit: BoxFit.cover,
                    animate: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(isWeb ? 600 : 20, 30, 0, 0),
                  child: Text(
                    'About Me ',
                    style: FlutterFlowTheme.of(context).headlineLarge.override(
                      fontFamily: 'Poppins',
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(isWeb ? 700 : 20, 100, isWeb ? 300 : 20, 0),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(),
                    child: Container(
                      width: double.infinity,
                      height: 686,
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                            child: PageView(
                              controller: pageViewController,
                              scrollDirection: Axis.horizontal,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(80, 20, 100, 20),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Container(
                                      width: 0,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4,
                                            color: Color(0x33000000),
                                            offset: Offset(0, 2),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Text(
                                          '                      🥇\n           Experience:\n     Product Manager\n(Currently in Syntalix)',
                                          style: FlutterFlowTheme.of(context).titleLarge.override(
                                            fontFamily: 'Outfit',
                                            fontSize: 20,
                                            letterSpacing: 0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(80, 20, 100, 20),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Container(
                                      width: 0,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4,
                                            color: Color(0x33000000),
                                            offset: Offset(0, 2),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Text(
                                          '            💼\n      Projects: \n  6+ completed ',
                                          style: FlutterFlowTheme.of(context).headlineMedium.override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(80, 20, 100, 20),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Container(
                                      width: 0,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4,
                                            color: Color(0x33000000),
                                            offset: Offset(0, 2),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Text(
                                          '         🎓\n Academics: \n 9.5+ CGPA',
                                          style: FlutterFlowTheme.of(context).headlineMedium.override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1, 1),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(170, 0, 0, 16),
                              child: smooth_page_indicator.SmoothPageIndicator(
                                controller: pageViewController,
                                count: 3,
                                axisDirection: Axis.horizontal,
                                onDotClicked: (i) async {
                                  await pageViewController.animateToPage(
                                    i,
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.ease,
                                  );
                                  onPageChanged(i);
                                },
                                effect: smooth_page_indicator.ExpandingDotsEffect(
                                  expansionFactor: 2,
                                  spacing: 4,
                                  radius: 18,
                                  dotWidth: 16,
                                  dotHeight: 8,
                                  dotColor: Color(0x7157636C),
                                  activeDotColor: FlutterFlowTheme.of(context).primaryText,
                                  paintStyle: PaintingStyle.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Builder(
                  builder: (context) => Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(isWeb ? 1100 : 20, 130, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Share.share(
                          '',
                          sharePositionOrigin: getWidgetBoundingBox(context),
                        );
                      },
                      text: 'Download CV',
                      icon: Icon(
                        Icons.edit_document,
                        size: 30,
                      ),
                      options: FFButtonOptions(
                        width: 300,
                        height: 100,
                        padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        textStyle: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0,
                          fontWeight: FontWeight.w600,
                        ),
                        elevation: 4,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        hoverColor: Color(0xFF9CA3A6),
                        hoverTextColor: FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(isWeb ? 760 : 20, 300, 10, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Text(
                      'Hello! I\'m an enthusiastic app developer with a passion for creating innovative and intelligent solutions. I specialize in crafting user-friendly apps infused with cutting-edge AI capabilities.\n\nMy goal is to transform ideas into sleek, functional digital experiences that push the boundaries of technology. Whether it\'s simplifying daily tasks with a mobile app or driving innovation with sophisticated AI, I\'m dedicated to making a real impact.',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
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
