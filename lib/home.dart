import 'package:flutter/material.dart';
import 'dataBar.dart';
import 'listBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Listbar> data = datalist;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  Positioned(
                      child: Container(
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0x50000000),
                              offset: Offset.fromDirection(0, 0),
                              blurRadius: 2,
                              spreadRadius: 0),
                        ]),
                  )),
                  Positioned(
                    // o positioned vão ser posiciodo dentro desse container
                    left: 10,
                    bottom: 0,

                    child: Container(
                      padding: const EdgeInsets.all(5),
                      height: 200,
                      width: 420,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 360,
                                height: 180,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: data.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 3, left: 4, right: 9),
                                      child: SizedBox(
                                        height: 150,
                                        child: Column(
                                          children: [
                                            const Spacer(),
                                            Text(
                                                "${data[index].topBar}"), //numero sobre a barra
                                            Container(
                                              height: 100 /
                                                  100 *
                                                  (data[index].dataBar),
                                              width: 8,
                                              decoration: BoxDecoration(
                                                  color: data[index].barColor,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  2),
                                                          topLeft:
                                                              Radius.circular(
                                                                  2))),
                                            ),
                                            const SizedBox(height: 8),
                                            Text(
                                              "${data[index].dateTime.day}",
                                              style: const TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    //add linha horizontal
                    bottom: 24,
                    left: 10,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 2,
                                  width: 350,
                                  decoration:
                                      const BoxDecoration(color: Colors.blue),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    // add linha na vertical caso queiro, é só add uma cor para o container
                    top: 13,
                    left: 10,

                    child: Container(
                      padding: const EdgeInsets.all(5),
                      height: 180,
                      width: 2,
                      color: Colors.black,
                      //decoration: const BoxDecoration(color: Colors.red),
                    ),
                  ),
                ],
                clipBehavior: Clip.none,
              ),
            ),
          ],
        ),
      ), //stack
    );
  }
}
