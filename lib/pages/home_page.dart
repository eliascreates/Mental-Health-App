import 'package:flutter/material.dart';

//Custom Widgets
import '../customWidgets/search_bar.dart';
import '../customWidgets/emoji_with_text_widget.dart';
import '../customWidgets/exercises_tile.dart';
import '../customWidgets/bottom_navbar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final Map<String, String> emotions = {
    'Badly': '😞',
    'Fine': '😊',
    'Well': '😁',
    'Excellent': '😃',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 12, 128, 185),
      bottomNavigationBar: const BottomNav(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
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
                              color: Colors.white,
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
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.more_horiz),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (var text in emotions.keys)
                        Emoji(
                          emoji: emotions[text] ?? '🟡',
                          emojiText: text,
                        ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 25, top: 25, right: 25),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                  color: Color.fromARGB(255, 240, 240, 240),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Exercises',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //List of Exercises
                    Expanded(
                      child: ListView(
                        children: const [
                          ExerciseTile(
                            exerciseName: 'Speaking Skills',
                            numExercises: 10,
                            iconFace: Icons.favorite,
                            iconBackColor: Colors.orange,
                          ),
                          ExerciseTile(
                            exerciseName: 'Reading Speed',
                            numExercises: 4,
                            iconFace: Icons.book,
                            iconBackColor: Colors.blue,
                          ),
                          ExerciseTile(
                            exerciseName: 'Memory Retention',
                            numExercises: 6,
                            iconFace: Icons.abc,
                            iconBackColor: Colors.green,
                          ),
                          ExerciseTile(
                            exerciseName: 'Restful Sleep',
                            numExercises: 2,
                            iconFace: Icons.access_alarm,
                            iconBackColor: Colors.blueGrey,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
