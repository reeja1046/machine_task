import 'package:flutter/material.dart';
import 'package:machine_task/constants/colors.dart';
import 'package:machine_task/constants/textfield.dart';
import 'package:machine_task/view/registernow.dart';
import 'package:machine_task/view/widgets/login_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/bg_image.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                height: 250,
              ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon1.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                height: 120,
                width: 120,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login or Register To Book \nYour Appointments',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const TextFieldForm(
                      title: 'Email', hintText: 'Enter your email'),
                  const SizedBox(height: 20),
                  const TextFieldForm(
                      title: 'Password', hintText: 'Enter password'),
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const RegisterNowScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.baseColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  bottomText(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
