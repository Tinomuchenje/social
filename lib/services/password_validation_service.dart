class PasswordValidationService{
  static bool containsMinimumEightCharacters(String controlValue) => _validatePasswordRegex(r'(?=.{8})', controlValue);

  static bool containsSpecialCharater(String controlValue) => _validatePasswordRegex(r'(?=.*[!@#$%^&*()_+])', controlValue);

  static bool containsUppercase(String controlValue) => _validatePasswordRegex(r'(?=.*[A-Z])', controlValue);

  static bool containsLowercase(String controlValue) => _validatePasswordRegex(r'(?=.*[a-z])',controlValue);

  static bool conatainsDigit(String controlValue) => _validatePasswordRegex(r'(?=.*[0-9])', controlValue);

  static bool _validatePasswordRegex(String expression, String controlValue) {
    return RegExp(expression).hasMatch(controlValue);
  }

}