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
import 'package:provider/provider.dart';

class EditArtisteModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for descriptiom widget.
  TextEditingController? descriptiomController;
  String? Function(BuildContext, String?)? descriptiomControllerValidator;
  // State field(s) for Twitter widget.
  TextEditingController? twitterController;
  String? Function(BuildContext, String?)? twitterControllerValidator;
  // State field(s) for instagram widget.
  TextEditingController? instagramController;
  String? Function(BuildContext, String?)? instagramControllerValidator;
  // State field(s) for TikTok widget.
  TextEditingController? tikTokController;
  String? Function(BuildContext, String?)? tikTokControllerValidator;
  // State field(s) for AppleMusic widget.
  TextEditingController? appleMusicController;
  String? Function(BuildContext, String?)? appleMusicControllerValidator;
  // State field(s) for Spotify widget.
  TextEditingController? spotifyController;
  String? Function(BuildContext, String?)? spotifyControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textController1?.dispose();
    descriptiomController?.dispose();
    twitterController?.dispose();
    instagramController?.dispose();
    tikTokController?.dispose();
    appleMusicController?.dispose();
    spotifyController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
