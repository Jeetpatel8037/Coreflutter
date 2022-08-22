import 'package:flutter/material.dart';
import 'package:rivison/page3.dart';
import 'package:rivison/product.dart';

class FruitShop extends StatefulWidget {
  const FruitShop({Key? key}) : super(key: key);

  @override
  State<FruitShop> createState() => _FruitShopState();
}

class _FruitShopState extends State<FruitShop> {
  final GetInvoice getInvoice = GetInvoice();
  TextStyle MyStyle = const TextStyle(
      fontSize: 22, fontWeight: FontWeight.w500, color: Colors.green);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Fruit Shop"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Image", style: MyStyle),
                  const Spacer(),
                  Text("Name", style: MyStyle),
                  const Spacer(),
                  Text("Price", style: MyStyle),
                  const Spacer(),
                  Text("Quantity", style: MyStyle),
                ],
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: allProducts.length,
                    itemBuilder: (context, i) {
                      final currentProduct = allProducts[i];
                      return Row(
                        children: [
                          const SizedBox(width: 4),
                          Column(
                            children: [
                              Image.network(
                                currentProduct.MyImage,
                                height: 50,
                                width: 50,
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            currentProduct.productName,
                            style: const TextStyle(fontSize: 16),
                          ),
                          const Spacer(),
                          Text(
                            'Rs.${currentProduct.productPrice}',
                            style: const TextStyle(fontSize: 16),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  if (currentProduct.productQuantity > 0) {
                                    currentProduct.productQuantity--;
                                  }
                                });
                              },
                              icon: const Icon(Icons.remove)),
                          Text(
                            '${currentProduct.productQuantity}',
                            style: const TextStyle(fontSize: 16),
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  currentProduct.productQuantity++;
                                });
                              },
                              icon: const Icon(Icons.add)),
                        ],
                      );
                    }),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total:-', style: MyStyle),
                      Text('Rs.${getTotal()}', style: MyStyle),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  getTotal() => allProducts
      .fold(
          0,
          (int prev, element) =>
              prev + (element.productPrice * element.productQuantity))
      .toStringAsFixed(0);
}
