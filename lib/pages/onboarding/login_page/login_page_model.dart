import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends FlutterFlowModel {
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
  TextEditingController? passwordCreateController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)? passwordCreateControllerValidator;
  // State field(s) for firstName widget.
  TextEditingController? firstNameController1;
  String? Function(BuildContext, String?)? firstNameController1Validator;
  // State field(s) for firstName widget.
  TextEditingController? firstNameController2;
  final firstNameMask2 = MaskTextInputFormatter(mask: '##-#######');
  String? Function(BuildContext, String?)? firstNameController2Validator;
  // State field(s) for firstName widget.
  TextEditingController? firstNameController3;
  String? Function(BuildContext, String?)? firstNameController3Validator;
  // State field(s) for lastName widget.
  TextEditingController? lastNameController1;
  String? Function(BuildContext, String?)? lastNameController1Validator;
  // State field(s) for lastName widget.
  TextEditingController? lastNameController2;
  String? Function(BuildContext, String?)? lastNameController2Validator;
  // State field(s) for lastName widget.
  TextEditingController? lastNameController3;
  String? Function(BuildContext, String?)? lastNameController3Validator;
  // State field(s) for lastName widget.
  TextEditingController? lastNameController4;
  String? Function(BuildContext, String?)? lastNameController4Validator;
  // State field(s) for lastName widget.
  TextEditingController? lastNameController5;
  String? Function(BuildContext, String?)? lastNameController5Validator;
  // State field(s) for document_numbe widget.
  TextEditingController? documentNumbeController1;
  final documentNumbeMask1 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? documentNumbeController1Validator;
  // State field(s) for document_numbe widget.
  TextEditingController? documentNumbeController2;
  late bool documentNumbeVisibility;
  String? Function(BuildContext, String?)? documentNumbeController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordCreateVisibility = false;
    documentNumbeVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    emailAddressController?.dispose();
    passwordController?.dispose();
    emailAddressCreateController?.dispose();
    passwordCreateController?.dispose();
    firstNameController1?.dispose();
    firstNameController2?.dispose();
    firstNameController3?.dispose();
    lastNameController1?.dispose();
    lastNameController2?.dispose();
    lastNameController3?.dispose();
    lastNameController4?.dispose();
    lastNameController5?.dispose();
    documentNumbeController1?.dispose();
    documentNumbeController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
