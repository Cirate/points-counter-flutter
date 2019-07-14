import 'package:flutter/material.dart';
import 'package:points_counter/src/libraries/presentation_objects.dart';

class TextFormFieldFromPO extends StatelessWidget {
  TextFormFieldFromPO(this._po);

  final TextFormFieldPO _po;
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidate: _po.autovalidate,
      decoration: InputDecoration(
        labelText: _po.label,
        alignLabelWithHint: true,
      ),
      validator: _po.validator,
      initialValue: _po.value,
      onChanged: _po.onChanged,
    );
  }
}
