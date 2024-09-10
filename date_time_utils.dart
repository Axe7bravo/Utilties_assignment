
void main() {
  // Create a DateTime object
  DateTime now = getCurrentDateTime();
  print("Current date and time: $now");

  // Format a date
  String formattedDate = formatDate(now);
  print("Formatted date: $formattedDate");

  // Parse a date string
  DateTime parsedDate = parseDate("2024-09-10 20:27:16");
  print("Parsed date: $parsedDate");

  // Add days to a date
  DateTime futureDate = addDays(now, 5);
  print("Future date: $futureDate");

  // Subtract days from a date
  DateTime pastDate = subtractDays(now, 3);
  print("Past date: $pastDate");

  // Calculate the difference between two dates
  Duration difference = calculateDifference(futureDate, pastDate);
  print("Difference: ${difference.inDays} days");
}

// Functions for date and time operations
DateTime getCurrentDateTime() => DateTime.now();

String formatDate(DateTime date) => date.toString();

DateTime parseDate(String dateString) => DateTime.parse(dateString);

DateTime addDays(DateTime date, int days) => date.add(Duration(days: days));

DateTime subtractDays(DateTime date, int days) => date.subtract(Duration(days: days));

Duration calculateDifference(DateTime date1, DateTime date2) => date1.difference(date2);