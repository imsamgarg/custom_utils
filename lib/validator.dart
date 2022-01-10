import 'package:custom_utils/getx_utils.dart';

class ValidatorMixin {
  String _trimmedString(String? v) {
    final String value = v ?? "";
    return value.removeAllWhitespace;
  }

  String? phoneNumberValidator(String? _value, [int minLen = 10]) {
    final String value = _trimmedString(_value);

    if (value.isEmpty) return "Please Enter Phone Number";
    if (value.isPhoneNumber) return "Enter Valid Number";
    if (value.length < 10) return "Enter Valid Number";
    return null;
  }

  String? emailValidator(String? _value, [int minLen = 10]) {
    final String value = _trimmedString(_value);

    if (value.isEmpty) return "Please Enter Phone Number";
    if (!value.isEmail) return "Please Enter Valid Email";
    return null;
  }

  String? passValidator(String? _value, [int minLen = 10]) {
    final String value = _trimmedString(_value);

    if (value.isEmpty) return "Please Enter Password";
    return null;
  }

  String? otpCodeValidator(String? _value, [int minLen = 6]) {
    final String value = _trimmedString(_value);

    if (value.isEmpty) return "Please Enter Otp";
    if (!value.isNumericOnly) return "Only Digits Are Allowed";
    if (value.length != minLen) return "Enter 6 Digits ";
    return null;
  }

  String? nameValidator(String? _value, [bool numbersAllowed = false]) {
    final String value = _trimmedString(_value);
    if (value.isEmpty) return "Please Enter Name";
    if (!value.isAlphabetOnly && !numbersAllowed) {
      return "Only Alphabets Are Allowed";
    }
    return null;
  }

  String? requiredValidator(String? _value, [int? minLen, int? maxLen]) {
    final String value = _trimmedString(_value);
    if (value.isEmpty) return "Please Enter Value";
    if (minLen != null && value.length < minLen) {
      return "Enter Min $minLen Characters";
    }
    if (maxLen != null && value.length > maxLen) {
      return "Max $maxLen Characters Allowed";
    }
  }
}
