import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
class HeaderSection extends StatelessWidget {
  final bool isWeb;

  const HeaderSection({required this.isWeb, Key? key}) : super(key: key);

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: isWeb ? 600 : 400,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Opacity(
                opacity: 0.7,
                child: Lottie.network(
                  'https://lottie.host/c6a69108-6375-46c3-8a02-2f1d752bef39/IlXWaWCXOR.json',
                  width: isWeb ? 1472 : MediaQuery.of(context).size.width,
                  height: isWeb ? 580 : 300,
                  fit: BoxFit.cover,
                  animate: true,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(isWeb ? 100 : 10, 200, 0, 0),
                child: Row(
                  children: [
                    Column(
                      children: [

                        IconButton(
                            icon: FaIcon(FontAwesomeIcons.linkedin),
                            onPressed: () async {
                              await _launchUrl('https://www.linkedin.com/in/ambud-lahiri-b2a98a252/');
                            },
                          ),
                        SizedBox(height: 10),
                        IconButton(

                          icon: FaIcon(FontAwesomeIcons.github),
                          onPressed: () async {
                            await _launchUrl('https://github.com/Ambudlahiri144');
                          },
                        ),
                        SizedBox(height: 10),
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.instagram),
                          onPressed: () async {
                            await _launchUrl('https://www.instagram.com/ambudlahiri_004/');
                          },
                        ),

                      ],
                    ),

                    SizedBox(width: 100), // Space between icons and text
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'HI, I\'M AMBUD LAHIRI',
                          style: FlutterFlowTheme.of(context).displaySmall.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(height: 10), // Space between the title and subtitle
                        Text(
                          'Transforming Concepts into Reality \nwith ML and App Development',
                          style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF3D444B),
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              if (isWeb)
                Align(
                  alignment: AlignmentDirectional(0.81, -0.85),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                    child: Container(
                      width: 400,
                      height: 400,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'port_face.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}