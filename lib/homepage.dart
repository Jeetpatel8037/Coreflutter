import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Fruit Shop',
          style: TextStyle(
            color: Color(0xff0a6b5c),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: const Icon(
          Icons.menu,
          color: Color(0xff0a6b5c),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Column(children: [
              ElevatedButton(
                child: const Text("Go to Fruit Shop"),
                onPressed: () {
                  Navigator.of(context).pushNamed('FruitShop');
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Open Fruit Shop"),
                    backgroundColor: Colors.green,
                  ));
                },
              ),
            ]),
          ),
          const SizedBox(
            width: 10,
            height: 10,
          ),
        ],
      ),
    );
  }
}
