import 'dart:io';

void main() {
  try {
    // Read content from a file
    String content = readFile("input.txt");
    print("Read content: $content");

    // Write content to a new file
    writeFile("output.txt", content);
    print("Wrote content to output.txt");
  } catch (e) {
    print("An error occurred: $e");
  }
}
//Reads the contents of a file and returns it as a string.
String readFile(String filePath) {
  return File(filePath).readAsStringSync();
}
// Writes content to a file.
void writeFile(String filePath, String content) {
  File file = File(filePath);
  file.writeAsStringSync(content);
}