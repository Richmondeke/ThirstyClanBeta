import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductdetailsNewModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for modifiers widget.
  List<String>? modifiersValues;
  FormFieldController<List<String>>? modifiersValueController;
  // State field(s) for modifiers_2 widget.
  List<String>? modifiers2Values;
  FormFieldController<List<String>>? modifiers2ValueController;
  // State field(s) for modifiers_3 widget.
  List<String>? modifiers3Values;
  FormFieldController<List<String>>? modifiers3ValueController;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ItemDetailRecord? iteminCart;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Additional helper methods are added here.

}
