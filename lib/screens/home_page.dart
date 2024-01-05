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
  int _wight = 30;
  int _age = 10;


  void calculateBMI(){
    double height =  _value/ 100;
    double weight = _wight.toDouble();
    // We dived height by 100 because we are taking the height in centimeter
    // and formula takes height in meter.

    double heightSquare = height * height;
    double result = weight / heightSquare;
    print("BMI: ${result}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator ",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
        color: bgColor,
        child: Column(
          children: [
            const SizedBox(
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
                            const Text(
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
                            const Text(
                              "Female",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ))
                  ],
                )),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                flex: 3,
                child: Card(
                  color: cardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Height",
                          style: TextStyle(color: Colors.white, fontSize: 24)),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "${_value}",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Text(
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
                          activeColor: Colors.white,
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
            const SizedBox(
              height: 10,
            ),
            Expanded(
                flex: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Card(
                        color: cardColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Weight",
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                             Text(
                              "${_wight}",
                              style: TextStyle(color: Colors.white, fontSize: 26),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      _wight++;
                                    });
                                  },
                                  mini: true,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                  backgroundColor: Colors.blueGrey,
                                  child: Icon(Icons.add, color: Colors.white),
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      _wight--;
                                    });
                                  },
                                  mini: true,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                  backgroundColor: Colors.blueGrey,
                                  child: Icon(Icons.remove, color: Colors.white),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        color: cardColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Age",
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            Text(
                              "${_age}",
                              style: TextStyle(color: Colors.white, fontSize: 26),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      _age++;
                                    });
                                  },
                                  mini: true,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                  backgroundColor: Colors.blueGrey,
                                  child: Icon(Icons.add, color: Colors.white),
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      _age--;
                                    });
                                  },
                                  mini: true,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                  backgroundColor: Colors.blueGrey,
                                  child: Icon(Icons.remove, color: Colors.white),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: 10,
            ),
             Expanded(
                flex: 1,
                child: InkWell(
                  onTap: (){
                    calculateBMI();
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.pink, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                    child: Center(
                      child: Text("Calculate", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
