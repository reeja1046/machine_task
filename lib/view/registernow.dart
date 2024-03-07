import 'package:flutter/material.dart';
import 'package:machine_task/constants/colors.dart';
import 'package:machine_task/constants/usercard.dart';
import 'package:machine_task/view/user_register.dart';

import 'widgets/registernow_widget.dart';

class RegisterNowScreen extends StatelessWidget {
  const RegisterNowScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          buildSearchSection(),
          buildSortSection(),
          const Divider(),
          const Expanded(
            child: SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      RecipeCard(),
                      RecipeCard(),
                      RecipeCard(),
                      RecipeCard(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const UserRegisterForm()));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.baseColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Text(
            'Register Now',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
