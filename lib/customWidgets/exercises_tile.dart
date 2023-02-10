import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final String exerciseName;
  final int numExercises;
  final Color iconBackColor;
  final IconData iconFace;
  const ExerciseTile(
      {super.key,
      required this.exerciseName,
      required this.numExercises,
      required this.iconBackColor,
      required this.iconFace});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: ListTile(
          title: Text(
            exerciseName,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: iconBackColor,
                    borderRadius: BorderRadius.circular(12)),
                child: Icon(
                  iconFace,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$numExercises exercises',
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
          trailing: const SizedBox(
              height: double.infinity, child: Icon(Icons.more_horiz)),
        ),
      ),
    );
  }
}
