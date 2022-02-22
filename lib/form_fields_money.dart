import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:flutter/material.dart';

import 'form_fields.dart';

/// A component used to centralize Focus and TextEditingController in one place,
/// And also the possibility to use a mask just using .mask(....)
/// This is useful when a screen has a lot of textFormField
///
/// Example:
///
/// FormFields() or FormFields(focusNode: FocusNode())
/// FormFields.money()
class FormFieldsMoney extends FormFields {
  FormFieldsMoney({
    FocusNode? focus,
    MoneyMaskedTextController? controller,
  }) : super(focus: focus, controller: controller);

  factory FormFieldsMoney.money({String leftSymbol = 'U\$'}) {
    return FormFieldsMoney(
      focus: FocusNode(),
      controller: MoneyMaskedTextController(leftSymbol: leftSymbol),
    );
  }

  double get numberValue {
    return (controller as MoneyMaskedTextController).numberValue;
  }

  void updateValue(double value) {
    (controller as MoneyMaskedTextController).updateValue(value);
  }
}
