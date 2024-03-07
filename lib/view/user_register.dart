import 'package:flutter/material.dart';
import 'package:machine_task/constants/amounttextfield.dart';
import 'package:machine_task/constants/colors.dart';
import 'package:machine_task/constants/textfield.dart';
import 'package:machine_task/constants/textsize.dart';
import 'package:machine_task/view/widgets/userregister_widget.dart';

class UserRegisterForm extends StatefulWidget {
  const UserRegisterForm({super.key});

  @override
  State<UserRegisterForm> createState() => _UserRegisterFormState();
}

class _UserRegisterFormState extends State<UserRegisterForm> {
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Register',
              style: TextStyle(fontSize: 25),
            ),
          ),
          const Divider(),
          Expanded(
            child: SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextFieldForm(
                        title: 'Name',
                        hintText: 'Enter your full name',
                      ),
                      const SizedBox(height: 20),
                      const TextFieldForm(
                        title: 'Whatsapp Number',
                        hintText: 'Enter your whatsapp number',
                      ),
                      const SizedBox(height: 20),
                      const TextFieldForm(
                        title: 'Address',
                        hintText: 'Enter your address',
                      ),
                      const SizedBox(height: 20),
                      const TextFieldFormWithArrow(
                        hintText: 'Choose your location',
                        title: 'Location',
                      ),
                      const SizedBox(height: 20),
                      const TextFieldFormWithArrow(
                        hintText: 'Select the branch',
                        title: 'Branch',
                      ),
                      const SizedBox(height: 20),
                      const Text('Treatments', style: TextSize.titletext),
                      treatmentCard(),
                      const SizedBox(height: 20),
                      addTreatmentButton(context),
                      const SizedBox(height: 20),
                      const PaymentTextField(title: 'Total Amount'),
                      const SizedBox(height: 20),
                      const PaymentTextField(title: 'Discount Amount'),
                      const SizedBox(height: 20),
                      const PaymentTextField(title: 'Advance Amount'),
                      const SizedBox(height: 20),
                      const PaymentTextField(title: 'Balance Amount'),
                      const SizedBox(height: 20),
                      treatmentTextField('Treatment Date'),
                      const SizedBox(height: 20),
                      treatmentTimeField('Treatment Time'),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.baseColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'Save',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
