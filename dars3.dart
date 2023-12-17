import 'dart:convert';

void main() {
  String a = """
  {
   "location":{
    "street":{
      "number":6431,
      "name":"Schutzenstrabe"
    },
    "city":"Bad Lobenstein",
    "state":"Bremen",
    "country":"Germany",
    "postcode":94478,
   }
  }
""";
  Map<String, dynamic> b = jsonDecode(a);
  final d = Phone.fromJson(b);
  print(d.name);
  print(d.color);
  print(d.brand);
  print(d.memory.large);
}

class Phone {
  final String name;
  final String brand;
  final String color;
  final Memory memory;

  Phone({
    required this.name,
    required this.color,
    required this.memory,
    required this.brand,
  });
  factory Phone.fromJson(Map<String, dynamic> json) {
    return Phone(
      name: json['name'],
      color: json['color'],
      brand: json['brand'],
      memory: Memory.fromJson(json['memory']),
    );
  }
}

class Memory {
  final int small;
  final int medium;
  final int large;
  final int extra;
  Memory({
    required this.large,
    required this.medium,
    required this.small,
    required this.extra,
  });
  factory Memory.fromJson(Map<String, dynamic> json) {
    return Memory(
        large: json['large'],
        medium: json['medium'],
        small: json['small'],
        extra: json['extra-large']);
  }
}
