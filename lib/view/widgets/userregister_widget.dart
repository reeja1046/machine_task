import 'package:flutter/material.dart';
import 'package:machine_task/constants/colors.dart';
import 'package:machine_task/constants/textsize.dart';
import 'package:machine_task/widgets/numberincrementor.dart';

Widget addTreatmentButton(context) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () {
        _showAddTreatmentAlert(context);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 130, 200, 133),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: const Text(
        '+ Add Treatments',
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
    ),
  );
}

void _showAddTreatmentAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        insetPadding: const EdgeInsets.all(16),
        child: IntrinsicHeight(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.9,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Choose Treatments',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Choose preferred treatment',
                        hintStyle: TextStyle(fontSize: 16),
                        contentPadding: EdgeInsets.all(10),
                        suffixIcon: Icon(Icons.arrow_drop_down),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Add Patients',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const NumberIncrementer(labelText: 'Male'),
                  const SizedBox(height: 10),
                  const NumberIncrementer(labelText: 'Female'),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.baseColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Save',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}

Widget treatmentCard() {
  return SizedBox(
    height: 100,
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '1.',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Couple Combo package i..',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Icon(Icons.close)
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    const Text(
                      'Male',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child: const Center(child: Text('2')),
                    )
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Female',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child: const Center(child: Text('2')),
                    )
                  ],
                ),
                const Icon(Icons.edit),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget treatmentTextField(title) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextSize.titletext,
      ),
      const SizedBox(height: 5),
      const SizedBox(
        height: 43,
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            contentPadding: EdgeInsets.all(5),
            suffixIcon: Icon(
              Icons.calendar_month,
              color: AppColor.baseColor,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget treatmentTimeField(title) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextSize.titletext,
      ),
      const SizedBox(height: 5),
      Row(
        children: [
          Expanded(
            child: Container(
              height: 40,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const SizedBox(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.arrow_drop_down,
                        color: AppColor.baseColor,
                      ),
                      contentPadding: EdgeInsets.all(8),
                      border: InputBorder.none,
                      hintText: 'Hour',
                      hintStyle: TextSize.hinttext),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Container(
              height: 40,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.arrow_drop_down,
                      color: AppColor.baseColor,
                    ),
                    contentPadding: EdgeInsets.all(8),
                    border: InputBorder.none,
                    hintText: 'Minutes',
                    hintStyle: TextSize.hinttext),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
