import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ss2025/colors.dart';
import 'package:ss2025/widgets/custom_login_form.dart';

class ForgotPasswordpage extends StatefulWidget {
  const ForgotPasswordpage({super.key});

  @override
  State<ForgotPasswordpage> createState() => _ForgotPasswordpageState();
}

class _ForgotPasswordpageState extends State<ForgotPasswordpage> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      String email = _emailController.text.trim();
      if (email.isEmpty || !email.contains('@')) {
        showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              content: Text(
                'Por favor ingresa un correo electronico valido.',
                textAlign: TextAlign.center,
              ),
            );
          },
        );
        return;
      }

      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            content: Text(
                'Recibirás las intrucciones para restablecer tu contraseña en el siguiente correo',
                textAlign: TextAlign.center),
          );
        },
      );
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(e.message.toString()),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: const Text(
                'Restablece \n tu contraseña',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: CustomLoginForm(
                    text: 'Correo electronico*', controller: _emailController)),
            const SizedBox(height: 100),

            //reset-password button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: MaterialButton(
                  onPressed: passwordReset,
                  color: AppColors.primary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      'Cambiar Contraseña',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
