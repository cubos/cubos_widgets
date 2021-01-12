import 'package:flutter/material.dart' show FocusNode;

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}