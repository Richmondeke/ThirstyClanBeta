import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'count_model.dart';
export 'count_model.dart';

class CountWidget extends StatefulWidget {
  const CountWidget({
    Key? key,
    this.quantity,
  }) : super(key: key);

  final int? quantity;

  @override
  _CountWidgetState createState() => _CountWidgetState();
}

class _CountWidgetState extends State<CountWidget> {
  late CountModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CountModel());

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

    return Container(
      width: 133.7,
      height: 63.4,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
        child: Container(
          width: 130.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(12.0),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: FlutterFlowTheme.of(context).primaryBackground,
              width: 2.0,
            ),
          ),
          child: FlutterFlowCountController(
            decrementIconBuilder: (enabled) => Icon(
              Icons.remove_rounded,
              color: enabled
                  ? FlutterFlowTheme.of(context).secondaryText
                  : FlutterFlowTheme.of(context).secondaryText,
              size: 16.0,
            ),
            incrementIconBuilder: (enabled) => Icon(
              Icons.add_rounded,
              color: enabled
                  ? FlutterFlowTheme.of(context).primary
                  : FlutterFlowTheme.of(context).secondaryText,
              size: 16.0,
            ),
            countBuilder: (count) => Text(
              count.toString(),
              style: FlutterFlowTheme.of(context).titleMedium,
            ),
            count: _model.countControllerValue ??= 1,
            updateCount: (count) =>
                setState(() => _model.countControllerValue = count),
            stepSize: 1,
            minimum: 1,
          ),
        ),
      ),
    );
  }
}
