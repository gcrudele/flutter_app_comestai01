


class Planet {

static List  planets = const ['Mercury', 'Venus', 'Earth', 'Mars'];
}



class MyData{
  static getCatList(){
    for(int i =0; i<100;i++){
      var k = Kitten(
          name: 'Micio' + i.toString(),
          description: 'The best cat',
          age: 11,
          imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg');
      kittens.add(k);
    }

  }
  static List<Kitten> kittens = new List<Kitten>();

}


class Kitten {
  Kitten({this.name, this.description, this.age, this.imageUrl});

  String name;
  String description;
  int age;
  String imageUrl;


  static List<Kitten> kittens = <Kitten>[
    Kitten(
        name: 'Micio14',
        description: 'The best cat',
        age: 11,
        imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
    Kitten(
        name: 'Micio2',
        description: 'The best cat of all',
        age: 10,
        imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
    Kitten(
        name: 'Micio3',
        description: 'The best cat of all time',
        age: 20,
        imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
    Kitten(
        name: 'Micio1',
        description: 'The best cat',
        age: 11,
        imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
    Kitten(
        name: 'Micio2',
        description: 'The best cat of all',
        age: 10,
        imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
    Kitten(
        name: 'Micio3',
        description: 'The best cat of all time',
        age: 20,
        imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
    Kitten(
        name: 'Micio1',
        description: 'The best cat',
        age: 11,
        imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
    Kitten(
        name: 'Micio2',
        description: 'The best cat of all',
        age: 10,
        imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
    Kitten(
        name: 'Micio3',
        description: 'The best cat of all time',
        age: 20,
        imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
    Kitten(
        name: 'Micio1',
        description: 'The best cat',
        age: 11,
        imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
    Kitten(
        name: 'Micio2',
        description: 'The best cat of all',
        age: 10,
        imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
    Kitten(
        name: 'Micio3',
        description: 'The best cat of all time',
        age: 20,
        imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),

  ];

}


