import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'thirsty_lab_model.dart';
export 'thirsty_lab_model.dart';

class ThirstyLabWidget extends StatefulWidget {
  const ThirstyLabWidget({Key? key}) : super(key: key);

  @override
  _ThirstyLabWidgetState createState() => _ThirstyLabWidgetState();
}

class _ThirstyLabWidgetState extends State<ThirstyLabWidget> {
  late ThirstyLabModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ThirstyLabModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).lightText,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [],
      ),
    );
  }
}
