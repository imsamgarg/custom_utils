import 'package:flutter/services.dart';

class MoneyInputFormatter extends FilteringTextInputFormatter {
  MoneyInputFormatter()
      : super(
          RegExp(r'(^\d+\.{0,1}\d{0,2})'),
          allow: true,
          replacementString: "",
        );
}

class NameInputFormatter extends FilteringTextInputFormatter {
  NameInputFormatter()
      : super(
          RegExp("[a-z|A-Z| |.]"),
          allow: true,
          replacementString: "",
        );
}

class AlphaNumericInputFormatter extends FilteringTextInputFormatter {
  AlphaNumericInputFormatter()
      : super(
          RegExp("[a-z|A-Z|0-9]"),
          allow: true,
          replacementString: "",
        );
}
