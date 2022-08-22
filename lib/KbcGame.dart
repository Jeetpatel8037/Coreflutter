import 'package:flutter/material.dart';

class KbcGame extends StatefulWidget {
  const KbcGame({Key? key}) : super(key: key);
  @override
  State<KbcGame> createState() => _KbcGameState();
}

List<Map> questions = [
  {
    'id': 1,
    'question': "1.What is the pH value of the human body?",
    'A': '9.2 to 9.8',
    'B': '7.0 to 7.8',
    'C': '6.1 to 6.3',
    'D': '5.4 to 5.6',
    'answer': 'B',
    'backgroundColor': Colors.purple,
  },
  {
    'id': 2,
    'question': "2.Which of the following are called Key Industrial animals?",
    'A': 'Producers',
    'B': 'Tertiary',
    'C': 'Primary',
    'D': 'None of these',
    'answer': 'C',
    'backgroundColor': Colors.purple,
  },
  {
    'id': 3,
    'question':
        "3. Which of the given amendments made it compulsory for the president to consent to the constitutional Amendment bills?",
    'A': '27th',
    'B': '29th',
    'C': '24th',
    'D': '22th',
    'answer': 'C',
    'backgroundColor': Colors.purple,
  },
  {
    'id': 4,
    'question':
        "4.Which of the following Himalayan regions is called Shivaliks?",
    'A': 'Upper Himalayas',
    'B': 'Lower Himalayas',
    'C': 'Outer Himalayas',
    'D': 'Inner Himalayas',
    'answer': 'C',
    'backgroundColor': Colors.purple,
  },
  {
    'id': 5,
    'question': "5.The Samkhya School of Philosophy was founded by?",
    'A': 'Gautam',
    'B': 'Mahipala',
    'C': 'Gopala',
    'D': 'Kapila',
    'answer': 'D',
    'backgroundColor': Colors.purple,
  },
  {
    'id': 6,
    'question': "6.Pustaz grasslands are situated at?",
    'A': 'South Africa',
    'B': 'China',
    'C': 'Hungary',
    'D': 'USA',
    'answer': 'C',
    'backgroundColor': Colors.purple,
  },
];

