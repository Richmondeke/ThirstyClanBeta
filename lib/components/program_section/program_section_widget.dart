import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'program_section_model.dart';
export 'program_section_model.dart';

class ProgramSectionWidget extends StatefulWidget {
  const ProgramSectionWidget({
    Key? key,
    this.title,
    this.body,
  }) : super(key: key);

  final String? title;
  final String? body;

  @override
  _ProgramSectionWidgetState createState() => _ProgramSectionWidgetState();
}

class _ProgramSectionWidgetState extends State<ProgramSectionWidget> {
  late ProgramSectionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProgramSectionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                widget.title!,
                style: FlutterFlowTheme.of(context).titleSmall,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                  child: Text(
                    widget.body!,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: FlutterFlowTheme.of(context).darkText,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 2.0,
          thickness: 1.0,
          indent: 12.0,
          endIndent: 12.0,
          color: FlutterFlowTheme.of(context).lightLines,
        ),
      ],
    );
  }
}
