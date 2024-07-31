import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'HeaderSection.dart';
import 'AboutMe_Section.dart';
import 'Qualifications.dart';
import 'Projects.dart';
import 'model.dart';
export 'model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Contact_Section.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController _scrollController = ScrollController();

  final GlobalKey _headerKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _qualificationsKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();


  Map<String, bool> _hovering = {
    'Home': false,
    'About': false,
    'Qualifications': false,
    'Projects': false,
    'Contact': false,
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  bool isWeb(BuildContext context) {
    return MediaQuery.of(context).size.width > 600;
  }

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(context,
          duration: Duration(seconds: 1), curve: Curves.easeInOut);
    }
  }

  TextStyle _getTextStyle(String section) {
    return TextStyle(
      color: _hovering[section]! ? Colors.blueAccent : Colors.black,
      decoration: _hovering[section]! ? TextDecoration.underline : TextDecoration.none,
      fontFamily: 'Poppins',
    );
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Text(
            'Ambud',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
              fontFamily: 'Poppins',
              letterSpacing: 0,
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: isWeb(context)
              ? [
            MouseRegion(
              onEnter: (_) => setState(() => _hovering['Home'] = true),
              onExit: (_) => setState(() => _hovering['Home'] = false),
              child: TextButton(
                onPressed: () => _scrollToSection(_headerKey),
                child: Text('Home', style: _getTextStyle('Home')),
              ),
            ),
            MouseRegion(
              onEnter: (_) => setState(() => _hovering['About'] = true),
              onExit: (_) => setState(() => _hovering['About'] = false),
              child: TextButton(
                onPressed: () => _scrollToSection(_aboutKey),
                child: Text('About', style: _getTextStyle('About')),
              ),
            ),
            MouseRegion(
              onEnter: (_) => setState(() => _hovering['Qualifications'] = true),
              onExit: (_) => setState(() => _hovering['Qualifications'] = false),
              child: TextButton(
                onPressed: () => _scrollToSection(_qualificationsKey),
                child: Text('Qualifications', style: _getTextStyle('Qualifications')),
              ),
            ),
            MouseRegion(
              onEnter: (_) => setState(() => _hovering['Projects'] = true),
              onExit: (_) => setState(() => _hovering['Projects'] = false),
              child: TextButton(
                onPressed: () => _scrollToSection(_projectsKey),
                child: Text('Projects', style: _getTextStyle('Projects')),
              ),
            ),
            MouseRegion(
              onEnter: (_) => setState(() => _hovering['Contact'] = true),
              onExit: (_) => setState(() => _hovering['Contact'] = false),
              child: TextButton(
                onPressed: () => _scrollToSection(_contactKey),
                child: Text('Contact', style: _getTextStyle('Contact')),
              ),
            ),
          ]
              : [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                scaffoldKey.currentState?.openDrawer();
              },
            ),
          ],
          centerTitle: false,
          elevation: 0,
        ),
        drawer: isWeb(context)
            ? null
            : Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Text(
                  'Ambud',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Outfit',
                    letterSpacing: 0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ListTile(
                title: Text('Home', style: TextStyle(fontFamily: 'Poppins')),
                onTap: () {
                  Navigator.pop(context);
                  _scrollToSection(_headerKey);
                },
              ),
              ListTile(
                title: Text('About', style: TextStyle(fontFamily: 'Poppins')),
                onTap: () {
                  Navigator.pop(context);
                  _scrollToSection(_aboutKey);
                },
              ),
              ListTile(
                title: Text('Qualifications', style: TextStyle(fontFamily: 'Poppins')),
                onTap: () {
                  Navigator.pop(context);
                  _scrollToSection(_qualificationsKey);
                },
              ),
              ListTile(
                title: Text('Projects', style: TextStyle(fontFamily: 'Poppins')),
                onTap: () {
                  Navigator.pop(context);
                  _scrollToSection(_projectsKey);
                },
              ),
              ListTile(
                title: Text('Contact', style: TextStyle(fontFamily: 'Poppins')),
                onTap: () {
                  Navigator.pop(context);
                  _scrollToSection(_contactKey);
                },
              ),
            ],
          ),
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HeaderSection(key: _headerKey, isWeb: isWeb(context)),
                AboutMeSection(
                  key: _aboutKey,
                  isWeb: isWeb(context),
                  pageViewController: _model.pageViewController ??= PageController(initialPage: 0),
                  onPageChanged: (index) => setState(() {
                    _model.pageViewCurrentIndex = index;
                  }),
                ),
                Container(
                  key: _qualificationsKey,
                  constraints: BoxConstraints(
                    minHeight: 300, // Ensure some height for this container
                  ),
                  child: QualificationSection(isWeb: isWeb(context)),
                ),
                ProjectsSection(
                  key: _projectsKey,
                  isWeb: isWeb(context),
                  carouselController: _model.carouselController ??= CarouselController(),
                  carouselCurrentIndex: _model.carouselCurrentIndex,
                  onPageChanged: (index) => setState(() {
                    _model.carouselCurrentIndex = index;
                  }),
                ),
                ContactSection(key: _contactKey, isWeb: isWeb(context)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}







