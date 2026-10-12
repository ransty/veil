import 'password_validation_result.dart';
import 'password_validator.dart';

class DefaultPasswordValidator implements PasswordValidator {
  @override
  PasswordValidationResult validate(String password) {
    final normalized = password.trim();

    if (normalized.isEmpty) {
      return const PasswordValidationResult.invalid(
        PasswordValidationError.required,
      );
    }

    if (normalized.length <= 16) {
      return const PasswordValidationResult.invalid(
        PasswordValidationError.minLength,
      );
    }

    return const PasswordValidationResult.valid();
  }
}
