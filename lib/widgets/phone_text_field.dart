import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PhoneTextField extends StatefulWidget {
  const PhoneTextField({super.key});

  @override
  _PhoneTextFieldState createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends State<PhoneTextField> {
  static final _style = OutlineInputBorder(
    borderRadius: BorderRadius.circular(99.w),
    borderSide: BorderSide(width: 1.w),
  );

  static final maskFormatter = MaskTextInputFormatter(
    mask: '#### ### ####',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  final _textController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _textController.addListener(() {
      // using Ashok's answer to format the text
      final regEx = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
      matchFunc(Match match) => '${match[1]},';
      final text = _textController.text;

      _textController.value = _textController.value.copyWith(
        // we need to remove all the ',' from the values before reformatting
        // if you use other formatting values, remember to remove them here
        text: text.replaceAll(',', '').replaceAllMapped(regEx, matchFunc),
        // this will keep the cursor on the right as you type in values
        // selection: TextSelection(
        //   baseOffset: text.length,
        //   extentOffset: text.length,
        // ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorWidth: 2.w,
      keyboardType: TextInputType.numberWithOptions(decimal: false),
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      autofocus: true,
      decoration: InputDecoration(
        hintText: "09XX XXX XXXX",
        labelText: 'Phone Number',
        // border: _style,
        // errorBorder: _style,
        // enabledBorder: _style,
        // focusedBorder: _style,
        // disabledBorder: _style,
        // focusedErrorBorder: _style.copyWith(
        //   borderSide: BorderSide(color: Colors.red),
        // ),
      ),
    );
  }
}
