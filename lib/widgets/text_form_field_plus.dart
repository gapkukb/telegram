import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nil/nil.dart';

class TextFormFieldPlus extends StatefulWidget {
  final String? placeholder;
  final dynamic icon;
  final void Function(String? value) onSaved;
  final String? Function(String? value) validator;
  final TextEditingController? controller;
  final bool obscureText;
  final bool autofocus;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final int? maxLength;
  final String? initialValue;

  const TextFormFieldPlus({
    super.key,
    this.placeholder,
    this.icon,
    this.controller,
    this.obscureText = false,
    this.autofocus = false,
    this.keyboardType,
    this.maxLength,
    this.textInputAction,
    this.initialValue,
    required this.onSaved,
    required this.validator,
  });

  @override
  TextFormFieldPlusState createState() => TextFormFieldPlusState();
}

class TextFormFieldPlusState extends State<TextFormFieldPlus> {
  static const borderSide = BorderSide(width: 0.5, color: Colors.grey);
  static final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(4.0),
    borderSide: borderSide,
  );
  static final errorBorder = border.copyWith(
    borderSide: borderSide.copyWith(color: Colors.red),
  );

  late final TextEditingController _controller;
  final stream = StreamController<bool>();

  @override
  void initState() {
    _controller = widget.controller ?? TextEditingController();
    _controller.addListener(() {
      stream.add(_controller.text.isNotEmpty);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (value) {
        if (value) {
          stream.add(_controller.text.isNotEmpty);
        } else {
          stream.add(false);
        }
      },
      child: TextFormField(
        controller: _controller,
        onSaved: widget.onSaved,
        validator: widget.validator,
        obscureText: widget.obscureText,
        autofocus: widget.autofocus,
        keyboardType: widget.keyboardType,
        maxLength: widget.maxLength,
        textInputAction: widget.textInputAction,
        initialValue: widget.initialValue,
        decoration: InputDecoration(
          border: border,
          enabledBorder: border,
          focusedBorder: border,
          disabledBorder: border,
          focusedErrorBorder: errorBorder,
          errorBorder: errorBorder,
          hintText: widget.placeholder,
          suffixIcon: StreamBuilder<bool>(
            initialData: false,
            stream: stream.stream,
            builder: (context, snapshot) {
              return snapshot.data!
                  ? GestureDetector(
                    onTap: _controller.clear,
                    child: const Icon(Icons.cancel_outlined),
                  )
                  : nil;
            },
          ),
          prefixIcon: widget.icon == null ? null : Icon(widget.icon),
        ),
      ),
    );
  }
}
