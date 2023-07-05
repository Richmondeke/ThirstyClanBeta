import '/components/main_hero/main_hero_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SelectOptionsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for mainHero component.
  late MainHeroModel mainHeroModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainHeroModel = createModel(context, () => MainHeroModel());
  }

  void dispose() {
    mainHeroModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
