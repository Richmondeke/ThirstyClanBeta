import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
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
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 44.0, 16.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 44.0,
                            fillColor: FlutterFlowTheme.of(context).lightText,
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: FlutterFlowTheme.of(context).grayIcon,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              context.pop();
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Html(
            data:
                '<form method=\"POST\" action=\"https://checkout.flutterwave.com/v3/hosted/pay\">\n  <div>\n    Your order is ₦3,400\n  </div>\n  <input type=\"hidden\" name=\"public_key\" value=\"FLWPUBK_TEST-SANDBOXDEMOKEY-X\" />\n  <input type=\"hidden\" name=\"customer[email]\" value=\"jessepinkman@walterwhite.org\" />\n  <input type=\"hidden\" name=\"customer[name]\" value=\"Jesse Pinkman\" />\n  <input type=\"hidden\" name=\"tx_ref\" value=\"bitethtx-019203\" />\n  <input type=\"hidden\" name=\"amount\" value=\"3400\" />\n  <input type=\"hidden\" name=\"currency\" value=\"NGN\" />\n  <input type=\"hidden\" name=\"meta[token]\" value=\"54\" />\n  <input type=\"hidden\" name=\"redirect_url\" value=\"https://demoredirect.localhost.me/\" />\n  <button type=\"submit\" id=\"start-payment-button\">Pay Now</button>',
          ),
        ],
      ),
    );
  }
}
