
  import 'package:flutter/material.dart';
import 'package:machine_task/constants/colors.dart';

Widget buildSearchSection() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      height: 60.0,
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: double.infinity,
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  hintText: 'Search for treatments',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 1.0),
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          SizedBox(
            height: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.baseColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Search',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSortSection() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Sort by :',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: AppColor.baseColor),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Date',
                  style: TextStyle(color: AppColor.baseColor, fontSize: 15),
                ),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
        ],
      ),
    );
  }