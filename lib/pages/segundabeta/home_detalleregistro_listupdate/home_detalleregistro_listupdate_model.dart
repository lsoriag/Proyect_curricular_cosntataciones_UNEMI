import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'home_detalleregistro_listupdate_widget.dart'
    show HomeDetalleregistroListupdateWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeDetalleregistroListupdateModel
    extends FlutterFlowModel<HomeDetalleregistroListupdateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for Condicionoptions widget.
  String? condicionoptionsValue;
  FormFieldController<String>? condicionoptionsValueController;
  // State field(s) for firma widget.
  FocusNode? firmaFocusNode;
  TextEditingController? firmaController;
  String? Function(BuildContext, String?)? firmaControllerValidator;
  String? _firmaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'firma requerida';
    }

    return null;
  }

  // State field(s) for simer widget.
  bool? simerValue;
  // State field(s) for identificacion widget.
  bool? identificacionValue;
  // State field(s) for condicion widget.
  bool? condicionValue;
  // State field(s) for ubicacion widget.
  bool? ubicacionValue;
  // State field(s) for comentario widget.
  FocusNode? comentarioFocusNode;
  TextEditingController? comentarioController;
  String? Function(BuildContext, String?)? comentarioControllerValidator;
  // State field(s) for mantenimiento widget.
  bool? mantenimientoValue;
  // State field(s) for usoyefi widget.
  bool? usoyefiValue;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    firmaControllerValidator = _firmaControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    firmaFocusNode?.dispose();
    firmaController?.dispose();

    comentarioFocusNode?.dispose();
    comentarioController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
