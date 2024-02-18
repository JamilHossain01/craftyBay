import 'package:e_shop1/presentation/ui/screens/otp_screen.dart';
import 'package:e_shop1/presentation/ui/widgets/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VeriFyScreen extends StatefulWidget {
  const VeriFyScreen({super.key});

  @override
  State<VeriFyScreen> createState() => _VeriFyScreenState();
}

class _VeriFyScreenState extends State<VeriFyScreen> {
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Container(
            width: width,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 160,
                  ),
                  AppLogo(),
                  const Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 32,
                    ),
                  ),
                  const Text('Please Enter your email address'),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'Email'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: width,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(OtpScreen());
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          'Go to Next',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
