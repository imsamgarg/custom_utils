abstract class CustomValidator<T> {
  final String? message;

  const CustomValidator({this.message});

  String? validate(T? value);
}

class RequiredValidator<T> extends CustomValidator<T> {
  const RequiredValidator({super.message = "Please Enter Value"});

  @override
  String? validate(T? value) {
    if (value == null) return message;

    if (value is String && value.isEmpty) return message;

    return null;
  }
}

/// [OptionalValidator]
///
/// Cancel all validators if value is empty or null else pass on value to other validators..
///
/// This validator will be used for fields that are optional,
/// but if user enters something then we need to validate it with some other validators.
///
/// Note: Should be used in [ValidatorGroup]
class OptionalValidator<T> extends CustomValidator<T> {
  const OptionalValidator();

  @override
  String? validate(T? value) {
    // Returning empty string indicating [ValidatorGroup] to return null and cancel other validators
    if (value == null) return "";

    // Returning empty string indicating [ValidatorGroup] to return null and cancel other validators
    if (value is String && value.isEmpty) return "";

    // Returning null so that other validator can execute...
    return null;
  }
}

class HasPatternValidator extends CustomValidator<String> {
  final Pattern pattern;

  const HasPatternValidator(this.pattern, {required super.message});

  @override
  String? validate(String? value) {
    final contains = value?.contains(pattern) ?? false;

    if (!contains) return message;

    return null;
  }
}

class DoesNotHavePatternValidator extends HasPatternValidator {
  const DoesNotHavePatternValidator(super.pattern, {required super.message});

  @override
  String? validate(String? value) {
    // Just simply reverse it
    if (super.validate(value) == null) return message;

    return null;
  }
}

class ValidatorGroup<T> extends CustomValidator<T> {
  final List<CustomValidator<T>> validators;

  const ValidatorGroup(this.validators);

  @override
  String? validate(T? value) {
    for (final validator in validators) {
      final msg = validator.validate(value);
      if (msg != null) {
        // if msg is empty then it is assumed that the value is returned by [OptionalValidator],
        // that means we shall return early..
        if (msg.isEmpty) return null;
        return msg;
      }
    }

    return null;
  }
}

class IsIntValidator extends CustomValidator<String> {
  const IsIntValidator({super.message = "Please Enter Valid Number"});

  @override
  String? validate(String? value) {
    final num = int.tryParse(value ?? "a" /* stub value */);

    if (num == null) return message;

    return null;
  }
}

class IsDoubleValidator extends CustomValidator<String> {
  const IsDoubleValidator({super.message = "Please Enter Valid Number"});

  @override
  String? validate(String? value) {
    final num = double.tryParse(value ?? "a" /* stub value */);

    if (num == null) return message;

    return null;
  }
}

class EmailValidator extends HasPatternValidator {
  EmailValidator({super.message = "Please Enter Valid Email"})
      : super(RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"));
}

class OnlyAlbhaletsValidator extends HasPatternValidator {
  OnlyAlbhaletsValidator({super.message = "Only Alphabets are allowed"})
      : super(RegExp(r"^[a-zA-Z ]*$"));
}

class OnlyDigitsValidator extends HasPatternValidator {
  OnlyDigitsValidator({super.message = "Only digits are allowed"})
      : super(RegExp(r"^[0-9]*$"));
}

class MaxLengthValidator extends CustomValidator<String> {
  const MaxLengthValidator(this.length, {required super.message});

  final int length;

  @override
  String? validate(String? value) {
    final l = value?.length ?? 0;

    if (l > length) return message;

    return null;
  }
}

class MinLengthValidator extends CustomValidator<String> {
  const MinLengthValidator(this.length, {required super.message});

  final int length;

  @override
  String? validate(String? value) {
    final l = value?.length ?? double.infinity;

    if (l < length) return message;

    return null;
  }
}

class ExactLengthValidator extends CustomValidator<String> {
  const ExactLengthValidator(this.length, {required super.message});

  final int length;

  @override
  String? validate(String? value) {
    final l = value?.length ?? double.infinity;

    if (l != length) return message;

    return null;
  }
}

class CustomValidatorWrapper<T> extends CustomValidator<T> {
  final String? Function(T? value) validator;

  CustomValidatorWrapper({required this.validator});

  @override
  String? validate(T? value) => validator(value);
}
