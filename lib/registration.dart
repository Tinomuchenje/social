import 'package:flutter/material.dart';
import 'package:social/shopping/shopping_home.dart';

import 'components/custom_app_bar.dart';
import 'components/custom_form_field.dart';
import 'constants/style_constants.dart';
import 'services/password_validation_service.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final _changePasswordFormKey = GlobalKey<FormState>();
  final bool _passwordVisible = false, _confirmPasswordVisible = false;

  TextEditingController newPasswordController = TextEditingController(text: ''),
      confirmNewPasswordController = TextEditingController(text: '');

  @override
  void dispose() {
    newPasswordController.dispose();
    confirmNewPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        elevation: 0,
        title: 'PAAQ',
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Center(
            child: Form(
                key: _changePasswordFormKey,
                child: Column(
                  children: [
                    CustomPasswordFormField(
                      hintText: 'New Password',
                      passwordVisible: _passwordVisible,
                      fieldValue: newPasswordController,
                    ),
                    CustomPasswordFormField(
                      hintText: 'Confirm New Password',
                      passwordVisible: _confirmPasswordVisible,
                      fieldValue: confirmNewPasswordController,
                      customValidator: validatePassword,
                    ),
                    Column(
                      children: passwordValidConditions(),
                    ),
                    _confirmButton(context)
                  ],
                )),
          ),
        ),
      )),
    );
  }

  String? validatePassword(value) {
    if (newPasswordController.text.trim() !=
        confirmNewPasswordController.text.trim()) {
      return "Passwords don't match";
    }

    if (!PasswordValidationService.conatainsDigit(newPasswordController.text)) {
      return "At least one digit required";
    }

    if (!PasswordValidationService.containsLowercase(
        newPasswordController.text)) {
      return "At least one lowercase character required";
    }

    if (!PasswordValidationService.containsUppercase(
        newPasswordController.text)) {
      return "At least one uppercase character required";
    }

    if (!PasswordValidationService.containsSpecialCharater(
        newPasswordController.text)) {
      return "At least one special character required";
    }

    if (!PasswordValidationService.containsMinimumEightCharacters(
        newPasswordController.text)) {
      return "A minimum length of 8 characters";
    }
  }

  Padding _confirmButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width / 2,
          child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      side: const BorderSide(color: Colors.black))),
              onPressed: () {
                if (_changePasswordFormKey.currentState!.validate()) {
                  _changePasswordFormKey.currentState!.save();

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ShoppingHomePage(),
                    ),
                  );
                }
              },
              child: const Text(
                'Confirm',
                style: TextStyle(color: Colors.white),
              ))),
    );
  }

  List<Widget> passwordValidConditions() {
    List<String> conditions = [
      'At least one digit 0-9', //?=.*[0-9]
      'At least one lowercase character', //(?=.*[a-z])
      'At least one uppercase character', // (?=.*[A-Z])
      'At least one special character', // (?=.*[!@#$%^&*()_+])
      'A minimum length of 8 characters' //(?=.{8})
    ];
    List<Widget> validConditions = [];

    for (String condition in conditions) {
      validConditions.add(Padding(
        padding: defaultPadding,
        child: Row(
          children: [
            const Icon(
              Icons.circle,
              color: Colors.green,
              size: 15,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(condition)
          ],
        ),
      ));
    }

    return validConditions;
  }
}
