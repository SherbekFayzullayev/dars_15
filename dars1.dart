import 'dart:convert';

void main() {
  String a = """
  {
    "first": "Akmal",
    "last": "Rustamov",
    "age": 25
   

  }
""";
  Map<String, dynamic> b = jsonDecode(a);
  final d = Akmal.fromJson(b);
  print(d.first);
  print(d.last);
  print(d.age);
}

class Akmal {
  final String first;
  final String last;
  final int age;

  Akmal({
    required this.first,
    required this.last,
    required this.age,
  });
  factory Akmal.fromJson(Map<String, dynamic> json) {
    return Akmal(
      first: json['first'],
      last: json['last'],
      age: json['age'],
    );
  }
}
