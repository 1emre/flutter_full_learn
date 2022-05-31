import 'package:flutter/material.dart';

class MyCollecionsDemos extends StatefulWidget {
  MyCollecionsDemos({Key? key}) : super(key: key);

  @override
  State<MyCollecionsDemos> createState() => _MyCollecionsDemosState();
}

class _MyCollecionsDemosState extends State<MyCollecionsDemos> {

  late final List<CollectionModel> _items;
  
  @override
  void initState() {
    _items = [CollectionModel(imagePath: 'assets/50-509242_apple-and-books-clipart-school-png-transparent-png.png', title: 'Abstracr Art', price: 10.0),
    CollectionModel(imagePath: 'assets/50-509242_apple-and-books-clipart-school-png-transparent-png.png', title: 'Abstracr Art', price: 20.0),
    CollectionModel(imagePath: 'assets/50-509242_apple-and-books-clipart-school-png-transparent-png.png', title: 'Abstracr Art', price: 30.0)];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal:  25),
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _CategoryCard(model: _items[index]);
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required CollectionModel model,
  }) : _model = model, super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image.asset(_model.imagePath),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(_model.title), Text('${_model.price} eth' )],
            )
          ],
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel({required this.imagePath, required this.title, required this.price});
}
