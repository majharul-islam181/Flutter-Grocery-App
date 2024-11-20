import 'package:flutter/material.dart';
import 'package:flutter_grocery_app/utils/colors.dart';

class GroceryHomeScreen extends StatelessWidget {
  const GroceryHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
          child: Column(
        children: [
          headerParts(),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 65,
                    padding: const EdgeInsets.symmetric(),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Center(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintText: 'Search Grocery',
                          hintStyle:
                              TextStyle(fontSize: 18, color: Colors.grey),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green[50],
                  ),
                  child: const Icon(
                    Icons.tune_outlined,
                    color: Colors.green,
                    size: 30,
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }

  Padding headerParts() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          RichText(
            text: const TextSpan(children: [
              TextSpan(
                text: 'Welcome\n',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              TextSpan(
                text: 'Majharul Islam',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    letterSpacing: 1.2,
                    height: 1.5,
                    fontWeight: FontWeight.bold),
              ),
            ]),
          ),
          const Spacer(),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amber,
                image: const DecorationImage(image: NetworkImage(''))),
          )
        ],
      ),
    );
  }
}
