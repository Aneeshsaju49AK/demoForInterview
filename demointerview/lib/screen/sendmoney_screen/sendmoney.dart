import 'package:flutter/material.dart';

class Sendmoney extends StatelessWidget {
  const Sendmoney({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height / 7.2,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          "Send Money",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child:
              IconButton(onPressed: () {}, icon: const Icon(Icons.backspace)),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: width / 1.1,
                    height: height / 15,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(137, 204, 204, 204),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextFormField(
                      clipBehavior: Clip.antiAlias,
                      decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.search),
                          hintText: "Select Payee",
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: width / 1.2,
              height: height / 1.6,
              child: SizedBox(
                width: width / 1,
                height: height / 3.3,
                child: ListView.builder(
                  itemCount: 10,
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
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Icon(Icons.person),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
