import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color bgColor = Color(0xff0E0E0E);
  final Color cardColor = Color(0xff28293D);
  bool isClicked = false;
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator ",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        color: bgColor,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        setState(() {
                          isClicked = true;
                        });
                      },
                      child: Card(
                        color: isClicked != true ? Colors.cyan : cardColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.male,
                                size: 40,
                                color: isClicked == false
                                    ? Colors.white
                                    : Colors.white),
                            Text(
                              "Male",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        setState(() {
                          isClicked = false;
                        });
                      },
                      child: Card(
                        color: isClicked != false ? Colors.cyan : cardColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.female,
                                size: 40,
                                color: isClicked == false
                                    ? Colors.white
                                    : Colors.white),
                            Text(
                              "Female",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ))
                  ],
                )),
            Expanded(
                flex: 3,
                child: Card(
                  color: cardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Height",
                          style: TextStyle(color: Colors.white, fontSize: 24)),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "${_value}",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "cm",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Slider(
                          min: 0,
                          max: 200,
                          thumbColor: Colors.cyan,
                          activeColor: Colors.pink,
                          inactiveColor: Colors.blueGrey,
                          value: _value.toDouble(),
                          onChanged: (double newValue) {
                            setState(() {
                              _value = newValue.toInt();
                            });
                          })
                    ],
                  ),
                )),
            Expanded(
                flex: 3,
                child: Container(
                  decoration: const BoxDecoration(color: Colors.pink),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  decoration: const BoxDecoration(color: Colors.blueGrey),
                ))
          ],
        ),
      ),
    );
  }
}
