import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class CreateReleaseModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for ArtisteName widget.
  TextEditingController? artisteNameController;
  String? Function(BuildContext, String?)? artisteNameControllerValidator;
  // State field(s) for locationName widget.
  TextEditingController? locationNameController;
  String? Function(BuildContext, String?)? locationNameControllerValidator;
  // State field(s) for AppleMusic widget.
  TextEditingController? appleMusicController;
  String? Function(BuildContext, String?)? appleMusicControllerValidator;
  // State field(s) for Spotify widget.
  TextEditingController? spotifyController;
  String? Function(BuildContext, String?)? spotifyControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  NewReleaseRecord? createdPost;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textController1?.dispose();
    artisteNameController?.dispose();
    locationNameController?.dispose();
    appleMusicController?.dispose();
    spotifyController?.dispose();
  }

  /// Additional helper methods are added here.

}
