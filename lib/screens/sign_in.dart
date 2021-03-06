import 'package:auranails/utility/decoration_function.dart';
import 'package:auranails/utility/palette.dart';
import 'package:auranails/utility/sign_in_up_bar.dart';
import 'package:auranails/utility/title.dart';
import 'package:flutter/material.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

class SignIn extends StatelessWidget {
  const SignIn({
    Key key,
    @required this.onSignUpClicked,
  }) : super(key: key);

  final VoidCallback onSignUpClicked;

  @override
  Widget build(BuildContext context) {
    final isSubmitting = context.isSubmitting();

    return SignInForm(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.centerLeft,
                child: LoginTitle(title: 'Welcome\nBlack'),
              ),
            ),
            Expanded(
              flex: 3,
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: EmailTextFormField(
                      decoration: signInInputDecoraton(hintText: 'Email'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: PasswordTextFormField(
                      decoration: signInInputDecoraton(hintText: 'Password'),
                    ),
                  ),
                  SignInBar(
                    label: 'Sign In',
                    onPressed: () {
                      context.signInWithEmailAndPassword();
                    },
                    isLoading: isSubmitting,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      splashColor: Colors.white,
                      onTap: () {
                        onSignUpClicked?.call(); 
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          color: Palette.darkBlue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
