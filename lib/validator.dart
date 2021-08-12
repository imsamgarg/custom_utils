// abstract class Validators {
//   String? emailValidator();
// }

// class temp extends Validators {}

mixin Validator {
  String? emailValidator(String? string) {
    string ??= '';
    if (string.isEmpty) return 'Please Enter Email Address';
    if (!RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(string)) return 'Please Enter Valid Email Address';
    return null;
  }

  String? requiredValidator(String? string) {
    string ??= '';
    if (string.isEmpty) return 'Please Enter Value';
    // if (!RegExp(
    //         r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
    //     .hasMatch(string)) return 'Please Enter Valid Email Address';
    return null;
  }

  String? lengthValidtor(String? string, int minLength, [int? maxLength]) {
    string ??= '';
    if (string.isEmpty) return 'Please Enter Value';
    if (string.length < minLength)
      return 'Value Must Be $minLength Characters Long';
    if (maxLength != null && string.length > maxLength)
      return 'Value Must Not Exceed $maxLength Characters';
    // if (!RegExp(
    //         r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
    //     .hasMatch(string)) return 'Please Enter Valid Email Address';
    return null;
  }
}
