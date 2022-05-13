import 'package:flutter/material.dart' show FocusNode;

/// A component used to prevent the keyboard appearance on TextField. It is
/// useful when the TextField only triggers some picker, such as DatePicker or
/// TimePicker.
/// 
/// Example:
/// 
/// TextFormField(
///   focusNode: AlwaysDisabledFocusNode(),
///   ...
/// )
class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}