import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignupModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for emailAddress-Create widget.
  TextEditingController? emailAddressCreateController;
  String? Function(BuildContext, String?)?
      emailAddressCreateControllerValidator;
  // State field(s) for password-Create widget.
  TextEditingController? passwordCreateController1;
  late bool passwordCreateVisibility1;
  String? Function(BuildContext, String?)? passwordCreateController1Validator;
  // State field(s) for password-Create widget.
  TextEditingController? passwordCreateController2;
  late bool passwordCreateVisibility2;
  String? Function(BuildContext, String?)? passwordCreateController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordCreateVisibility1 = false;
    passwordCreateVisibility2 = false;
  }

  void dispose() {
    unfocusNode.dispose();
    emailAddressController?.dispose();
    passwordController?.dispose();
    emailAddressCreateController?.dispose();
    passwordCreateController1?.dispose();
    passwordCreateController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
