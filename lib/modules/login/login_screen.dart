import 'package:courses/modules/forgetpassword/forget_password.dart';
import 'package:courses/modules/register/register_screen.dart';
import 'package:courses/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              logo(),
              defaultTextForm(
                controller: emailController,
                type: TextInputType.emailAddress,
                hint: 'enter email',
                title: 'Email',
              ),
              SizedBox(
                height: 20.0,
              ),
              defaultTextForm(
                controller: passwordController,
                type: TextInputType.visiblePassword,
                hint: 'enter password',
                title: 'Password',
              ),
              SizedBox(
                height: 40.0,
              ),
              defaultButton(
                function: ()
                {},
                text: 'login',
              ),
              SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: ()
                {
                  navigateTo(context, RegisterScreen());
                  print('don\'t have an account Sign Up!');
                },
                child: captionText('don\'t have an account sign up!'),
              ),
              SizedBox(
                height: 10.0,
              ),
              defaultButton(
                function: ()
                {
                  navigateTo(context, RegisterScreen());
                },
                text: 'Sign Up',
              ),
              SizedBox(
                height: 30.0,
              ),
              InkWell(
                onTap: ()
                {
                  navigateTo(context, ForgetPasswordScreen());

                },
                child: captionText('Forgot Password?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
