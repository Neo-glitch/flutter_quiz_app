import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        // kinda like nested scroll view, allowing just one child
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Text(
                  "${(data["question_index"] as int) + 1}",
                ),
                Expanded(
                  // allows child to expand along the available space and not overflow
                  // allows it's child to be able to expand accross it's flex widget
                  // which is Row here
                  child: Column(
                    children: [
                      Text(data["question"] as String),
                      const SizedBox(height: 5),
                      Text(data["user_answer"] as String),
                      Text(data["correct_answer"] as String)
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
