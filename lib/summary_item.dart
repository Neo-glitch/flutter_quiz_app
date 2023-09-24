import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  // this widget takes a summaryItem also as an additional named arg
  const SummaryItem({super.key, required this.itemData});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData["user_answer"] == itemData["correct_answer"];

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment
            .start, // this ensures child widgets start at top left axis
        children: [
          QuestionIdentifier(
              questionIndex: itemData["question_index"] as int,
              isCorrectAnswer: isCorrectAnswer),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData["question"] as String,
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(
                  itemData["user_answer"] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 202, 171, 252),
                  ),
                ),
                Text(
                  itemData["correct_answer"] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 181, 254, 246),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
