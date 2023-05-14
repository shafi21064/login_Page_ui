import 'package:flutter/material.dart';
import 'package:login_screen_hw/view/widgets/ele_button.dart';
import 'package:login_screen_hw/view/widgets/form_field.dart';
import 'package:login_screen_hw/view/widgets/text_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: const Image(
                image: AssetImage('assets/image/background.png'),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 50,
                left: 20,
                right: 20,
              ),
              child: Column(
                children: [
                  Center(
                    child: Column(
                      children: [
                        SizedBox(
                            height: 80,
                            width: 80,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: const Image(
                                  image: AssetImage('assets/image/logo.jpg'),
                                  fit: BoxFit.cover,
                                ))),
                        const Text(
                          'App',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Welcome!',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InputFormField(fieldLabelText: 'User Name'),
                  InputFormField(fieldLabelText: 'Password'),
                  const SizedBox(
                    height: 20,
                  ),
                  EleButton(
                    buttonName: 'Log In',
                    buttonWork: () {},
                    height: 50,
                    width: 350,
                  ),
                  TextButtonW(
                    buttonName: 'Forgot Password',
                    fontSize: 15,
                  ),
                  TextButtonW(
                    buttonName: 'Don\'t have any account? ',
                    fontSize: 18,
                  ),
                  EleButton(
                      buttonName: 'Create Now',
                      buttonWork: () {},
                      width: 150,
                      height: 50)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
