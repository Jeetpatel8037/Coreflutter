import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("🛍️ List of Fruits"),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: const Center(
          child: Text.rich(
            TextSpan(
              text: "🍎 Apple\n\n",
              style: TextStyle(
                fontSize: 35,
                color: Colors.red,
              ),
              children: [
                TextSpan(
                  text: "🍇 Greps\n\n",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.deepPurpleAccent,
                  ),
                  children: [
                    TextSpan(
                      text: "🍒 Cherry\n\n",
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.purple,
                      ),
                      children: [
                        TextSpan(
                          text: "🍓 Strawberry\n\n",
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.pink,
                          ),
                          children: [
                            TextSpan(
                              text: "🥭 Mango\n\n",
                              style: TextStyle(
                                fontSize: 35,
                                color: Colors.amber,
                              ),
                              children: [
                                TextSpan(
                                  text: "🍍 Pineapple\n\n",
                                  style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.green,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "🍋 Lemon\n\n",
                                      style: TextStyle(
                                        fontSize: 35,
                                        color: Colors.green,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "🍉 Watermelon\n\n",
                                          style: TextStyle(
                                            fontSize: 35,
                                            color: Colors.lightGreenAccent,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: "🥥 Coconut\n\n",
                                              style: TextStyle(
                                                fontSize: 35,
                                                color: Colors.brown,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
