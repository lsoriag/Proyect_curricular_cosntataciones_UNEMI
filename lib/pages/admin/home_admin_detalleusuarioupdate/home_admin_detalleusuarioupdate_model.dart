import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_admin_detalleusuarioupdate_widget.dart'
    show HomeAdminDetalleusuarioupdateWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeAdminDetalleusuarioupdateModel
    extends FlutterFlowModel<HomeAdminDetalleusuarioupdateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for codigounico widget.
  FocusNode? codigounicoFocusNode1;
  TextEditingController? codigounicoController1;
  String? Function(BuildContext, String?)? codigounicoController1Validator;
  // State field(s) for correo widget.
  FocusNode? correoFocusNode;
  TextEditingController? correoController;
  String? Function(BuildContext, String?)? correoControllerValidator;
  // State field(s) for fono widget.
  FocusNode? fonoFocusNode;
  TextEditingController? fonoController;
  String? Function(BuildContext, String?)? fonoControllerValidator;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;
  // State field(s) for codigounico widget.
  FocusNode? codigounicoFocusNode2;
  TextEditingController? codigounicoController2;
  String? Function(BuildContext, String?)? codigounicoController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    nameFocusNode?.dispose();
    nameController?.dispose();

    codigounicoFocusNode1?.dispose();
    codigounicoController1?.dispose();

    correoFocusNode?.dispose();
    correoController?.dispose();

    fonoFocusNode?.dispose();
    fonoController?.dispose();

    codigounicoFocusNode2?.dispose();
    codigounicoController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
