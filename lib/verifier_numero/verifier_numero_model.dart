import '/flutter_flow/flutter_flow_util.dart';
import 'verifier_numero_widget.dart' show VerifierNumeroWidget;
import 'package:flutter/material.dart';

class VerifierNumeroModel extends FlutterFlowModel<VerifierNumeroWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
