import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'main.dart' show HomePageWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
as smooth_page_indicator;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
// import 'package:share_plus/share_plus.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;
  int _pageViewCurrentIndex = 0;

  int get pageViewCurrentIndex => _pageViewCurrentIndex;
  set pageViewCurrentIndex(int index) {
    _pageViewCurrentIndex = index;
  }

  // Carousel controller.
  CarouselController? carouselController;
  int _carouselCurrentIndex = 1;

  int get carouselCurrentIndex => _carouselCurrentIndex;
  set carouselCurrentIndex(int index) {
    _carouselCurrentIndex = index;
  }

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}