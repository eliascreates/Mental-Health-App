import 'package:flutter/material.dart';
import '../customWidgets/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 12, 128, 185),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hi, Elias!',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '10 Feb, 2023',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 196, 196, 196),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 13, 146, 212),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: const Icon(
                      Icons.notifications,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              //Search Bar
              const SearchBar(),
            ],
          ),
        ),
      ),
    );
  }
}
