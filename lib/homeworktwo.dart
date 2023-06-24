import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HwTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var backdropColor = Color.fromARGB(213, 237, 236, 236);
    return Scaffold(
      // appBar: AppBar(title: Text('something')),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 50),
        decoration: BoxDecoration(
          color: backdropColor,
        ),
        child: Column(children: [
          //first section
          Column(
            children: [
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(bottom: 20),
                // padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Color(0xFFfafaf9),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset('assets/images/icons/medicine.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: const Text(
                  "Antiharousmatorus",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                "Take one and move away your illness",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w200,
                    color: Color(0xFFacacb0)),
              ),
            ],
          ),
          //second section
          Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(left: 35),
              child: Row(
                children: [
                  Container(
                    width: 170,
                    height: 80,
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsets.only(top: 14, left: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Color(0xFFf6f9f8),
                    ),
                    child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              "Durasi",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w200,
                                  color: Color(0xFFacacb0)),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_month,
                                color: Color(0xFFefbf7e),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Durasi",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )
                        ]),
                  ),

                  Container(
                    width: 170,
                    height: 80,
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsets.only(top: 14, left: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Color(0xFFf6f9f8),
                    ),
                    child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              "Durasi",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w200,
                                  color: Color(0xFFacacb0)),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.punch_clock,
                                color: Color(0xFFefbf7e),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "2x Sehari",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )
                        ]),
                  ),

                  // Text('hi'),
                ],
              )),

          //third section

          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 32, right: 36),
            margin: EdgeInsets.only(top: 30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                margin: EdgeInsets.only(bottom: 25),
                child: const Text(
                  "Cekils Selanjutsuno",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 160,
                margin: EdgeInsets.only(bottom: 25),
                padding: EdgeInsets.only(left: 25, top: 20),
                decoration: BoxDecoration(
                    color: Color(0xFFfafaf9),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //first child
                      Container(
                        padding: EdgeInsets.only(left: 15, top: 5, bottom: 5),
                        margin: EdgeInsets.only(bottom: 25),
                        decoration: const BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                    color: Color.fromARGB(255, 241, 195, 129),
                                    width: 4))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: const Text(
                                "Hari Inin Pulka 10:10",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w700),
                              ),
                            ),
                            const Text(
                              "1 kl Pukanio Anthismars",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xFFacacb0)),
                            )
                          ],
                        ),
                      ),

                      //second child

                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 30),
                              child: const ElevatedButton(
                                  style: ButtonStyle(
                                      padding: MaterialStatePropertyAll(
                                          EdgeInsets.all(20)),
                                      backgroundColor: MaterialStatePropertyAll(
                                          Color(0xFFe7eae9)),
                                      fixedSize: MaterialStatePropertyAll(
                                          Size(140, 45))),
                                  onPressed: null,
                                  child: Text(
                                    "Ingariki Nano",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        color: Colors.black),
                                  )),
                            ),
                            const ElevatedButton(
                                style: ButtonStyle(
                                    padding: MaterialStatePropertyAll(
                                        EdgeInsets.all(20)),
                                    backgroundColor: MaterialStatePropertyAll(
                                        Color(0xFF20304f)),
                                    fixedSize: MaterialStatePropertyAll(
                                        Size(140, 45))),
                                onPressed: null,
                                child: Text(
                                  "Selasini",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Colors.white),
                                ))
                          ],
                        ),
                      )
                    ]),
              ),
              //last section
              Container(
                width: MediaQuery.of(context).size.width,
                height: 95,
                padding: EdgeInsets.only(left: 25, top: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15, top: 5, bottom: 5),
                        margin: EdgeInsets.only(bottom: 25),
                        decoration: const BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                    color: Color.fromARGB(255, 241, 195, 129),
                                    width: 4))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: const Text(
                                "Hari Inin Pulka 10:10",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w700),
                              ),
                            ),
                            const Text(
                              "1 kl Pukanio Anthismars",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xFFacacb0)),
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
            ]),
          )
        ]),
      ),
    );
  }
}
