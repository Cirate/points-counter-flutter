import 'package:flutter/material.dart';

class TextFormFieldPO {
  TextFormFieldPO({@required this.hint, @required this.label, FormFieldValidator<String> validator, this.initialValue}){
    this.value = initialValue;
    if (validator != null) {
      this._validator = (newValue) {
        if (_isChangedWasTriggered) {
          return validator(newValue);
        }
        else {
          return null;
        }
      };
    }
  }

  String value;
  final String initialValue;
  final String hint;
  final String label;
  final bool autovalidate = true;
  FormFieldValidator<String> _validator;
  FormFieldValidator<String> get validator => _validator;
  bool _isChangedWasTriggered = false;

  void onChanged(String value) {
    _isChangedWasTriggered = true;
    this.value = value;
  }

  void resetState() {
    value = initialValue;
    _isChangedWasTriggered = false;
  }
}