import 'package:app_example/services/user_service.dart';
import 'package:app_example/ui/screens/dashboard/dashboard.dart';
import 'package:app_example/ui/widgets/form_fields/email_field.dart';
import 'package:app_example/ui/widgets/form_fields/password_field.dart';
import 'package:flutter/material.dart';

import 'package:app_example/constants.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  bool _isPasswordValid = false; //Tracks validation status
  bool _isEmailVaild = false;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handlePasswordValidationChanged(bool isValid) {
    setState(() {
      _isPasswordValid = isValid;
    });
  }

  void _handleEmailValidationChanged(bool isVaild) {
    setState(() {
      _isEmailVaild = isVaild;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          EmailField(
            controller: _emailController,
            onValidationChanged: _handleEmailValidationChanged,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: defaultPadding),
            child: PasswordField(
              controller: _passwordController,
              onValidationChanged: _handlePasswordValidationChanged,
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Hero(
              tag: "login_btn",
              child: ElevatedButton(
                onPressed: _isPasswordValid && _isEmailVaild
                    ? () => _handleLogin(context)
                    : null,
                style: ElevatedButton.styleFrom(
                    disabledBackgroundColor:
                        Theme.of(context).primaryColor.withOpacity(.8),
                    disabledForegroundColor: Colors.white70),
                child: Text("Login".toUpperCase()),
              )),
          SizedBox(
            height: defaultPadding,
          )
        ],
      ),
    );
  }

  Future<void> _handleLogin(BuildContext context) async {
    final email = _emailController.text;
    final password = _passwordController.text;

    try {
      final response = await UserService.login(email, password);
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Login success')));
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return Dashboard();
          },
        ),
      );
    } catch (e) {
      print(e);
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Login error')));
    }
  }
}
