import '/account_profile_creation/edit_profile_auth_2/edit_profile_auth2_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_edite_perfil_widget.dart' show HomeEditePerfilWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeEditePerfilModel extends FlutterFlowModel<HomeEditePerfilWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for editProfile_auth_2 component.
  late EditProfileAuth2Model editProfileAuth2Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    editProfileAuth2Model = createModel(context, () => EditProfileAuth2Model());
  }

  void dispose() {
    unfocusNode.dispose();
    editProfileAuth2Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
