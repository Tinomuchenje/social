import 'package:flutter_test/flutter_test.dart';
import 'package:social/services/password_validation_service.dart';

void main() {
  group("ContainsMinimumEightCharacters", () {
    test("LessThanEight_Fails", () {
      // Arrange

      // Act
      bool result =
          PasswordValidationService.containsMinimumEightCharacters("t");

      // Assert
      expect(false, result);
    });

    test("EightCharacters_Pass", () {
      // Arrange

      // Act
      bool result =
          PasswordValidationService.containsMinimumEightCharacters("123456782");

      // Assert
      expect(true, result);
    });
  });

  group("ContainsSpecialCharacters", () {
    test("NoSpecialCharacters_Fails", () {
      // Arrange

      // Act
      bool result = PasswordValidationService.containsSpecialCharater("t");

      // Assert
      expect(false, result);
    });

    test("HasSpecialCharacters_Pass", () {
      // Arrange

      // Act
      bool result =
          PasswordValidationService.containsSpecialCharater("12345678*");

      // Assert
      expect(true, result);
    });
  });

  group("ContainsUppercase", () {
    test("NoUppercase_Fails", () {
      // Arrange

      // Act
      bool result = PasswordValidationService.containsUppercase("t");

      // Assert
      expect(false, result);
    });

    test("HasUppercase_Pass", () {
      // Arrange

      // Act
      bool result = PasswordValidationService.containsUppercase("tT");

      // Assert
      expect(true, result);
    });
  });

  group("ContainsLowercase", () {
    test("NoLowercase_Fails", () {
      // Arrange

      // Act
      bool result = PasswordValidationService.containsLowercase("T");

      // Assert
      expect(false, result);
    });

    test("HasLowercase_Pass", () {
      // Arrange

      // Act
      bool result = PasswordValidationService.containsLowercase("tT");

      // Assert
      expect(true, result);
    });
  });

  group("ContainsDigit", () {
    test("NoDigit_Fails", () {
      // Arrange

      // Act
      bool result = PasswordValidationService.conatainsDigit("T");

      // Assert
      expect(false, result);
    });

    test("HasDigit_Pass", () {
      // Arrange

      // Act
      bool result = PasswordValidationService.conatainsDigit("tT9");

      // Assert
      expect(true, result);
    });
  });

  test("ValidCredentials_PasswordIsValid", () {
    // Arrange
    String password = "passWo#rd9";
    // Act
    bool result =
        PasswordValidationService.containsMinimumEightCharacters(password) &&
            PasswordValidationService.containsSpecialCharater(password) &&
            PasswordValidationService.containsUppercase(password) &&
            PasswordValidationService.containsLowercase(password) &&
            PasswordValidationService.conatainsDigit(password);

    // Assert
    expect(true, result);
  });
}
