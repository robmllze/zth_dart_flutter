// 14

void main() {
  print('Hello world!');
  dynamic idk = 5.5;
  idk = [1, 2, 3];
  idk = "Aun no se";
  (idk as String).isEmpty;
  String hello = idk; // References are the same
  hello = "I don't know"; // Reference changed. Unique to string and numbers
  print(hello);
  print(idk);
  idk = [3, 2, 1];
  List lista = idk as List;
  int theIndexOfTheBigCrazyListIs = 1;
  int i = theIndexOfTheBigCrazyListIs;
  i;
  lista = [7];
  lista.add(0);
  print(idk);
  print(lista);

  Map<String, dynamic> data = {
    "animal": "horse",
    "weight_kg": 5,
    "size": 1,
    "favorite_toys": [
      "bear",
      "ball",
      "bone",
    ],
  };

  data.update("animal", (dynamic animal) {
    if (animal == "dog") return "cat";
    return animal;
  }, ifAbsent: () => "unknown");

  dynamic favoriteToys = data["favorite_toys"];
  List favoriteToysAsList = favoriteToys as List;
  favoriteToysAsList.add("chicken");
  print(data);
  print(favoriteToys);
  print(favoriteToysAsList);
}
