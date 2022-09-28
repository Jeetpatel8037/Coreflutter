import 'package:contact_diary_app/gloabal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class product extends StatefulWidget {
  product({Key? key}) : super(key: key);

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: CupertinoColors.white,
          width: double.infinity,
          padding: const EdgeInsets.only(top: 70, left: 11, bottom: 10),
          child: const Text(
            "Cupertino Store",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: CupertinoColors.black),
          ),
        ),
        Container(
          height: 650,
          width: double.infinity,
          color: CupertinoColors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...Global.allproduct
                    .map(
                      (e) => Container(
                        margin: const EdgeInsets.only(
                            left: 10, right: 5, bottom: 2.5, top: 2.5),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: Image.asset(
                                    e['image'],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      e['name'],
                                      style: const TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      "₹ ${e['Price']}",
                                      style: const TextStyle(
                                          fontSize: 12,
                                          color: CupertinoColors.systemGrey2),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                const SizedBox(
                                  width: 10,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      Global.allCarts.add(e);
                                      Global.value.add(e['price']);
                                      for (int i = 0;
                                          i < Global.value.length;
                                          i++) {
                                        Global.subtotal += Global.value[i];
                                      }
                                      Global.gst = Global.subtotal * 18 / 100;
                                      Global.total =
                                          Global.subtotal + Global.gst + 95;
                                    });
                                  },
                                  child: const Icon(CupertinoIcons.add_circled),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                            const Divider(
                              color: CupertinoColors.systemGrey,
                              thickness: 0.5,
                              indent: 59,
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
