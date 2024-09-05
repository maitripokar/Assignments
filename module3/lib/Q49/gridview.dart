import 'package:flutter/material.dart';

class gridview extends StatefulWidget {
  const gridview({super.key});

  @override
  State<gridview> createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          flex: 2,
          child: Container(
            margin: EdgeInsets.all(3),
            color: Colors.redAccent,
            alignment: Alignment.center,
          ),
        ),

        //row 2
        Expanded(
            flex: 5,
            child: Row(
              children: [
                // middel row 1
                Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Container(
                            margin: EdgeInsets.all(3),
                            color: Colors.blueAccent,
                            alignment: Alignment.center,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            margin: EdgeInsets.all(3),
                            color: Colors.blueAccent,
                            alignment: Alignment.center,
                          ),
                        ),
                      ],
                    )),
                // middel row 1
                Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Container(
                            margin: EdgeInsets.all(3),
                            color: Colors.blueAccent,
                            alignment: Alignment.center,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            margin: EdgeInsets.all(3),
                            color: Colors.blueAccent,
                            alignment: Alignment.center,
                          ),
                        )
                      ],
                    )),
              ],
            )),
        //row 3
        Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          margin: EdgeInsets.all(3),
                          color: Colors.amber,
                          alignment: Alignment.center,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          margin: EdgeInsets.all(3),
                          color: Colors.amber,
                          alignment: Alignment.center,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          margin: EdgeInsets.all(3),
                          color: Colors.amber,
                          alignment: Alignment.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          margin: EdgeInsets.all(3),
                          color: Colors.amber,
                          alignment: Alignment.center,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          margin: EdgeInsets.all(3),
                          color: Colors.amber,
                          alignment: Alignment.center,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          margin: EdgeInsets.all(3),
                          color: Colors.amber,
                          alignment: Alignment.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ]),
    );
  }
}
