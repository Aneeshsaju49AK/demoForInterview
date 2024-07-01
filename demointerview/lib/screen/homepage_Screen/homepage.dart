import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> optionNames = [
    "Pay Bills",
    'Donate',
    'Receipts',
    'Offere',
  ];

  List<IconData> optionIcons = [
    Icons.payment,
    Icons.send,
    Icons.receipt,
    Icons.discount,
  ];
  int value = 1;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  width: width / 1,
                  height: height / 2.7,
                  color: const Color.fromARGB(255, 3, 123, 220),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: width / 1.6,
                            height: height / 13,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hey James,",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "what would you like to do today?",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const CircleAvatar(
                            radius: 25,
                            child: Icon(Icons.person),
                          ),
                          const SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                      SizedBox(
                        width: width / 1.2,
                        height: height / 14,
                        child: AnimatedToggleSwitch<int>.rolling(
                          current: value,
                          values: const [0, 1, 2],
                          onChanged: (values) => setState(() {
                            value = values;
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: width / 1,
                  height: height / 6.7,
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: SizedBox(
                                child: Column(
                                  children: [
                                    Container(
                                      width: width / 7,
                                      height: height / 14,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Icon(optionIcons[index]),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      optionNames[index],
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              width: width / 1,
              height: height / 2.9,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: SizedBox(
                      width: width / 1,
                      height: height / 25,
                      child: const Text("RECENT TRANSACTIONS"),
                    ),
                  ),
                  SizedBox(
                    width: width / 1,
                    height: height / 3.3,
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 12,
                            right: 12,
                            bottom: 5,
                            top: 8,
                          ),
                          child: Container(
                            height: height / 10,
                            decoration: BoxDecoration(
                              border: const Border(
                                  bottom: BorderSide(
                                color: Colors.black,
                                width: 2,
                              )),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Card(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Container(
                                      width: width / 7,
                                      height: height / 14,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Icon(optionIcons[index]),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Aneesh",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          " dkkk dkkdk dkk",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "50000",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        " done",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
