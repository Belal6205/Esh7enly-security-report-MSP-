abstract class AppValidators {
  static String? required(String? value, {String field = 'This field'}) {
    if (value == null || value.trim().isEmpty) {
      return '$field is required';
    }
    return null;
  }

  static String? email(String? value) {
    final requiredError = required(value, field: 'Email');
    if (requiredError != null) return requiredError;
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
    if (!emailRegex.hasMatch(value!.trim())) {
      return 'Enter a valid email';
    }
    return null;
  }

  static String? password(String? value) {
    final requiredError = required(value, field: 'Password');
    if (requiredError != null) return requiredError;
    if (value!.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  static String? confirmPassword(String? value, String password) {
    final requiredError = required(value, field: 'Confirm password');
    if (requiredError != null) return requiredError;
    if (value != password) {
      return 'Passwords do not match';
    }
    return null;
  }

  static String? phone(String? value) {
    return required(value, field: 'Phone number');
  }
}
