import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'home_admin_ingresoactivos_widget.dart'
    show HomeAdminIngresoactivosWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomeAdminIngresoactivosModel
    extends FlutterFlowModel<HomeAdminIngresoactivosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for identificacion widget.
  FocusNode? identificacionFocusNode;
  TextEditingController? identificacionController;
  String? Function(BuildContext, String?)? identificacionControllerValidator;
  String? _identificacionControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Codigo nuevo requerido';
    }

    return null;
  }

  // State field(s) for Descripciondelactivo widget.
  String? descripciondelactivoValue;
  FormFieldController<String>? descripciondelactivoValueController;
  // State field(s) for Condicionoptions widget.
  String? condicionoptionsValue;
  FormFieldController<String>? condicionoptionsValueController;
  // State field(s) for encargadoactivo widget.
  String? encargadoactivoValue;
  FormFieldController<String>? encargadoactivoValueController;
  // State field(s) for comentario widget.
  FocusNode? comentarioFocusNode;
  TextEditingController? comentarioController;
  String? Function(BuildContext, String?)? comentarioControllerValidator;
  // State field(s) for simercompra widget.
  bool? simercompraValue;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for codigoqr widget.
  FocusNode? codigoqrFocusNode;
  TextEditingController? codigoqrController;
  String? Function(BuildContext, String?)? codigoqrControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    identificacionControllerValidator = _identificacionControllerValidator;
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  void dispose() {
    unfocusNode.dispose();
    identificacionFocusNode?.dispose();
    identificacionController?.dispose();

    comentarioFocusNode?.dispose();
    comentarioController?.dispose();

    codigoqrFocusNode?.dispose();
    codigoqrController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
