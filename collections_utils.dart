/*void main() {
  // Lists
  List<int> numbers = createList([1, 2, 3, 4, 5]);
  addToList(numbers, 6);
  removeFromList(numbers, 3);

  print("List: $numbers");

  // Sets
  Set<String> fruits = createSet(["apple", "banana", "orange"]);
  addToSet(fruits, "grape");
  removeFromSet(fruits, "banana");

  print("Set: $fruits");

  // Maps
  Map<String, int> ages = createMap({"Alice": 30, "Bob": 25, "Charlie": 35});
  addToMap(ages, "David", 28);
  removeFromMap(ages, "Bob");

  print("Map: $ages");

  // Iterating over collections
  print("Iterating over list:");
  iterateList(numbers);

  print("Iterating over set:");
  iterateSet(fruits);

  print("Iterating over map:");
  iterateMap(ages);
}*/

// Functions for collections using <T> or <K, V> to make them more flexible and reusable with different data types.

List<T> createList<T>(List<T> elements) => elements;

void addToList<T>(List<T> list, T element) => list.add(element);

void removeFromList<T>(List<T> list, T element) => list.remove(element);

Set<T> createSet<T>(Iterable<T> elements) => elements.toSet();

void addToSet<T>(Set<T> set, T element) => set.add(element);

void removeFromSet<T>(Set<T> set, T element) => set.remove(element);

Map<K, V> createMap<K, V>(Map<K, V> elements) => elements;

void addToMap<K, V>(Map<K, V> map, K key, V value) => map[key] = value;

void removeFromMap<K, V>(Map<K, V> map, K key) => map.remove(key);

void iterateList<T>(List<T> list) {
  for (T element in list) {
    print(element);
  }
}

void iterateSet<T>(Set<T> set) {
  for (T element in set) {
    print(element);
  }
}

void iterateMap<K, V>(Map<K, V> map) {
  for (MapEntry<K, V> entry in map.entries) {
    print("${entry.key}: ${entry.value}");
  }
}