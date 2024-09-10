import 'dart:io';
import 'string_utils.dart';
import 'collections_utils.dart';
import 'file_utils.dart';
import 'date_time_utils.dart';

void main() {
  Set<String> results = {};
  String logFilePath = "log.txt";

  while (true) {
    print("Enter a string (or 'quit' to exit):");
    String? input = stdin.readLineSync();

    if (input == null) {
      print("Invalid input.");
      continue;
    }

    if (input.toLowerCase() == "quit") {
      break;
    }

    // Perform string manipulations
    String reversed = reverseString(input);
    String uppercase = convertToUpperCase(input);
    String lowercase = convertToLowerCase(input);

    // Add results to the set
    addToSet(results, reversed);
    addToSet(results, uppercase);
    addToSet(results, lowercase);

    // Log the entry
    DateTime now = getCurrentDateTime();
    String formattedDate = formatDate(now);
    String logEntry = "Entry logged at: $formattedDate\n";
    appendToFile(logFilePath, logEntry);


    print("Entry logged at: $formattedDate");
  }

  // Print the results before saving
  print("Results:");
  for (String result in results) {
    print(result);
  }

  // Save results to a file
  writeFile("results.txt", results.join("\n"));

  print("Results saved to results.txt.");
}