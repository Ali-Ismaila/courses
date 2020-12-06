import 'package:courses/modules/register/register_screen.dart';
import 'package:courses/modules/welcome/welcome_screen.dart';
import 'package:courses/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ForgetPasswordScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forget Password',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              logo(),
              Text('enter you email or phone'),
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
                type: TextInputType.phone,
                hint: 'enter your phone',
                title: 'Phone',
              ),

              SizedBox(
                height: 10.0,
              ),
              defaultButton(
                function: ()
                {
                  navigateTo(context, WelcomeScreen());
                },
                text: 'Send code',
              ),

            ],
          ),
        ),
      ),
    );
  }
}
