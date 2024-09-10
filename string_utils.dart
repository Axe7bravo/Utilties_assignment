void main() {
  String inputString = "Hello, World!";

  // Demonstrate each function
  print("Concatenated: ${concatenateStrings("Hello", "World")}");
  print("Interpolated: ${interpolateString("Alice", 30)}");
  print("Substring: ${extractSubstring(inputString, 7)}");
  print("Uppercase: ${convertToUpperCase(inputString)}");
  print("Lowercase: ${convertToLowerCase(inputString)}");
  print("Reversed: ${reverseString(inputString)}");
  print("Length: ${countStringLength(inputString)}");
}

// Functions for string manipulation
String concatenateStrings(String str1, String str2) => str1 +' '+ str2;

String interpolateString(String name, int age) => "My name is $name and I am $age years old.";

String extractSubstring(String str, int startIndex) => str.substring(startIndex);

String convertToUpperCase(String str) => str.toUpperCase();

String convertToLowerCase(String str) => str.toLowerCase();

String reverseString(String str) => str.split('').reversed.join('');

int countStringLength(String str) => str.length;