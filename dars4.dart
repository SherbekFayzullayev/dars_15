void main() {
  Map<String, dynamic> date = {
    "fruits": [
      {
        "name": "Apple",
        "color": "Green",
        "price": 10000,
        "count": [
          1,
          2,
        ],
      },
      {
        "name": "Banana",
        "color": "Yellow",
        "price": 15000,
        "count": [
          1,
          2,
        ],
      },
      {
        "name": "Cherry",
        "color": "Red",
        "price": 5000,
        "count": [
          1,
          2,
        ],
      },
    ]
  };
  Model f = Model.fromJson(date);
  print(f.fruits[1].name);
}

class Model {
  final List<Fruits> fruits;
  Model({
    required this.fruits,
  });
  factory Model.fromJson(Map<String, dynamic> json) {
    List<Fruits> fruits = [];

    json['fruits'].forEach((value) {
      fruits.add(Fruits.fromJson(value));
    });

    return Model(fruits: List.from(fruits));
  }
}

class Fruits {
  final String name;
  final String color;
  final int price;
  Fruits({required this.name, required this.color, required this.price});
  factory Fruits.fromJson(Map<String, dynamic> json) {
    return Fruits(
      name: json['name'],
      color: json['color'],
      price: json['price'],
    );
  }
}