class _KbcGameState extends State<KbcGame> {
  int winigPrice = 10000;
  int Question = 0;
  int Wining = 0;
  int Loses = 0;
  int GameisOver = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: (Question < questions.length && Wining == 0 && Loses == 0)
            ? IndexedStack(
                index: Question,
                children: questions.map((Map e) {
                  return KbcGame(data: e);
                }).toList(),
              )
            : (Question < questions.length && Wining == 1)
                ? Container(
                    alignment: Alignment.center,
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Spacer(),
                        Container(
                          height: 150,
                          width: 150,
                          child: const Text("🥳"),
                        ),
                        const Text(
                          "Your Answer is Correct",
                          style: TextStyle(
                            color: Color(0xffc78640),
                            fontSize: 22,
                          ),
                        ),
                        const SizedBox(height: 25),
                        const Text(
                          ""
                          "You Won",
                          style: TextStyle(
                            fontSize: 22,
                            color: Color(0xffc78640),
                          ),
                        ),
                        Text(
                          "$winigPrice",
                          style: const TextStyle(
                            fontSize: 22,
                            color: Color(0xffc78640),
                          ),
                        ),
                        const SizedBox(height: 25),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              Question++;
                              Wining = 0;
                            });
                          },
                          child: const Text(
                            "Next",
                            style: TextStyle(fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xff1e1f23),
                              onPrimary: const Color(0xffd6d6d6),
                              padding: const EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 80,
                              )),
                        ),
                        const Spacer(),
                      ],
                    ),
                  )
                : (Question < questions.length && Loses == 1)
                    ? Container(
                        alignment: Alignment.center,
                        color: Colors.black,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Spacer(),
                            Container(
                              height: 150,
                              width: 150,
                              child: const Image(
                                image: AssetImage(
                                  'assets/images/loseer.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "oops!",
                              style: TextStyle(
                                color: Color(0xffd4d4ff),
                                fontSize: 22,
                              ),
                            ),
                            const SizedBox(height: 25),
                            const Text(
                              "Sorry You are",
                              style: TextStyle(
                                fontSize: 22,
                                color: Color(0xffd4d4ff),
                              ),
                            ),
                            const Text(
                              "the lose",
                              style: TextStyle(
                                fontSize: 22,
                                color: Color(0xffd4d4ff),
                              ),
                            ),
                            const SizedBox(height: 25),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Question = 0;
                                  Loses = 0;
                                  winigPrice = 20000;
                                });
                              },
                              child: const Text(
                                'Try Again',
                                style: TextStyle(fontSize: 20),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0xff1e1f23),
                                onPrimary: const Color(0xffd6d6d6),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 80,
                                  vertical: 16,
                                ),
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      )
                    : Container(
                        alignment: Alignment.center,
                        color: Colors.black,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Spacer(),
                              Container(
                                height: 150,
                                width: 150,
                                child: const Image(
                                  image: AssetImage(
                                      'assets/images/fire-cracker.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Text("Congratulations",
                                  style: TextStyle(
                                      color: Color(0xff5b5f62), fontSize: 22)),
                              const SizedBox(height: 25),
                              const Text(
                                "Game Over",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              const SizedBox(height: 25),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    Question = 0;
                                    winigPrice = 10000;
                                  });
                                },
                                child: const Text(
                                  'Restart',
                                  style: TextStyle(fontSize: 20),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: const Color(0xff1e1f23),
                                    onPrimary: const Color(0xffd6d6d6),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 78,
                                      vertical: 16,
                                    )),
                              ),
                              const Spacer(),
                            ]),
                      ),
      ),
    );
  }

  Widget KbcGame({required Map data}) {
    return Column(
      children: [
        Expanded(
            child: Container(
          alignment: Alignment.center,
          color: data['backgroundColor'],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                data['question'],
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
              )
            ],
          ),
        )),
        Expanded(
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                const Spacer(flex: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (Question < questions.length) {
                            if (data['answer'] == 'A') {
                              winigPrice = winigPrice * 2;
                              Wining = 1;
                            } else {
                              Loses = 1;
                            }
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xff1e1f23),
                          onPrimary: const Color(0xffa8a8a9),
                          alignment: Alignment.center,
                          minimumSize: const Size(180, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                      child: Text("A.${data['A']}"),
                    ),
                    const SizedBox(width: 25),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (Question < questions.length) {
                            if (data['answer'] == 'B') {
                              winigPrice = winigPrice * 2;
                              Wining = 1;
                            } else {
                              Loses = 1;
                            }
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xff1e1f23),
                          onPrimary: const Color(0xffa8a8a9),
                          alignment: Alignment.center,
                          minimumSize: const Size(180, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                      child: Text("B.${data['B']}"),
                    ),
                  ],
                ),
                const Spacer(flex: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (Question < questions.length) {
                            if (data['answer'] == 'C') {
                              winigPrice = winigPrice * 2;
                              Wining = 1;
                            } else {
                              Loses = 1;
                            }
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xff1e1f23),
                          onPrimary: const Color(0xffa8a8a9),
                          alignment: Alignment.center,
                          minimumSize: const Size(180, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                      child: Text("C.${data['C']}"),
                    ),
                    const SizedBox(width: 25),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (Question < questions.length) {
                            if (data['answer'] == 'D') {
                              winigPrice = winigPrice * 2;
                              Wining = 1;
                            } else {
                              Loses = 1;
                            }
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xff1e1f23),
                          onPrimary: const Color(0xffa8a8a9),
                          alignment: Alignment.center,
                          minimumSize: const Size(180, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                      child: Text("D.${data['D']}"),
                    ),
                  ],
                ),
                const Spacer(flex: 4),
              ],
            ),
          ),
        )
      ],
    );
  }
}
